---
font: garamond
layout: post
title: "Set Theory and Axiomatic Systems explained with pics and gifs"
metaDescription: |
    Set Theory and Axiomatic Systems explained. For anyone who is new to axiomatic set theory.
containsMaths: true
containCode: true
hnlink: https://news.ycombinator.com/item?id=9074412
reddit: https://www.reddit.com/r/math/comments/2wfom3/set_theory_and_axiomatic_systems_explained_with/
coverPainting: "Untitled (Lettres), 1998, Moon Pil Shim"
---

<p class="_index"></p>

>
>I’ve never imagined that [writing an essay](https://0a.io/chapter1/calculus-explained.html) on calculus and making some animated gifs can have such a huge impact in my life.
>
>I left school at the age of 16 to pursue what I wanted to do in life. I had ambitious dreams. But throughout the years I learnt to be conscious of my naivety and ignorance. I understand that it is perfectly normal if it turns out that all this time I have been living in a delusional state. So far every project I started had failed. Things have not once gone as planned.
>
>Now and then I would wonder if I was nothing more than a pathetic idealist, kidding himself along on a senseless odyssey. So I was greatly surprised when I learnt that 30 thousand people had visited my website in a day because of something I wrote. The link to the essay had got good number of upvotes on both [Reddit](https://0a.io/0a-explains-calculus) and [HackerNews](https://news.ycombinator.com/item?id=8523150). Some commented and told me it was good. Certainly this was nothing comparing to, say, getting into MIT, but I think I had never been this happy in my life before. The joy I felt - that could not be described in words.
>
>Once again, thank you all for the support. You had brightened my days up. And with a positive mind, gradually, I made the decision to be less of a shut-in and start going for meet-ups and conferences. I got to know many cool people and made some new friends.
>
> At the moment I'm still reading up on general topology and working on the article, <i>0a explains: general topology</i>. At some point in time I decided to have set theory, which initially was one of its segments, in a separate article instead. And just to make things more interesting, I figured I should dive in slightly deeper and give an axiomatic view on some of the concepts.
>
>So here you go.
>
>Enjoy!
>
> Archy,<br/>
> Jan 2015

<div class="containing-images-of-max-80precent-width">

<p class="_index">We can't be absolutely certain that anything is real. Did the past actually exist? That may appear to be an absurd question to ask. But how can you be so sure that events you remember really did occur? You can argue that you are able see their consequences in the present, or others would agree with you that they happened. There is however no way to disprove that reality did not just come into existence a moment ago in a predefined state, together with memory of a non-existed past implanted in you.</p>

Most of us live our lives presuming that certain things are true because it is more convenient to do so, despite the fact that there is no way to prove or verify them without more assumptions.

In some sense that is what an <u>axiomatic system</u> is about. An axiomatic system is made up of a collection of mathematical statements (known as <i>axioms</i>) that are defined to be true, so that we can use them to derive other statements that are true and define mathematical objects (e.g. number, function) along the way.

>For example, here is an axiom in <a target="_blank" href ="http://en.wikipedia.org/wiki/Frege's_propositional_calculus">Frege's axiomatic system on propositional calculus</a>.
>
>$$ A \Rightarrow \neg \neg A $$
>
>
>
>We can read it as:
>
>$$ A \text{ implies not not } A$$
>$$\text{or}$$
>$$\text{If }A \text{ is true, the negation of the negation of }A \text{ (double negation) is true.} $$
>
>where "$\Rightarrow$" means &nbsp;<i><a target="_blank" href ="http://en.wikipedia.org/wiki/Material_conditional">imply</a></i>.
"$\neg$" means &nbsp;<i><a target="_blank" href ="http://en.wikipedia.org/wiki/Negation">not</a></i>. Of course when I said that "$\Rightarrow$" means <i>imply</i>, it is more of a suggestion on how we should interpret it. After all "$\Rightarrow$" is nothing more than a symbol used in this context for a rather abstract notion.
>

<h3>So what exactly is an axiomatic system?</h3>
An axiomatic system is a list of undefined terms (each to represent some mathematical object) with a list of axioms that express relations between these terms.

When we have a collection of mathematical objects that are to be represented by these terms, and we start interpreting them (with regard to the axioms), it is said that we have a <b>model</b> of the axiomatic system.

<p class="text-center"> ● ● ● </p>

There are many different axiomatic systems that formalize set theory. Before getting started on these axiomatic systems, let's first look at set theory in <a target="_blank" href ="http://en.wikipedia.org/wiki/Naive_set_theory">a more "naive" way</a> without concerning too much about the formalism.


<h3 class="_index">What is set theory?</h3>
Set theory is considerably the heart of modern mathematics. As suggested by its name, set theory is all about the mathematical objects known as sets.

A set can be thought as a collection of things. We refer to these things as the elements of the set.

<p class="text-center"><img src="/img/from-chapter-1/set.png"></p>

When talking about the elements in a set, our only concern is their existence. So we don't really care about the number of identical elements. It either exists, or it doesn't. The concept of quantity is not important to us.

$$\text{it's pointless to have the extra } a \text{ in } \{a,a,b,c\} \\ \{a,b,c\} = \{a,a,b,c\}$$

Neither do we care about the order they are in.

$$\{a,b,c\}=\{b,c,a\}$$

<p class="_index">This whole idea of existence being our only concern for elements in a set can be seen in <i>the axiom of extensionality</i>. </p>

$$\forall A \, \forall B \, (\forall x \ (x \in A \Leftrightarrow x \in B) \, \Rightarrow A = B)$$


><i>The axiom of extensionality</i> is an axiom that's been used in a couple of axiomatic systems on set theory, including the famous <i><a target="_blank" href ="http://www.math.uchicago.edu/~may/VIGRE/VIGRE2011/REUPapers/Lian.pdf">Zermelo–Fraenkel set theory</a></i> (ZF), <i><a target="_blank" href ="https://proofwiki.org/wiki/Definition:G%C3%B6del-Bernays_Axioms">von Neumann–Bernays–Gödel set theory</a></i> (NGB) and <i><a target="_blank" href ="http://math.boisestate.edu/~holmes/holmes/nf.html">New Foundations</a></i> (NF).

To understand the symbolism, just keep in mind that

<div class="row block-of-grey">
"$\in$" means <a target="_blank" href ="https://proofwiki.org/wiki/Definition:Element"><i>is an element of</i> (or <i>in</i>)</a>.
"$\forall$" means <a target="_blank" href ="http://en.wikipedia.org/wiki/Universal_quantification"><i>for any</i> (or <i>for all</i>, or <i>for every</i>, etc)</a>.
"$\Leftrightarrow$" is the "two-ways imply", it means <a target="_blank" href ="http://mathworld.wolfram.com/Iff.html"><i>if and only if</i></a>.
</div>

Thus the axiom can be read as:

$$\text{for any } A \text{ and } B \\ \text{ if it is true for every } x \text{ that } x \text{ is in } A \text{ if and only if } x \text{ is also in } B \\ \text{then it would imply that } A = B \text{.}$$

Basically what it's saying is that two sets ($A$ and $B$) are equivalent as long as every element in $A$ is in $B$, and every element in $B$ is also in $A$. This appears to be a rather obvious thing to say. But it is necessary to have an axiom like this serving as a foundation for the mathematical idea of set.

> With this axiom, we can prove that $\{a,b,c\} = \{b,c,a\}$ by stating that each element in $\{a,b,c\}$ is also in $\{b,c,a\}$, and vice versa: so by the axiom, the ordering of elements does nothing to how we perceive a set.
>
> The same goes to the quantity:
>
> $$\forall x (x \in \{a,a\} \Leftrightarrow x \in \{a\}), \text{therefore } \{a,a\} = \{a\}$$
>
> Note: $x$ in the above statement works as a variable, in this case it is representing <i>any element of a certain set</i>. Since for any element in $\{a,a\}$, it is also in $\{a\}$, and vice  versa, so $\{a,a\}$ is equivalent to $\{a\}$.

<h3 class="_index">More on <i>the axiom of extensionality</i></h3>
An interesting consequence of <i>the axiom of extensionality</i> is that it implies a universe where everything is built up with sets. A universe where the notion of <b>urelements</b> no longer makes sense.

><h4>What is a urelement?</h4>
> A <b>urelements</b> (also called "atom") is a mathematical objects that is an element of some set, but is not a set itself.
>
><p class="text-center"><img src="/img/from-chapter-1/urelements.png"></p>
>
> For example, natural numbers are often considered to be urelements. (Provided that you don't define natural numbers to be sets of certain structure.) Since urelements are not sets, they contain no elements. But they can still be different from one another by their properties:
>
>$$1 \not= 2$$


<i>The axiom of extensionality</i> expresses that the statement

$$\forall x \, (x \in A \Leftrightarrow x \in B) \, \Rightarrow A = B$$

is true for all objects A and B in the universe (hence the <a target="_blank" href ="http://en.wikipedia.org/wiki/Universal_quantification">universal quantification, $\forall$</a>). As long as we have two mathematical objects that contain no elements, they would be identical by definition.

$$\text{If  }\forall x \, (x \in 1 \Leftrightarrow x \in 2) \text{ is true, then } 1 = 2 $$

Simply put it, this axiom implies that every mathematical object in the universe is distinguished only by their elements. So you can't have mathematical objects that contain no element but are different. This is what I mean by the notion of urelements no longer makes sense, and this is where things get really interesting.

In such universe, empty set is the building block of everything. Let's say we have a set $A=\{a,b\}$. Here is an example of what $a$ and $b$ can be:

$$\begin{align} a &= \{\} =\varnothing \\ b &= \{\{\}\} =\{\varnothing\} \end{align}$$

> By the <i>axiom of extensionality</i>, we can see that:
>
> $$\forall x (x \in \{\{\}\} \not\Leftrightarrow x \in \{\}), \text{therefore } \{\varnothing\} \not= \varnothing$$


No matter what mathematical objects we come up with, if we look at their elements, the elements of their elements, the elements of the elements of their elements ... we will eventually arrive at an empty set. Here is an example

$$\begin{align} W &= \{a,b,c,d\} \\ ( a=\{b,\{c\}\} ) \Rightarrow W&=\{\{b,\{c\}\},b,c,d\} \\ ( b=\{\{d\}\} ) \Rightarrow W&=\{\{\{\{d\}\},\{c\}\},\{\{d\}\},c,d\} \\ ( c=\varnothing ) \Rightarrow W&=\{\{\{\{d\}\},\{\varnothing\}\},\{\{d\}\},\varnothing,d\} \\ ( d=\{\varnothing,\{\varnothing\}\}  ) \Rightarrow W&=\{\{\{\{\{\varnothing,\{\varnothing\}\}\}\},\{\varnothing\}\},\{\{\{\varnothing,\{\varnothing\}\}\}\},\varnothing,\{\varnothing,\{\varnothing\}\}\} \end{align}$$

In this universe, natural numbers would have to be built up with empty set too. This is Zermelo's construction/definition of natural numbers:

$$\begin{align}0 &:= \{\} = \varnothing \\ 1 &:= \{0\} = \{\{\}\} = \{\varnothing\} \\ 2 &:= \{1\} = \{\{0\}\} = \{\{\{\}\}\} = \{\{\varnothing\}\}  \end{align} \\ $$

$$...$$

We can say that this is the universe <i> the axiom of extensionality </i> has beautifully entailed.


> "It is said that the world is empty, the world is empty, lord. In what respect is it said that the world is empty?" The Buddha replied, "Insofar as it is empty of a self or of anything pertaining to a self: <a target="_blank" href ="http://en.wikipedia.org/wiki/%C5%9A%C5%ABnyat%C4%81">Thus it is said, Ānanda, that the world is empty</a>."
>
>



<p class="text-center"> ● ● ● </p>

<h3 class="_index">Defining a set with a statement</h3>
Rather than explicitly writing down its elements like this: $A=\{a,b\}$, a set can also be defined this way:

$$Y=\{x \in \mathbb{R}    x \not\in \mathbb{Q}\}$$

The statement above can be read as:

$$Y \text{ is a set made up of each element, } x \text{, in } \mathbb{R} \text{ that is not in } \mathbb{Q} \text{.}$$

> Since <a target="_blank" href ="http://en.wikipedia.org/wiki/Real_numbers">$\mathbb{R}$ is the set of all real numbers</a>, and <a target="_blank" href ="http://en.wikipedia.org/wiki/Rational_number">$\mathbb{Q}$ is the set of all rational numbers</a>, $Y$ here is the set of all irrational numbers.

<h3 class="_index">On set operators</h3>
Besides the $\in$ set operator, which is the primary operator in set theory, there are other set operators too. And they can all be defined in terms of $\in$.

<span class="hightlight">Union ( $\cup$ )</span>: getting all elements from two sets.

$$A \cup B = \{x \in c   c \in \{A,B\}\}$$

<span class="hightlight">Intersection ( $\cap$ )</span>: getting elements two sets have in common.

$$A \cap B = \{x \in A   x \in B \}$$

<span class="hightlight">Difference ( $\setminus$ )</span>: getting elements from one set, that are not in another sets.

$$A \setminus B = \{x \in A   x \not\in B \} $$

> Hence, in the example above, $Y$ can expressed as a <span class="hightlight">difference</span>:
>
> $$\begin{align} Y&=\{x \in \mathbb{R}    x \not\in \mathbb{Q}\} \\ Y &= \mathbb{R} \setminus \mathbb{Q} \end{align}$$

<span class="hightlight">Complement ( $^c$ )</span>: getting all elements in the universe that are not in some set.

$$A^c = \{x \in U   x \not\in A \} \text{ , where } U \text{ is the universe}$$

> So $Y$ can also be defined as a <span class="hightlight">complement</span>, if we define $\mathbb{R}$ to be the universe:
>
> $$\begin{align} Y &= \mathbb{U} \setminus \mathbb{Q} \\ Y&= \mathbb{Q}^c \end{align}$$

<h3 class="_index">What is a subset?</h3>
A set is a subset of another set when all its elements are in the other set ( Denoted as $\subset$ )

$$A \subseteq B \Leftrightarrow \forall x ( x \in A \Rightarrow x \in B)$$

> In the example above, $Y$ is a subset of $\mathbb{R}$. We often use "$\subset$" to denote this relationship:
>
> $$ \{x \in \mathbb{R}    x \not\in \mathbb{Q}\} \subset \mathbb{R} \\ Y \subset \mathbb{R} $$
>
><p class="text-center"><img src="/img/from-chapter-1/set2.png"></p>

A subset of a set can be viewed as a set we obtain from selecting elements from another set satisfying some statement.

<p class="text-center"><img src="/img/from-chapter-1/subset.gif"></p>

<p class="_index">In ZF, <i>the axiom of specification</i> states that a set of such selection alway exists.</p>

$$\forall A \, \exists B \, \forall x \, (x\in B \Leftrightarrow [(x\in A) \land \phi(x)])$$

We can read it as:

$$\text{for all } A \text{ there exists } B \text{ such that forall } x, \\ x \text{ is in B only and only if } x \text { is in A and } \phi(x) \text{ is true.}$$

$$\text{or}$$

$$\text{for any set } A \text{ , there exists a set } B \\ \text{ that are made up of } \text{precisely the elements in } A \text{ each satisfying } \phi(x)$$

<div class="row block-of-grey">
$\exists$ means <a target="_blank" href ="http://en.wikipedia.org/wiki/Existential_quantification"><i>there exists</i></a>.
$\land$ means <i>and</i>.
$\phi(x)$ here is known as a <a target="_blank" href ="http://en.wikipedia.org/wiki/Metavariable">meta-variable</a> to indicate some statement about $x$.
</div>
<br>

> We often refer to an axiom with meta-variable as an <b>axiom schema</b>. Axiom schema can generate an infinite number of axioms because we can make an axiom out of it by putting any statement into the variable.
>
> In programming, you can visualize an axiom schema as a simply function that returns an axiom:
>
> ```JavaScript
function make_an_axiom(phi){
     return "Forall A, there exists B such that for all x, if x is in B, then x is in A and " + phi;
 }
 var axiom_schema = make_an_axiom;
 var axiom1 = axiom_schema("x is a negative number");
 // axiom1 would be: "Forall A, there exists B such that for all x, if x is in B, then x is in A and x is a negative number"
 var axiom2 = axiom_schema("x is a prime number");
 // axiom1 would be: "Forall A, there exists B such that for all x, if x is in B, then x is in A and x is a prime number"
```
>
> In the previous example, $\phi(x)$ is the statement $x \not\in \mathbb{Q} $. So elements satisfying this statement, namely the irrational numbers, would be selected.
>
><p class="text-center"><img src="/img/from-chapter-1/specification.gif"></p>

A set is always a subset of itself. Selecting all elements from a set gives us back the original set.

$$\forall A (A \subseteq A)$$

> $\subseteq$ is the general notation for subset. It can be used for all subsets, while $\subset$ can only be used when the subset is not the set itself.
>
><p class="text-center"><img src="/img/from-chapter-1/ss_vs_properss.png"></p>

Empty set is the subset of all sets. Selecting no elements from a set and we would get an empty set.

$$\forall A ( \varnothing \subseteq A )$$


<h3 class="_index"><i>Axiom of specification</i> in Cantor's Paradise</h3>
<a target="_blank" href ="http://en.wikipedia.org/wiki/Georg_Cantor">Cantor</a> is consideredly the founder of modern set theory, due to <a target="_blank" href ="http://math.byu.edu/~grant/courses/cantor1874.pdf">his 1874's paper</a> which illustrated a fundamental concept about infinite sets. Cantor's Paradise is the name for the set theory came up by Cantor in the era before there were any axiomatic systems on set theory.


> Cantor developed his theory of set in what we called an <a target="_blank" href ="http://en.wikipedia.org/wiki/Intuitionism">"intuitive"</a> approach: he did not formalize the mathematical concepts with formal system such as <a target="_blank" href ="http://en.wikipedia.org/wiki/First-order_logic">first-order logic</a> (which is what's used in ZF and many other axiomatic systems). His set theory is in a sense a paradise due to its simplicity and straightforwardness. A paradise where, back in the early 20th century, many people had comfortably settled in with no plan to leave, even though at that time it was becoming clearer and clearer that such approach to developing a theory of set would result in paradoxes.


Here is the concept of "specification" in Cantor's paradise formalized into an axiom for comparison with the <i>axiom of specification</i> in ZF.

<i>Axiom of specification</i> in Cantor's paradise

$$\exists B \, \forall x \, (x\in B \Leftrightarrow \phi(x))$$

<i>Axiom of specification</i> in ZF

$$\forall A \, \exists B \, \forall x \, (x\in B \Leftrightarrow [(x\in A) \land \phi(x)])$$

Apparently, Cantor's version allows a set to be constructed by all elements in the universe that satisfied $\phi(x)$. It does not restrict the elements of selection be in a particular set (hence $\phi(x)$ instead of $[(x\in A) \land \phi(x)]$).

<p class="_index">This would lead to what's known as the <b>Russell Paradox</b>.</p>

Let's say we call all sets that don't contain themselves normal set, and define a set $V$, that contains all normal sets. We would realize that if $V$ is itself a normal set, $V$ must contain itself. But that would make $V$ no longer a normal set (since a normal set does not contain itself).

$$A \not\in A \Rightarrow A \text{ is a normal set} \\ V = \{x    x \text{ is a normal set} \}$$

$$V \text{ is a normal set} \Rightarrow V \in V \\ V \in V \Rightarrow V \text{ is not a normal set}$$

So we conclude that $V$ shouldn't contain itself. And that would mean $V$ is a normal set...

$$V \text{ is not a normal set} \Rightarrow V \not\in V \\ V \not\in V \Rightarrow V \text{ is a normal set}$$

<p class="text-center"><img src="/img/from-chapter-1/russell.gif"></p>

We would end up having this absurd statement about $V$:

$$ V \in V \Leftrightarrow V \not \in V $$

And it's derivable from <i>the axiom of specification</i> that $V$ exists.

$$\exists B \, \forall x \, (x\in B \Leftrightarrow \phi(x)) \Rightarrow \exists V \, \forall x \, (x\in V \Leftrightarrow x \not\in x) \\ \exists V \, \forall x \, (x\in V \Leftrightarrow x \not\in x)  \Rightarrow \exists V (V \in V \Leftrightarrow V \not \in V)$$

> The <a target="_blank" href ="http://en.wikipedia.org/wiki/Barber_paradox">Barber paradox</a> is an alternative form of the Russell Paradox. Instead of talking about a set that contains all the sets that don't contain themselves, the Barber paradox talks about a barber who only shaves men who do not shave themselves.

In ZF, its <i>axiom of specification</i> avoided this paradox by restricting the selection process from all elements in the universe to only elements in a certain set.

$$\exists A \exists B \, \forall x \, (x\in B \Leftrightarrow ( x \in A \land \phi(x))) \not\Rightarrow  \exists V (V = \{x    x \text{ is a normal set} \} )$$

So this <i>axiom of specification</i> only guarantees the existence of a set made up of elements from a set that's already defined.

$$\exists U (U = \{x \in A    x \text{ is a normal set}\}) \\ \text{ here A is some set that is already defined} $$

We can't just "squeeze" $U$ into $A$ before $U$ is defined. So $A$ can't contain $U$. The paradox can't occur.

> On the other hand, to avoid this paradox, Russell invented a theory of "type" (and included it in <a target="_blank" href ="http://www.amazon.com/gp/product/1603864377/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1603864377&linkCode=as2&tag=0aarhe-20&linkId=ROHQ2FJTIJ7KKDBG">Principia Mathematica</a>, a book he co-wrote with Whitehead). It basically states that every set has a "type number" based on what it contains.
>
> In this universe, urelements exist. And they exist with type number 0. Sets containing urelements are type 1 objects. Sets containing type 1 objects are type 2 objects. And so on. We can only define a set by first having objects of lower types. This hierarchy of types prevent a set from containing itself because self-referencing is not possible in a system like this.



><i>Von Neumann–Bernays–Gödel set theory (NGB)</i> extended ZF by introducing the concept of <b>class</b>. Class is basically a collection of things, just like sets in ZF. Sets in NGB are defined to be classes that are elements of other classes. So we end up having two types of classes: set and <b>"proper class"</b>. A "proper class" is simply a class that is not an element of any class. "Proper classes" can contain all sets that satisfy some statement. This would not result in Russell Paradox becaues "proper class" is by definition not a set. Just as we can't define a set to contain all sets in the universe which satisfy some statement, we can't define a class to contain all classes which satisfy some statement.
>
><p class="text-center"><img src="/img/from-chapter-1/properclass.png"></p>

<p class="text-center"> ● ● ● </p>

><p class="text-center _index"><b>Author's Note</b></p>
>
> This marks the end of our journey into the world of axiomatic systems on set theory (which are often referred to as "axiomatic set theories", since each of them builds up a slightly different theory of set).
>
> For the maths students who happen to be reading this article, you may find this rather short journey unsatisfactory. Many interesting things are not covered - <a target="_blank" href ="http://mathworld.wolfram.com/GoedelsIncompletenessTheorem.html">the Gödel's incompleteness theorem</a>, <a target="_blank" href ="http://en.wikipedia.org/wiki/Skolem%27s_paradox">Skolem's paradox</a>, <a target="_blank" href ="http://math.stackexchange.com/questions/6489/can-you-explain-the-axiom-of-choice-in-simple-terms">the axiom of choice</a>, <a target="_blank" href ="http://en.wikipedia.org/wiki/Non-well-founded_set_theory"> well-foundedness</a>, <a target="_blank" href ="http://standish.stanford.edu/pdf/00000056.pdf">Aczel's anti-foundation axiom (AFA)</a>, etc - basically stuff that you would expect to see in <a target="_blank" href="http://www.amazon.com/gp/product/0387900500/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0387900500&linkCode=as2&tag=0aarhe-20&linkId=ZRDMG2EY62VWR3VB">textbooks on axiomatic set theory and logic</a>. Please keep in mind that this is in no mean an attempt to be a comprehensive and thorough guide on axiomatic systems.
>
> This article is more for those who would like to take a glimpse into what an axiomatic system is and how a theory of set can be constructed from axioms. If you are one of these curious mind, I hope you are enjoying your expedition so far ;)
>
> We shall now proceed to other concepts in set theory.


<p class="text-center"> ● ● ● </p>

<h3 class="_index">What is an ordered pair? </h3>
An ordered pair is a mathematical object that contains 2 elements wherein there is an order.

$$(1,2)\not=(2,1)$$

> So unlike sets, ordered pairs are distinguishable by the order of their elements.

Formally, an ordered pair is defined to be a set of this structure:

$$(a,b) = \{\{a\},\{a,b\}\}$$

As you can see, $(a,b) = (b,a)$ only when $\{\{a\},\{a,b\}\} =\{\{b\},\{b,a\}\}$, which means $a = b$.



> The set of all possible ordered pairs between two sets is known as the <b>Cartesian Product</b>.
>
><p class="text-center"><img src="/img/from-chapter-1/cartesian.png"></p>
>
> It is often denoted with a cross $\times$ (like the one used for multiplication).



<h3>What is a tuple?</h3>
Tuple is the generalization of ordered pair. It is a mathematical object containing $n$ elements wherein there's an order.

$$(1,2,3)\not=(1,3,2)$$


> $(1,2,3)$ and $(1,3,2)$ here are 3-tuples. An ordered pair is a 2-tuple.

A $n$-tuple can be defined recursively like this

$$(a_1,a_2...a_n) = \{\{x\},\{x,a_n\}\} \text{ where }x=(a_1,a_2...a_{n-1})$$

when we have one element, for simplicity, we would define it as $(a) = a$.

> As we can see, the definition of 2-tuple (an ordered pair) above can be derived from the recursive definition.
>
> $$\begin{align} (a_1,a_2) &= \{\{x\},\{x,a_2\}\} \text{ where } x=(a_1)=a_1 \\ (a_1,a_2)&=\{\{a_1\},\{a_1,a_2\}\} \end{align}$$
>
> This is actually known as <i>Kuratowski definition</i> of ordered pair. (The recursive defintion of $n$-tuple is a generalization of it.)
>
> There're other ways of defining an ordered pair too. Here is <i>Hausdorff's definition</i> that uses natural number:
>
> $$(a_1,a_2) = \{\{a_1,1\},\{a_2,2\}\}$$
>
> We can once again generalize it for the definition of $n$-tuple:
>
> $$(a_1,a_2...a_n) = \{\{a_1,1\},\{a_2,2\} ... \{a_n,n\}\}$$
>
> One with a curious mind may ask, which of these definitions should be used? And my answer to her or him is: it's all up to you. It really doesn't matter which one you pick. You can just come up with your own definition if you like. What's important is to have mathematical objects that are distinguishable not only by the elements in them, but also the order the elements are in.


<h3 class="_index">What is a relation?</h3>
A relation is basically a set of $n$-tuples, each formed by elements from $n$ sets.

$$R_{AB}= \{(1,a),(2,c)\} \\[10px] \begin{align} A&=\{1,2,3,4\} \\ B&=\{a,b,c\} \end{align}$$


> Here, $R_{AB}$ is a binary relation between $A$ and $B$. We call it a binary relation when it's between 2 sets.

<p class="text-center"><img src="/img/from-chapter-1/relation.gif"></p>

> A Cartesian Product, for example, is also a binary relation. Actually, any binary relation between 2 sets is a subset of their Cartesian Product. $R_{AB}$ above is a subset of the Cartesian Product of $A$ and $B$.
>
> $$A \times B = \{(1,a),(1,b),(1,c),(2,a),(2,b),(2,c),(3,a),(3,b),(3,c),(4,a),(4,b),(4,c)\}$$
>
> $$\begin{align} R_{AB} &= \{(1,a),(2,c)\} \\ R_{AB} &\subset (A \times B) \end{align}$$

Here is an example of relation between 3 sets.

$$R_{ABC}= \{(1,a,-1),(2,c,-4)\} \\[10px] \begin{align} A&=\{1,2,3,4\} \\ B&=\{a,b,c\} \\ C&=\{-1,-2,-3,-4,-5\} \end{align}$$

<p class="text-center"><img src="/img/from-chapter-1/relation3.png"></p>

<h3 class="_index">What is a function?</h3>
A function is a relation in which no two $m$-tuples have their first $m-1$ element(s) the same.

$$\begin{align} R_1&= \{(1,a),(2,c)\} \text{, } R_1 \text{ is a function}  \\ R_2&= \{(1,a),(1,c)\} \text{, } R_2 \text{ is not a function} \end{align}$$


<p class="text-center"><img src="/img/from-chapter-1/function.gif"></p>

$R_1$ above is a 1-ary (or single-input) function. For any 1-ary function, the first element (which plays the role of "input") has to be unique.

> If we are to have a 2-ary function, our first 2 elements in each tuple must then be unique.

Often, we would write:

$$R(inputs) = output$$

to express that a particular $n$-tuple exists in the function.

For example:

$$R(1) = a \\ \text{ would mean that } \\ (1,a) \in R$$

And often, we use "$\mapsto$" to express which sets the function is a relation between.

$$R:A\mapsto B$$

Here $A$ (whose elements play the role of "input") is called the domain, while $B$ is called the codomain.

>It is always true that for every element in the domain, there exists a tuple whose first element is that element. But it is not necessary the case that for every element in the co-domain there exists a tuple whose second element is that element. Take any $:A\mapsto B$ for example.
>
>$$\forall a \in A \; \exists b \in B \; \exists t \in f, t(a) = b \; \; \text { is true}$$
>
>$$\forall a \in A \; \forall b \in B \; \exists t \in f, t(a) = b \; \; \text { may not be true}$$


> For function with more than 1 input, the domain would be expressed as a Cartesian product of two or more sets:
>
> $$R:A_1 \times A_2 ... \times A_n \mapsto B$$

Normally, we would define a function with a statement.

$$f(x)= x + 1$$

This can be translated into

$$f=\{(x_1,x_1+1),(x_2,x_2+1)...\} \\ \text{where } x_n \text{ is an element in the domain} \\ \text{and } x_n+1 \text{ is an element in the codomain}$$

> So to be more specific, we can state that $f$ above maps from the set of real numbers to itself:
>
> $$f: \mathbb{R} \mapsto \mathbb{R}$$
>
> Or the set of integers to itself:
>
> $$f: \mathbb{Z} \mapsto \mathbb{Z}$$
>
> In the $f: \mathbb{Z} \mapsto \mathbb{Z}$ case, we would get
> $$f(1.618) = undefined$$
> because $1.618$ is not an integer, it is not in the domain.

Functions can be classified into 4 types:

<ol>
<li>not injective & not surjective</li>
<li>injective & not surjective</li>
<li>surjective & not injective</li>
<li>injective & surjective</li>
</ol>

When a function $f:X \mapsto Y$ is injective, each element in X is mapped to a <b>unique</b> element in Y.

$$\forall a \forall b (a\not=b \Leftrightarrow f(a)\not=f(b)) \text{ where } a \text{ and } b \text{ is in the domain}$$

<p class="text-center"><img src="/img/from-chapter-1/injective.png"></p>

>We often refer to the set of elements being mapped to as image. (An image is always a subset of the codomain)

When a function $f:X \mapsto Y$ is surjective, <b>each element in Y</b> is mapped by a element in X.

$$\forall x (x\in Y \Leftrightarrow\exists a ( f(a)=x) )$$

<p class="text-center"><img src="/img/from-chapter-1/surjective.png"></p>

>For a surjective function, the codomain is equivalent to the image.

If a function is both subjective and injective, we call it <b>bijective</b>. In a bijective function, each element in $X$ is mapped to a unique element in $Y$ and no element in $Y$ is "unmapped".

<p class="text-center"><img src="/img/from-chapter-1/bijective.png"></p>

>A function only has an inverse (often devoted as $f^{-1}$ of $f$) if it is bijective.

<p class="text-center"> ● ● ● </p>

<h3 class="_index">What is a cardinal number?</h3>
A cardinal number of a set can be viewed as the number of elements in the set. (denoted with $  \:\:  $)

$X =\{4,5,1,2\} \\   X   = 4$

> The idea of "number" gets really fussy when we have sets that contain infinitely many elements. So formally, we say that two sets have the same cardinal number (or the same <b>cardinality</b>) only when there is a bijective function between them.
>
> $$\exists f (f:A \mapsto B \text{ is bijective}) \Leftrightarrow   A   =   B  $$
>
> That's to say, when $  A   =   B  $,  we can construct a set of ordered pairs, each made up of a unique element from $A$ and $B$ individually, for all elements in $A$ and $B$.

<h3 class="_index">On the idea of countable, infinite sets and their cardinal numbers</h3>
A set is considered to be "countable" when it has the same cardinality as a subset of $\mathbb{N}$.

$$\forall A ( \exists V (  A   =   V   \Leftrightarrow V \subseteq \mathbb{N}) \Rightarrow A \text { is a countable set})$$

Or, to put it another way, a set is countable when there is an injective function from it to $\mathbb{N}$.

<p class="text-center"><img src="/img/from-chapter-1/countable.png"></p>

It's pretty obvious that all finite sets (sets with finite number of elements) are countable.

Other than $\mathbb{N}$, there're sets containing infinitely many elements (often referred to as <b>infinite sets</b>) that are countable too. The set of all integers, $\mathbb{Z}$, for example, is countable. And interestingly, the two sets have the same cardinality.

$$  \mathbb{Z}  =  \mathbb{N}  =\aleph_0$$

$\aleph_0$ is the symbol used to represent this cardinal number. (As we can see, the cardinal number of infinite sets can no longer to represent by a natural number.)

> To prove that $ \mathbb{N}  = \mathbb{Z} $, we only need to show that there's a bijective function from $  \mathbb{N}  $ to $  \mathbb{Z}  $. And this is the bijective function:
>
> $$f(x)= \left\{ \begin{array}{ll} x-\frac{x+1}{2} \text{ if x is odd } \\ x - \frac{x \times 3}{2} \text{ if x is even}\end{array} \right.$$
>
> This is bijective because we can just keep feeding in natural number to this function for it to output every integer:
>
> $$\begin{align} f(1)&=0 \\ f(2)&=-1 \\ f(3)&=1 \\ f(4)&=-2 \\ f(5)&=2 \end{align} \\... $$
>
> Every natural number is mapped to precisely one integer. All integers are mapped as there're infinitely many natural numbers.
>
> Actually, all infinite subsets of $\mathbb{N}$ has $\aleph_0$ as the cardinal number.
>
> $$X \text{ is an infinite set and } X \subseteq \mathbb{N} \Leftrightarrow \exists f (f:\mathbb{N}\mapsto X \text{ is bijective })$$

But for any two infinite sets, do they always have the same cardinal number? Interestingly, the answer is no. In this sense, there are some infinities that are bigger than other infinities.

Infinite sets with a bigger cardinal number than $\mathbb{N}$ are "uncountable" or not "countable" (by definition).

<p class="_index"></p>

> The idea of "uncountable" can be demonstrated in what's known as <b><i>Cantor's diagonal argument</i></b>.
>
> Let's say we have an infinite set $A$ which contains all the different binary (every digit is either 0 or 1) strings of infinite length.
>
><p class="text-center"><img src="/img/from-chapter-1/infinite_strings.png"></p>
>
> Now let's say we have another set, $B$, that contains all binary strings of infinite length enumerated by a function like this:
>
> $$f(n) = \left\{ \begin{array}{ll} \text { a string that repeats base-2 version of } (n - 1) \text{ with a 0 behind if n is odd } \\ \text{ a string that's bitwise NOT of } f(n-1) \text{ if n is even} \end{array} \right. \\ B = \{x    x = f(a), a \in \mathbb{N}\}$$
>
><p class="text-center"><img src="/img/from-chapter-1/infinite_strings_b.png"></p>
>
> Apparently, this is a bijective function from $\mathbb{N}$ to $B$. $B$ has the cardinal number $\aleph_0$.
>
> Now we can take the 1st digit of the 1st element, $f(1)$, flip it to a different value (0 to 1 or 1 to 0), take the 2nd digit of the 2nd element, $f(2)$, does the same thing to it ... and get the $n$-th digit from every element to construct a binary string. We would end up with an infinitely long binary string that is different from every infinitely long string in $B$.
>
><p class="text-center"><img src="/img/from-chapter-1/cantor-diagonal-argument.gif"></p>
> .
> And the same thing can be done to every set whose element is enumerated by $\mathbb{N}$. So we conclude that no matter how these binary strings are listed (using a bijective function with domain $\mathbb{N}$), we would always be able to construct a new permutation that's not in the list. In other words, enumeration (using $\mathbb{N}$) cannot capture every permutation of infinitely long strings. We can't list down every element in $A$, the set of all possible binary strings of infinite length.
>
> $$\forall B, \forall f ( f: \mathbb{N} \mapsto B \text{ is bijective} \Rightarrow (B\not=A) )$$
>
> In this sense, $A$ is "uncountable". There exists no bijective function from $\mathbb{N}$ to $A$.

<h3 class="_index" id="power_sets">On power sets</h3>
A power set of a set is the set of all its subsets. (Denote with $\mathcal{P}(X)$)

$$A = \{a,b,c\} \\ \mathcal{P}(A) = \{a,b,c,\{a,b\},\{b,c\},\{a,c\},\{a,b,c\}\} $$

A power set of a set with a cardinal number $n$ has a cardinal number $2^n$.

$$  \mathcal{P}(A)  =2^{  A  }$$

>For this reason, sometimes, a power set of set X is denoted as $2^X$.
>
> Cantor's theorem states that a power set of a set always has a bigger cardinal number than the set.
>
> $$\forall A(   \mathcal{P}(A)  >  A  )$$
>
> This is true for infinite sets too. So there are infinitely many different-sizes infinite sets.
>
><small>The chapter below has been edited on 19th Feb, 4:08 pm EST time. Great thanks to <a href="http://www.reddit.com/r/math/comments/2wfom3/set_theory_and_axiomatic_systems_explained_with/">some useful comments on Reddit</a>. </small>

<h3 class="_index">On Aleph number and Beth number</h3>
<p class="_index">The cardinal number of infinite sets are often expressed in <b>Aleph number</b> ($\aleph_n$) or <b>Beth number</b> ($\beth_n$) .</p>

$\aleph_0$ in the example above is the smallest Aleph number.

$\aleph_0 < \aleph_1 < \aleph_2 < \aleph_3 ...$

>So an infinite set is "uncountable" when its cardinality is not $\aleph_0$.

$\aleph_{n+1}$ is simply defined to be the next cardinal number bigger than $\aleph_n$

>That is to say, there is no cardinal number between $\aleph_{n+1}$ and $\aleph_n$.

Meanwhile, the smallest Beth number is $\beth_0$, and by definition it is equivalent to $\aleph_0$.

$$\beth_0 < \beth_1 < \beth_2 < \beth_3...$$

$$\aleph_0 = \beth_0$$

Here is the recursive definitions for Beth numbers with bigger ordinals (bigger subscript $n$),

$$\beth_{a+1} =  \mathcal{P}({\beth_a})  = 2^{\beth_a}$$

>$\mathbb{R}$ has $\beth_1$ as the cardinality since <a target ="_blank" href="http://math.stackexchange.com/a/118659/65082">there is a bijective function between $\mathbb{R}$ and $\mathbb{P}(\mathbb{N})$</a>.

The <a target="_blank" href ="http://logic.harvard.edu/EFI_CH.pdf">continuum hypothesis (CH)</a> states that

$$\beth_1 = \aleph_1$$

This basically "closes the gap" between $\aleph_0$ and $2^{\aleph_0}$.

$$\text{There is no infinity between } \aleph_0 \text{ and } 2^{\aleph_0}$$

$$2^{\aleph_0} = \aleph_1$$

><small>this was added in on 20th Feb</small>
> Just roughly 70 years ago, <a target="_blank" href="http://en.wikipedia.org/wiki/Kurt_G%C3%B6del">Gödel</a> showed that <a target="_blank" href="http://press.princeton.edu/titles/1034.html">CH cannot be disproved</a> in ZF & ZFC (ZF with <a href="http://www.amazon.com/gp/product/0486466248/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0486466248&linkCode=as2&tag=0aarhe-20&linkId=U3BBFLSJIBOP2R36">the axiom of choice</a>).
>
> Two decades later, <a target="_blank" href="http://en.wikipedia.org/wiki/Paul_Cohen_(mathematician)">Cohen</a> showed that <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC300611/">no contradiction would arise if CH is defined to be false</a> in ZF & ZFC.
>
> CH is therefore considered to be <a target="_blank" href="http://en.wikipedia.org/wiki/Independence_%28mathematical_logic%29">independent</a> of ZF and ZFC.

<p class="text-center"> - The End </p>

</div>
