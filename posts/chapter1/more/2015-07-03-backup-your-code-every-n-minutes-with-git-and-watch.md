---
coverPainting: The Dog, 1819~1823, Francisco Goya
layout: post
title: "Making backup for each line of code in your project every n minutes in case your code editor decides to revert some file back to its state x hours ago"
extract: |
    ... and this looked like a great environment to code in (I enabled [vintage mode](http://www.sublimetext.com/docs/2/vintage.html) too so there are vim magic in it ;3 ) until I learnt that sometimes the text editor would revert some file back to its state x hours ago with no reason at all.

    It is a nightmare. (Imagine happily committing your code only to learn all that you've written & tested no longer exist in the current dimensions in space-time.)

    I still don't have a clue what is the cause. (I only have a few plug-ins installed. I don't think the plug-ins have to do with it.) But it has happened quite a few times and I have had my losses. Until I figure out what's causing the strange phenomenon and get it fixed, I need to start taking precaution.

    Here is a simple system that uses [`watch`](http://linux.die.net/man/1/watch) with the help of `git` to make backup of every single file in a directory every 90 seconds:

---

I just reinstalled my OS X recently, which not only enabled me to re-experience the joy of owning a new Mac, but also fixed problems like waking up into a partially slumber stage with a black screen and a movable cursor that is practically useless. Since I was going to [`brew cask install`](http://stackoverflow.com/questions/27381531/how-to-install-sublime-text-3-using-homebrew) a brand new [Sublime Text Editor](http://www.sublimetext.com/), I decided to spend a bit more effort customizing it. After some googling and experimentation, these are my settings:

{% highlight JSON %}

{
    "bold_folder_labels": true,
    "caret_style": "phase",
    "color_scheme": "Packages/Color Scheme - Default/Blackboard.tmTheme",
    "draw_minimap_border": true,
    "draw_white_space": "all",
    "ensure_newline_at_eof_on_save": true,
    "fade_fold_buttons": false,
    "find_selected_text": true,
    "font_face": "Source Code Pro Light",
    "font_size": 14.0,
    "highlight_line": true,
    "ignored_packages":
    [
    ],
    "letter-spacing-length": 20,
    "line_padding_bottom": 1,
    "line_padding_top": 1,
    "rulers":
    [
        120
    ],
    "shift_tab_unindent": true,
    "spacegray_sidebar_font_normal": true,
    "spacegray_sidebar_tree_xlarge": true,
    "spacegray_tabs_auto_width": true,
    "spacegray_tabs_font_normal": true,
    "spacegray_tabs_large": true,
    "tab_size": 4,
    "theme": "Spacegray.sublime-theme",
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true,
    "vintage_start_in_command_mode": true,
    "word_separators": "./\\()\"'-:,.;<>~!@#$%^&*|+=[]{}`~?_",
    "word_wrap": true
}
{% endhighlight %}

(For the record Source Code Pro can be grabbed [here](https://github.com/adobe-fonts/source-code-pro); Spacegray [here](https://github.com/kkga/spacegray); and Blackboard [here](https://github.com/cfletcher1856/Theme-Blackboard))

<p class="text-center"><img src="/assets/img/sublime.png" alt="oh"></p>

This looked like a great environment to code in (I enabled [vintage mode](http://www.sublimetext.com/docs/2/vintage.html) too so there are vim magic in it ;3 ) until I learnt that sometimes the text editor would revert some file back to its state x hours ago with no reason at all.

It is a nightmare. (Imagine happily committing your code only to learn all that you've written & tested no longer exist in the current dimensions in space-time.)

I still don't have a clue what is the cause. (I only have a few plug-ins installed. I don't think the plug-ins have to do with it.) But it has happened quite a few times and I have had my losses. Until I figure out what's causing the strange phenomenon and get it fixed, I need to start taking precaution.

Here is a simple system that uses [`watch`](http://linux.die.net/man/1/watch) with the help of `git` to make backup of every single file in a directory every 90 seconds:

> `watch` can execute a line of code periodically in the terminal. The nice thing is that you can watch the outputs as it does.

Let's say this is the directory containing projects you want to back up
{% highlight bash %}
/Users/a/_/_
{% endhighlight %}
1) Make a directory to keep the back up files
{% highlight bash %}
mkdir /Users/a/_/timeMachine    #or any directory of your choice
{% endhighlight %}
2) Make it into a git repo.
{% highlight bash %}
cd /Users/a/_/timeMachine
git init    #this would create a .git folder in /Users/a/_/timeMachine
            #now /Users/a/_/timeMachine is a git repo
{% endhighlight %}
3) Write a bash script that

1. Copy everything in the directory to the backup directory
2. Remove all the `.git` folders from each project in the backup directory (The `.git` folder is what that determines a directory to be a git repo: removing it would turn git repo back to a normal directory. In order for `commit` to work, it is necessary to have every subdirectory as a non git repo. If not, the subdirectories containing `.git` will be treated as [git submodules](http://git-scm.com/docs/git-submodule).) <br> [Changes made in a git submodule can't be committed as changes of the main git repo.]
3. Git add & commit everything in the backup directory

and save it as `script.sh`.(You can save it at anywhere you want)

Here is my `script.sh`.

{% highlight bash %}
cd /Users/a/_                       #replace this with the directory you want to back up
cp -rf _/* timeMachine              #replace this with the directory to back up to
rm -rf timeMachine/*/.git           #remove all .git folders in each project
cd timeMachine
git add .                           #add any changes
git commit -am "`date +%F-%T`"      #commit to store the changes
{% endhighlight %}

4) Simply run this script periodically using `watch` (You can install it with [brew](http://brew.sh/) if you don't have it).

{% highlight bash %}
brew install watch          #brew is a package manager for OSX. http://brew.sh/
watch -n 90 'bash script.sh'
{% endhighlight %}

That's it. Now every 90 seconds, the changes you made in your project (e.g. `/Users/a/_/0a-.github.com`) would be recorded in the backup directory. You can view changes of the file using [`git log`](http://git-scm.com/docs/git-log):

{% highlight bash %}
cd /Users/a/_/timeMachine/0a-.github.com
git log -p myFile.js
{% endhighlight %}

or do it in [a GUI Client](https://mac.github.com/). (They would show up in the Unsynced tab because all we are doing is just [committing](http://git-scm.com/docs/git-commit) and there is no [pushing](http://git-scm.com/docs/git-push) involved.)

<p class="text-center"><img src="/assets/img/timeMachine.jpg" alt="such time much machine"></p>

The backup directory is going to take more and more disk space as time passes (as long as you remember to `watch -n 90 'bash script.sh'` before you start to code each time). When you want to clean everything up, simply remove everything (including the `.git` folder) and do a `git init` again.

{% highlight bash %}
cd /Users/a/_/timeMachine   #replace it with your backup repo
rm -rf *        #this can be deadly if used unwisely
git init
{% endhighlight %}

The great thing about using git is that only the changes of the files would be saved. So rather than having 10 backup copies of a project that are slightly different from one another, you'd only have one copy of it, and 9 indications of the different changes you made at different times.
