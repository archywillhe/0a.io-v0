---
layout: post
title: "Jekyll 2 in 3 minutes - a quick tour for those who plan to make a customized Github Page"
metaDescription: |
    This post aims to provide a quick sum-up for anyone who is unfamiliar with Jekyll.
coverPainting: "Capri Battery, 1985, Joseph Beuys"
reddit: https://www.reddit.com/r/Jekyll/comments/394u0r/jekyll_in_3_minutes_a_quick_tour_for_those_who/

    Artwork is <a href="http://www.wikiart.org/en/joseph-beuys/capri-battery-1985-1">Capri Battery</a> by <a href="https://en.wikipedia.org/wiki/Joseph_Beuys">Joseph Beuys</a>, 1985.
---

<div class="row d_shortcuts">This post aims to provide a quick sum-up for anyone who is unfamiliar with Jekyll. To learn more about Jekyll, check the <a href="http://jekyllrb.com/docs/home/">doc</a> & <a href="https://github.com/jekyll/jekyll">source</a> out.</div>


###1st minute: General Overview <small class="wordCount">267&nbsp;words</small>

[Jekyll](https://github.com/Jekyll/Jekyll) is a tool to build static website that exists as merely a directory of files. That said, you can only use it to create websites that don’t have run-time logic in the backend. (such as [a simple content-based website or a blog](http://0a.io/)) In other words, it is a web-pages generator.

With a Github acc, anyone can [set up his or her Github Page for free with ease](https://pages.github.com). A Github Page is a static website hosted by Github. GitHub Pages&trade; has built-in support of Jekyll (So just push the code and you’ll have a website).

>That doesn’t mean you have to use Jekyll for a Github Page. You can always use some other static site generator to generate the site (e.g. [Hakyll](http://jaspervdj.be/hakyll/)) before pushing the repo of generated files (aka static files ready for access).

Keep in mind GitHub Pages&trade; supports only Jekyll 2.4.0 as of June 2015. To have a local environment for making GitHub Pages&trade; supporting Jekyll website, you are advised to [install Jekyll via The GitHub Pages&trade; Gem](https://github.com/github/pages-gem) (instead of installing Jekyll separately by yourself). [The GitHub Pages&trade; Gem also includes Jekyll-coffeescript, Jekyll-sass-converter, Liquid, etc](https://pages.github.com/versions.json). That is to say, GitHub Pages&trade; will generate a site for you with these components.

To sum up, GitHub Pages&trade; does not execute server-side code. It helps you generate static website (using Jekyll) if you give it the source code. That is as much as it does, aside from also hosting the static website for you and giving you a super cool github.io subdomain. <a href="https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/">(You can still use your own domain if you want.)</a>

<p class="text-center"> ● ● ● </p>

###2nd minute: What you need to know when working with Jekyll <small class="wordCount">314&nbsp;words</small>

Jekyll is made in [Ruby](https://www.ruby-lang.org/en/) (with [Cucumber](https://cucumber.io)). Since all it does is generate static website, there is no [Rails](http://rubyonrails.org) in it.Jekyll puts all the pieces (of html, [md](http://daringfireball.net/projects/markdown/), [textile](http://en.wikipedia.org/wiki/Textile_(markup_language))) you give it together, and that's all. The way Jekyll works relies mainly on [Liquid (a templating language)](http://Liquidmarkup.org) and [YAML Front Matter Block, or <i>Front Matter</i>](http://Jekyllrb.com/docs/frontmatter/) for short.

<i>Front Matter</i> is the starting session of each file where you put down meta-information in [YAML format](http://yaml.org).  

{% highlight html %}
{% raw %}
---
layout: post
title: "0a: About "
permalink: /about/
extraClasses: ['aboutPage']
---
<!-- The session on top is Front Matter -->
<div class="archywrap">
<h2> {{site.data.author.bioTitle}}</h2>
{{site.data.author.bio}}
</div>
{% endraw %}
{% endhighlight %}

YAML is like a sister of [JSON](http://json.org). YAML to JSON is, syntax-wise, like what [Less](http://en.wikipedia.org/wiki/Less_(stylesheet_language)) is to [Sass](http://en.wikipedia.org/wiki/Sass_(stylesheet_language)).

For every HTML file you'd be dealing with in Jekyll, it'd either be

1. an [*Include* File](http://jekyllrb.com/docs/templates/#includes),

2. a [*Layout* File](http://jekyllrb.com/docs/structure/)

3. a serving file.

Include Files, as its name suggested, are to be included in other files with this one-liner:

{% highlight Django %}
{% raw %}
{% include includeFileName.html %}
{% endraw %}
{% endhighlight %}

while Layout Files, obvious enough, are the layouts, to be used by other files:

{% highlight YAML %}
---
layout: post
---
{% endhighlight %}

Every file can contain multiple Include Files but can use only one Layout File. Each Layout File is located in `_layouts/` folder while each Include File is located in `_includes/` folder.

A serving file on the other hand can be in any folder except the reserved ones (e.g. `_includes/`). Normally people put them in the root directory. A serving file will be served by its name (e.g. `about.html` will be served at `http://domainName/about.html`) unless you specify the url in <i>Front Matter</i>.

{% highlight YAML %}
---
permalink: /about
---
#this file would be served at http://domainName/about
{% endhighlight %}


Lastly, I would like to introduce 2 very special types of files: [*Post* file](http://jekyllrb.com/docs/posts/) and [*Data* file](http://jekyllrb.com/docs/datafiles/). Post files are located in `_posts/` while Data Files in `_data/`. All Post files of a site can be accessed as an array using the variable `site.posts` in your Liquid html files, while all Data Files can be accessed as `site.data.filename`.

> You can [define your own kinds of Collections files similar to Post files](http://jekyllrb.com/docs/collections/). (E.g. Blogpost files accessed as `site.blogpost` located in the `_blogpost/` folder after [you've declared it in `_config.yml`](http://jekyllrb.com/docs/collections/#step-1-tell-jekyll-to-read-in-your-collection)).

<p class="text-center"> ● ● ● </p>

###3rd minute: on the Liquid templating language <small class="wordCount">336&nbsp;words</small>

Liquid is a Templating languages [ written in Ruby](https://github.com/Shopify/Liquid) and can be [easily extended by exporting methods from your modules to the list of "filters"](https://github.com/Shopify/Liquid/wiki/Liquid-for-Programmers). If you would like to stick to the Jekyll that is supported by GitHub Pages&trade;, you can't extend Liquid ([or Jekyll](http://jekyllrb.com/docs/plugins/)) by yourself . That is to say, there would be some limitation on the Liquid that you are working with, data-manipulation-wise. This is why if the website you want to build consists of a lot of data-manipulating, you are advices to use frameworks like [Angular](https://angularjs.org) to have a better architecture (e.g. [MVC](http://stackoverflow.com/tags/model-view-controller/info)) and it would make your life easier too.

There are basically 3 things in Liquid: Variable, Logic Blocks and Filter. Variables defined in Front Matter is accessed as `page.variableName`, while in `/_config.yml` it is as `site.variableName`. A variable can be either a primitive (e.g. an integer), an array, or a object. Pretty standard. Variables can be printed/echoed out as string, much the same way as [Handlebar](http://handlebarsjs.com) & [mustache](http://mustache.github.io):

{% highlight Django %}
{% raw %}{{site.title}}
{% endraw %}
{% endhighlight %}

Or it can also be assigned using this one-liner:

{% highlight Django %}
{% raw %}{% assign catName = "Nyanchan" %}
<p>The cat name is {{catName}}!</p>{% endraw %}
{% endhighlight %}

You can check if some statement is true before deciding what to do with Conditions Blocks.

{% highlight Django %}
{% raw %}{% if site.name == "0a: Arch Here" %}
   This is 0a.io
{% else %}
   You are on some other site.
{% endif %}{% endraw %}
{% endhighlight %}

There is also a For loop block for going though an array.

{% highlight Django %}
{% raw %}{% for post in site.posts %}
{{ post.title }}
{% endfor %}{% endraw %}
{% endhighlight %}

Every logic block starts and ends with a corresponding start/end tag. To learn more about logic blocks you can [read the doc here](https://github.com/Shopify/Liquid/wiki/Liquid-for-Designers#tags).

The last thing to introduce is [Filter](https://github.com/Shopify/Liquid/wiki/Liquid-for-Designers#standard-filters). It is the only thing you can use for data-manipulation. Let's say you have a variable `x = 1` and you want to add 10 to it, you can't just write `x + 10`, the only way to do it is to use the `plus` Filter:

{% highlight Django %}
{% raw %}{% assign x = 1 %}
{% assign x = x | plus: 10 %}
{{x}}{% endraw %}
{% endhighlight %}

You can also apply filter before it is printed/echoed.

{% highlight Django %}
{% raw %}{{x | plus: 10}}
{% endraw %}
{% endhighlight %}

You can also apply filter after filter

{% highlight Django %}
{% raw %}{% assign x = 2 | plus: 3 | times: 100 %}
{% endraw %}
{% endhighlight %}

The flow of operations moves from left to right, so you would expect the `x` above to be 500 (instead of 302 or 203).

Aside from the default [Liquid Filters](https://github.com/Shopify/Liquid/wiki/Liquid-for-Designers#standard-filters), [here](http://jekyllrb.com/docs/templates/) is a list of filters (came along with Jekyll) that you can use.

<p class="text-center"> ● ● ● </p>

###End Note <small class="wordCount">500-600&nbsp;words</small>

Hope it didn't take you longer than 3 minutes to read through this article! If you still have a bit more time to spare, here are a few tips you may find useful:

<ol>
<li>
<p>
Liquid works in every file except for data files. So you can have Liquid in your <code>.md</code> files too, and it'd work!
</p>
</li>

<li>
<p>
The Jekyll server reads <code>_config.yml</code> only once (when it is starting). Changes you made in <code>_config.yml</code> would only be reflected after the server is restarted.
</p>
</li>

<li>
<p>
There seems to no way to create array or object declaratively on the fly. <code>{%raw%}{% assign %}{%endraw%}</code> is only capable of assigning primitive values to variables unless things are done in this way:
</p>
{% highlight Django %}
{% raw %}{% assign x = b %}
{% endraw %}
{% endhighlight %}
<p>
where <code>b</code> is an array or object already defined in Front Matter. So the line below <b>would not work</b> at all:
</p>
{% highlight Django %}
{% raw %}
{% assign x = [1,2,3] %}
{% endraw %}
{% endhighlight %}

</li>
<li>
<p>Apparently, every variable can be overwritten locally with <code>{% raw %}{%assign%}{% endraw %}</code>.
</p>
{% highlight Django %}
{% raw %}{{site.url}}
{% assign site = 2 %}
{{site}}
{% endraw %}
{% endhighlight %}
<p>Initially <code>site</code> is an object, after the <code>{% raw %}{%assign%}{% endraw %}</code> tag, <code>site</code> is <code>2</code>. This only has effect in a local scope.
</p>
</li>
<li>
<p>
Having a <a href="https://github.com/ruby/rake)">Rake</a> file is a good way to define tasks to run in CLI. Tasks such as the ones in this <a href="https://github.com/plusjade/jekyll-bootstrap">Jekyll Bootstrap Repo</a> for <a href="https://github.com/plusjade/jekyll-bootstrap/blob/master/Rakefile">creating posts</a>. For that, an alternative is to use <a href="https://github.com/jekyll/jekyll-compose">jekyll-compose</a>. (But <a href="http://jekyllrb.com/docs/plugins/#commands">Jekyll compose only works for Jekyll 2.5 & GitHub Pages&trade; supports 2.4 </a>.)
</p>
</li>
<li>
<p><a href="http://jekyllrb.com/docs/templates/#code-snippet-highlighting">Jekyll has built in support for syntax highlighting!</a> (though it is <a href="http://pygments.org">actually done through Python</a>)
</p>
</li>
<li>
<p><small>This is added on 19th June</small> If you are working with custom url for Collection files, remember to always end the permalink with <code>/</code> (e.g. <code>myCat/</code> instead of <code>myCat</code>) <a href="https://github.com/jekyll/jekyll/issues/3800">or the file would be served raw</a>.
</p>
</li>
<li>
<p><small>This is added on 7th July</small> When working with angular in your Jekyll site, remember that liquid and Angular both uses the <code>{% raw %}{{}}{% endraw %}</code> syntax for templating and any <code>{% raw %}{{}}{% endraw %}</code> in your .html will be evaluated before it is servered. So you'd need to do it like this
{% highlight Django %}
<div>
{% raw %}{% raw %}
{{ angular.stuff }}
{% endraw %}{{ "{%" }} endraw %}
</div>
{% endhighlight %}
in order for <code>{% raw %}{{}}{% endraw %}</code> to show up when the broswer downloads the html. Also, consider using <code>ng-bind</code> instead of <code>{% raw %}{{}}{% endraw %}</code>. <a href="https://docs.angularjs.org/api/ng/directive/ngBind">It's a lot neater this way.</a> (If necessary, <code>ng-bind-html</code>).
</p>
</li>
<li>
<p>Lastly, you don't really need to stick to the GitHub Pages&trade; Jekyll (the Jekyll that GitHub Pages&trade; has built-in support for) for your GitHub Page if you prefer something else. Or something more advanced - <a href="http://jekyllrb.com/news/2015/01/24/jekyll-3-0-0-beta1-released/)">Try out Jekyll 3.0, it's got hooks</a>. (If you want to use Jekyll 3.0 for production, you'd just need to build locally & push the <code>_site/</code> dir as the repo.) This way you can <a href="http://jekyllrb.com/docs/plugins/">fully customize your Jekyll with plugins as well</a>.
</p>
</li>
</ol>

> If you are interested in server architecture, you can learn about the new infrastructure used by GitHub Pages&trade; in production (since Jan 2015) [here](http://githubengineering.com/rearchitecting-github-pages/).
>
>Despite advocating for Jekyll 3.0 & Angular, I built this site of mine using Jekyll 2.4, without any JS framework or heavy library (jQuery is used only by 2 articles because they rely on a small jQuery widget I wrote some time ago). I just want to keep things lightweight & simple (although I do have some really messy code in my templating files as a consequence of a pointless challenge I gave myself to hack around under the limitation imposed by the GitHub Pages&trade; Jekyll). So I'm considering using Angular.
>
> Update (early July): a part of the [home page](http://0a.io/) now uses angular.
