---
coverPainting: Personal Values, 1952, Rene Magritte
layout: post
title: "Fear and Loathing for libraries and frameworks"
permalink: the-framework-library-phobia
extract: |
    When I was young, I considered a career as a magician ([a close-up magician](http://en.wikipedia.org/wiki/Micromagic) to be specific). Not that I was into the show business or I had a desire to amaze crowds. What drove me to study the art of illusion and learn and practice tricks and techniques each day - from various types of [doubt lift](http://en.wikipedia.org/wiki/Double_lift) to different variants of [*pass*](https://www.youtube.com/watch?v=LilNzRXylSM) - is the obsession to understand how things work, and the pride in being able use this knowledge to make things happen.

    I started off learning programming by doing web development, or basically just asking stupid questions on [StackOverflow](http://stackoverflow.com) and copying and pasting code I found on the Internet in hopes of getting a website to work the way I wanted. To a 16 years old who did not even know what [OO](http://en.wikipedia.org/wiki/Object-oriented_programming) is, [jQuery](https://jquery.com) was magic. I had not one iota of idea what was going on but I was able to make [DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model) objects dance around at my whim because of how easy-to-use jQuery was (and it was the same on the server side with [Cake](http://cakephp.org)). It scared me when I realized that. So at one point I started learning the fundamentals of programming, principles in web development, what are the pros and cons of different design patterns, etc. and developing a habit of reading the source code of tools I used. (Viva la open-source!)
---

When I was young, I considered a career as a magician ([a close-up magician](http://en.wikipedia.org/wiki/Micromagic) to be specific). Not that I was into the show business or I had a desire to amaze crowds. What drove me to study the art of illusion and learn and practice tricks and techniques each day - from various types of [doubt lift](http://en.wikipedia.org/wiki/Double_lift) to different variants of [*pass*](https://www.youtube.com/watch?v=LilNzRXylSM) - is the obsession to understand how things work, and the pride in being able use this knowledge to make things happen.

I started off learning programming by doing web development, or basically just asking stupid questions on [StackOverflow](http://stackoverflow.com) and copying and pasting code I found on the Internet in hopes of getting a website to work the way I wanted. To a 16 years old who did not even know what [OO](http://en.wikipedia.org/wiki/Object-oriented_programming) is, [jQuery](https://jquery.com) was magic. I had not one iota of idea what was going on but I was able to make [DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model) objects dance around at my whim because of how easy-to-use jQuery was (and it was the same on the server side with [Cake](http://cakephp.org)). It scared me when I realized that. So at one point I started learning the fundamentals of programming, principles in web development, what are the pros and cons of different design patterns, etc. and developing a habit of reading the source code of tools I used. (Viva la open-source!)

I have always been an idealist. The more I understand how things work, the more I am convinced that I am capable of duplicating them, and getting my own version of things work. Why use libraries or frameworks when you can just hardcode everything, if you are given an infinite amount of time? There is this sense of unease whenever I code in an environment with a lot of unnecessary functions and classes (or [prototypes](http://en.wikipedia.org/wiki/Prototype-based_programming) in the case of JS). So when possible, I would avoid using any libraries and frameworks that I consider "heavy". (Or it'd be the avoidance of [packages](https://atmospherejs.com) in the case that [I fell in love with a framework](https://www.meteor.com)).

I just want to write my own code and be minimalistic.

It turns out this is a very naive way of thinking. It is highly impractical. I'm not going to get anywhere with such ideology, if I'm concerned with getting things done. As [Eric S. Raymond](http://en.wikipedia.org/wiki/Eric_S._Raymond) put it in [*The Cathedral and the Bazaar (1999)*](http://www.amazon.com/gp/product/0596001088/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0596001088&linkCode=as2&tag=0aarhe-20&linkId=DEAUNS2X7QMF2LS7):

<div class="rows block-of-grey">
Good programmers know what to write. Great ones know what to rewrite (and reuse) ... An important trait of the great ones is constructive laziness. They know that you get an A not for effort but for results, and that it's almost always easier to start from a good partial solution than from nothing at all.
</div>

Don't reinvent the wheel. Being minimalistic is good. But to be real minimalistic (and take development-time in consideration), one shouldn't be writing each component from the ground up. She or he should be finding and picking up the right libraries for the project, making modifications if necessary, and dexterously connecting them together - that itself is an art.

There would be slight complication when it comes to framework though. (Here I'm using the [IoC](http://en.wikipedia.org/wiki/Inversion_of_control) definition of framework, in which case framework defines the skeleton of the application.) But the idea is similar: framework can make your life easier but you'd need to choose the right one for the project. And sometimes it may be better that you build your own, or that [you don't need one at all](http://tomasp.net/blog/2015/library-frameworks/).

Nonetheless, if you are beginning to learn app/web development, I believe you should try to develop the library/framework phobia - you won't be productive but you would learn a lot from writing your own code - and then realize that writing every line by yourself is not going to be practical, and then overcome this fear and learn the art of rewriting and reusing, which involves exploring more libraries & frameworks, making notes about them, keeping things organize so you know what is appropriate to be used for certain situation (making amendment if possible) and not inventing wheels needlessly. And that is what I'm going to start doing from now on.

I need to be a better developer.

[Added on 29th Nov 2015] Except that few months later I decided not to do that and allocated most of my time on mathematics and computer science instead. Turned out I much prefer wandering aimlessly in the worlds of logic, proof and computation to doing app/web development.
