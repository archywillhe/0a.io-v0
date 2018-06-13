---
readingTime: 10min
layout: post
title: "Introduction to Axioms with Set Theory for an Imaginary 10 years old"
coverPainting: Bathyscaphe, 2001, Jacek Yerka
containsMaths: true
---

Among the most elegant things in mathematics is the notion of axioms. It is a way of reasoning than it is a mathematical concept (and hence, in [David Hilbert](https://en.wikipedia.org/wiki/David_Hilbert)'s words, a meta-mathematical concept), and I believe it should be formally introduced to every 10 years old in an informal manner.

"Imagine you live in an alien world where bananas are rare like back in East Germany," you start off with a friendly introduction to capture the mind of a child.
<!--more-->

<img src="../img/erste_banane.png" style="max-width:300px">

"One day your good friend Mike tells you that he has lost the precious banana his mother got him for his birthday," you continue, making sure the child does have a good friend named Mike.

"Mike starts crying." You pause, and take out a banana you've prepared earlier. "You recall seeing this banana on the street just now. It must have flown out from Mike's window!"

"In this alien other world bananas fly," you declare, wobbling the banana up and down in midair pretending it's a toy plane.

The child stare at the banana in disbelief.

"So you go back to the street and manage to catch the banana while it is asleep. And give it back to Mike. Mike has his banana back. Everyone lives happily ever after."

And then you interrupt yourself, "except this is not Mike's banana. This is Jane's." You turn the banana to the other side, showing a name tag with *Jane* on it. You go on to explain that in this world everyone's banana has their name on it.

The cunning child suggests to remove the name tag and put on a new one with *Mike* on it. This way Mike would have no idea this is Jane's banana and think he has gotten back the one he lost. And everyone lives happily ever after, except for Jane. But no one cares about Jane.

<p style="text-align:center; font-size:1.3em">
&bull; &bull; &bull;
</p>

Throughout a child's life there are many scenarios where the concept of equivalence is more flexible than it seems. It is really up to a person to decide what equals to what and what not. If Mike thinks that is the banana he lost, *that's it*. This corresponds very nicely to the notion of equivalence in mathematics from an axiomatic perspective. Ultimately it is all up to the axioms to decide what equal to what and what not.

In plain language an axiom is a statement that is taken to be true, giving us a bottom-up process in reasoning about things. It is often expressed in a formal manner (as you'll see below) in order to remove ambiguities semantically and conceptually. That can be difficult for young children though.

The first baby step to embrace the notion of axioms is to accept that we always need a beginning in our reasoning<sup>1</sup>. Before their 10th birthdays many baby nihilists would come to the staggering realisation that the past may not have existed - perhaps everyone was created just a moment ago with memories of a common past intact as the world popped into existence like [soda water](https://www.youtube.com/watch?v=D97v6XOSLLw&feature=youtu.be&t=2s), preconfigured. In this case we need to equip them with the axiom that the past existed<sup>2</sup> so they can continue their everyday life unaffected by the realisation.

><sup>1</sup>: in order to do it in an **extremely** righteous manner. We are serious people.
>
><sup>2</sup>: Actually almost all of us humans (except for *true* nihilists) live our lives with this axiom as if our neural circuitry comes with the axiom built-in. Humans are strange


Once a child is comfortable with the concept of axioms, we can proceed to the ambiguities-ridding formalisation. With an intuitive understanding of naïve set theory, the child is ready to dissect the axiom that formalises equivalence in set theory, written in the language of first order logic:

$$\forall A \, \forall B \, (\forall x \ (x \in A \Leftrightarrow x \in B) \, \Rightarrow A = B)$$

which reads

$$\text{for any } A \text{ and } B \\ \text{ if for every } x \text{, } x \text{ is in } A \text{ if and only if } x \text{ is also in } B \\ \text{then } A = B \text{.}$$

<div class="row block-of-grey">
Here "$\in$" means <a target="_blank" href ="https://proofwiki.org/wiki/Definition:Element"><i>is an element of</i> (or <i>in</i>)</a>,
"$\forall$" means <a target="_blank" href ="http://en.wikipedia.org/wiki/Universal_quantification"><i>for any</i> (or <i>for all</i>, or <i>for every</i>, etc)</a>, and
"$\Leftrightarrow$" means <a target="_blank" href ="http://mathworld.wolfram.com/Iff.html"><i>if and only if</i></a>.
</div>

> This is known as *the axiom of extensionality*, and it is used in many formal systems of set theory (such as <i><a target="_blank" href ="http://www.math.uchicago.edu/~may/VIGRE/VIGRE2011/REUPapers/Lian.pdf">Zermelo–Fraenkel set theory</a></i> (ZF), <i><a target="_blank" href ="https://proofwiki.org/wiki/Definition:G%C3%B6del-Bernays_Axioms">von Neumann–Bernays–Gödel set theory</a></i> (NGB) and <i><a target="_blank" href ="http://math.boisestate.edu/~holmes/holmes/nf.html">New Foundations</a></i> (NF)).

Similarly, in the banana example above, we can express the banana equivalence as an axiom in the language of first order logic:

$$\forall A \, \forall B \, (name(A) = name(B) \Rightarrow A = B)$$

where $name(X)$ returns the name on the name tag of $X$.

One obvious consequence of this axiom is that if we see two bananas on the table, $banana_1$ and $banana_2$, each having the same name in its name tag, by our axiom we would have no choice but to conclude that the two bananas are equivalent.

Another detrimental consequence is that $name(A) = name(B) \Rightarrow A = B$ applies to not just bananas but **everything** in the universe (hence the <a target="_blank" href ="http://en.wikipedia.org/wiki/Universal_quantification">universal quantification, $\forall$</a> in $\forall A \, \forall B$). So if you have a tailor-made suit and a high school uniform that both have your name on it, by the axiom the tailor-made suit would be equivalent to the school uniform! But you spent almost a grand on the suit!

> This can be fixed by introducing the Universal Banana Set $U_{_{Banana}}$ that contains all bananas in the world and rewrite the axiom as
> $$\forall A \in U_{_{Banana}} \, \forall B \in U_{_{Banana}} \, (name(A) = name(B) \Rightarrow A = B)$$

<h3 class="_index">More on <i>the axiom of extensionality</i></h3>

In <i>the axiom of extensionality</i> the statement

$$\forall x \, (x \in A \Leftrightarrow x \in B) \, \Rightarrow A = B$$

applies to everything in the universe too (a consequence of the preceding $\forall A \, \forall B$), which is to say every mathematical object in the universe would be distinguished only by the elements in them. In a universe like this (such as <a target="_blank" href ="http://www.math.uchicago.edu/~may/VIGRE/VIGRE2011/REUPapers/Lian.pdf">ZF</a>'s universe), empty set is the building block of everything.

Say we have $A=\{a,b\}$ and here is an example of what $a$ and $b$ can be:

$$\begin{align} a &= \{\} =\varnothing \\ b &= \{\{\}\} =\{\varnothing\} \end{align}$$

> By the <i>axiom of extensionality</i>, we can see that:
> $$\forall x (x \in \{\{\}\} \not\Leftrightarrow x \in \{\}), \text{therefore } \{\varnothing\} \not= \varnothing$$


No matter what mathematical objects we are presented with, if we look at their elements, the elements of their elements, the elements of the elements of their elements ... we will eventually arrive at an empty set.

In this universe, natural numbers would have to be built up with empty set too. This is Zermelo's construction/definition of natural numbers:

$$\begin{align}0 &:= \{\} = \varnothing \\ 1 &:= \{0\} = \{\{\}\} = \{\varnothing\} \\ 2 &:= \{1\} = \{\{0\}\} = \{\{\{\}\}\} = \{\{\varnothing\}\}  \end{align} \\ $$
$$...$$

Addition can then be defined recursively in an conditional formula:

$$   Add(a,b) =
\begin{cases}
b  & \text{if }a = \varnothing \\
Add(a',\{b\}) \text{ where }a = \{a'\} & \text{otherwise}
\end{cases}$$

Here is what adding 2 and 3 looks like:

 $$ \begin{align} Add(2,3) & = Add(\{\{\{\}\}\},\{\{\{\{\}\}\}\}) \\ & = Add(\{\{\}\},\{\{\{\{\{\}\}\}\}\}) \\ & = Add(\{\},\{\{\{\{\{\{\}\}\}\}\}\}) \\ & =  \{\{\{\{\{\{\}\}\}\}\}\} \\ & = 5 \end{align}$$


We can say that this is the universe <i> the axiom of extensionality </i> has beautifully entailed.

> "It is said that the world is empty, the world is empty, lord. In what respect is it said that the world is empty?" The Buddha replied, "Insofar as it is empty of a self or of anything pertaining to a self: <a target="_blank" href ="http://en.wikipedia.org/wiki/%C5%9A%C5%ABnyat%C4%81">Thus it is said, Ānanda, that the world is empty</a>."
