---
layout: post
title: "Calculus Explained with pics and gifs"
metaDescription: |
    Calculus explained with images and animations. For anyone who is new to limit, differentiation and integration.
coverPainting: "Moonlit Night, 1914, Emil Nolde"
containsMaths: true
width: "935"
hn: https://news.ycombinator.com/item?id=8523150
reddit: https://www.reddit.com/r/math/comments/2kmx1k/calculus_explained_with_pics_and_gifs/
footBlock: |
    <!-- <div class="loading_maths">
    You may experience lag <br>while maths is being rendered (LaTeX).
    </div>
    <div class="fixed_top_nav">
    <div>
    <div class="inlineblock">1. Prologue + Intro </div>
    <div class="inlineblock">2. Function</div>
    <div class="inlineblock">3. Limit</div>
    <div class="inlineblock">4. Differentiation</div>
    <div class="inlineblock">5. Finding the derivative</div>
    </div>
    <div>
    <div class="inlineblock">6. Anti-differentiation</div>
    <div class="inlineblock">7. Integration</div>
    <div class="inlineblock">8. Finding the definite Integral</div>
    <div class="inlineblock">9. Finding the indefinite Integral</div>
    <div class="inlineblock">10. Bonus: Partial derivative</div>
    </div>
    </div> -->
---

<blockquote class="_index">

<p class="text-center"><b>PROLOGUE </b></p>

Among the things I managed to teach myself after dropping out of school at the age of 16 was calculus. Before I knew what calculus is, merely hearing its name gave me the impression that it is one of the most complicated things in maths, and that I could not possibly learn it by looking into the freely-available resources online. <br>
<br>
I was wrong. <br>
<br>
It turned out that back then I had a rather naive view of what mathematics is about. Understanding calculus is not hard at all. It is simply a matter of whether you have stumbled upon the right resources to learn it. If you have difficulty understanding it, you are probably learning it the wrong way.<br>
<br>
I am nowhere near being an "expert" in calculus (or anything like that). I don't really apply calculus to solve problems on a daily basis. To put it bluntly I am just a kid who writes about things he knew by heart so it may be used to help with those who are having a hard time learning it.<br>
<br>
Archy,<br>
Oct 2014<br>

</blockquote>
<div class="containing-images-of-max-80precent-width">
Calculus is just a fanciful name for the study of change in maths. Calculus in general refers to the branch of maths that was made famous by Newton in the 17th century. Don't confuse it with <a target="_blank" href="http://en.wikipedia.org/wiki/Lambda_calculus">Lambda calculus</a>, <a target="_blank" href="http://en.wikipedia.org/wiki/Propositional_calculus">propositional calculus</a>, and <a target="_blank" href="http://www.amazon.com/gp/product/0385375557/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0385375557&linkCode=as2&tag=0aarhe-20&linkId=G75NU4TLDFAYKFK2">unicorns</a>, which are completely different things.

To understand calculus, one needs to be able to visualize the concepts of <u class="go_click">function</u>, <u class="go_click">limit</u>, <u class="go_click">differentiation</u>, and <u class="go_click">integration</u>.

<p class="text-center"> ● ● ● </p>

<br/>
<h3 class="_index to_function">1.&nbsp;What is a function?</h3>
A <u>function</u> can be seen as a machine that takes in value and gives you back another value. It is what we use in maths to map numbers (input) to other numbers (output).

<p class="text-center"><img src="/img/from-chapter-1/f_machine.png"></p>

$$ f(input) = output $$

A function is normally defined by an equation like this:

$$f(x) = x+10$$

Now if you put 2 into this function you will get 12 in return.

$$f(2) = 12$$

>The set of numbers that you can put into a function is known as the <a target="_blank" href="http://en.wikipedia.org/wiki/Domain_of_a_function">domain</a> of the function. If you'd like to have a more in-depth understanding of function (e.g. its formal definition), check out <a href="https://0a.io/0a-explains-set-theory-and-axiomatic-systems-with-pics-and-gifs">my article on set theory</a>. (You will probably love it!)

<br/>
<h3 class="_index to_limit">2.&nbsp;What is a limit?</h3>
A <u>limit</u> is the number you are "expected" to get from a function (or algebraic expression) when it takes in a certain input. By "expected" it is referring to the expectation of the output when $x$ "approaches" a certain value.

Here is an example where the limit (the expected output) is the same as the actual output.

$$\lim_{x\rightarrow 2}\frac{5^x}{25} = 1$$

The limit above is often read as "the limit of $\frac{5^x}{25}$ as $x$ approaches 2 is 1". You can visualize "$x$ approaches 2" as a dot moving along the graph towards where $x = 2$ (and, as you can see, $y = 1$).

<p class="text-center"><img src="/img/from-chapter-1/limit.gif"></p>

Now take this function for example:

$$f(x) = \frac{(x^2-3x)^2}{x-3}$$

Division by 0 is undefined. We would get $undefined$ when we put 3 into the function.

$$f(3) = \frac{(3^2-3 \cdot 3)^2}{3-3} = undefined $$

This is also why there is a hole in the graph of $f(x)$.

<p class="text-center"><img src="/img/from-chapter-1/hole.png"></p>

But looking at the graph, we can see that 0 is the expected value when $x$ approaches 3.

$$\lim_{x\rightarrow 3}f(x) = 0 $$

To compute the limit when the actual output is undefined, in normal case we simply need to simplify the algebraic expression to avoid division by 0. And then put the value $x$ is approaching into the function as $x$.

$$\frac{(x^2-3x)^2}{x-3} = \frac{x^4-6x^3+9x^2}{x-3} = \frac{x^2(x-3)^2}{x-3} = x^2(x-3)$$

$$\lim_{x\rightarrow 3}\frac{(x^2-3x)^2}{x-3} = \lim_{x\rightarrow 3} x^2(x-3) = 3^2(3-3) = 0$$

If you would like to learn more about limit, feel free to check out my essay [What do we talk about when we talk about limit](what-do-we-talk-about-when-we-talk-about-limit.html).

<br/>

<h3 class="_index to_differentiation">3.&nbsp;What is differentiation?</h3>
Differentiation is a fanciful name for the process of obtaining a <u>derivative</u>. And a derivative is a function that gives you the "slope" (or rate of change) of another function at a certain point.

Basically, differentiation can be seen as a machine that takes in a function and gives you back another function.

<p class="text-center"><img src="/img/from-chapter-1/d_machine.png"></p>

We all know that the slope of a linear equation/function has a constant value. It has the same rate of change at every point on the line. So the graph of a linear equation/function is indeed a straight line.

<p class="text-center"><img src="/img/from-chapter-1/linear.png"></p>

For every value of 1 added to the input, a value of the slope (in this case, 4) would be added to the output.

<p class="text-center"><img src="/img/from-chapter-1/linear2.png"></p>

The change between input and output is always in the ratio of 1 to $m$, where $m$ is the value for the slope. Adding 0.1 to the input will trigger a change of $+0.1m$ in the output, etc.

$$\begin{align}f(5)&=8 \\\\f(6) &= f(5) + 1 \times 4 = 12 \\\\f(5.1) &= f(5)+0.1\times 4 = 8.4 \\\\f(5.02) &= f(5)+0.02 \times 4 = 8.08 \end{align}$$

But this is only true for linear function. For functions that are not linear, every point doesn't have a constant rate of change. Take a look at the function $f(x)=2^x$.

<p class="text-center"><img src="/img/from-chapter-1/nonlinear.png"></p>

$$\begin{align}f(3)&=8 \\\\f(4)&=16 \\\\f(5)&=32 \\\\ f(6)&=64 \\\\ f(7)&=128 \end{align}$$

<p class="text-center"><img src="/img/from-chapter-1/well.jpg"></p>

This is when we cannot use a constant to represent the "slope": we need to use a function that gives us different "slope" (rate of change) at different point. Or rather, we shouldn't even call it a "slope" anymore since the rate of change is not constant. We call it derivative.

<small>
If you are still trying to get your head around what it means by "the rate of change is not constant", imagine a cat at rest starts to accelerate constantly at $1m/s^2$. Three seconds later it would be moving at the speed of $3m/s$. So far the rate of change in its speed is constant. But when the cat begins to slow down, the rate of change would no longer be constant.
</small>

<h3 class="_index">4.&nbsp;How to find the derivative of a function?</h3>
The rate of change at a certain point in the function can be visualized as a straight line across the point.

<p class="text-center"><img src="/img/from-chapter-1/nonlinear2.png"></p>

<blockquote>
This is normally called the <a target="_blank" href="http://en.wikipedia.org/wiki/Tangent">tangent line at a certain point</a>.
</blockquote>

Since a non-linear function doesn't have a constant rate of change, it means that every point of the function needs a different straight line to represent the rate of change.

<p class="text-center"><img src="/img/from-chapter-1/nonlinear3.png"></p>

To find the derivative of a function is to find another function that will output a value at every point, which can be represented by a corresponding straight line.

<blockquote>
The rate of change at point $x$ is therefore sometimes also known as the derivative at point $x$.
</blockquote>

To get the straight line that represents the derivative at a certain point, one way to do it is to first locate 2 different points on the graph and draw a line across them.

<p class="text-center"><img src="/img/from-chapter-1/draw_a_straight_line.png"></p>

<blockquote>
Some people refer to this line as a <a target="_blank" href="http://en.wikipedia.org/wiki/Secant_line">secant line</a>.
</blockquote>

This line represents a value. It represents the rate of change if the 2 points belong to a linear function.

<p class="text-center"><img src="/img/from-chapter-1/belong.png"></p>

But now this function is not linear. So this line is not accurate at all if we try to use it to represent the rate of change at any one of the 2 points.

Apparently, the closer the 2 points are, the more accurate the line is in representing the rate of change at any one point.

<p class="text-center"><img src="/img/from-chapter-1/dot_closer.png"></p>

<p class="text-center"><img src="/img/from-chapter-1/dot_closer2.png"></p>

With that in mind, let's start off with a line that cuts across 2 points (A and B), and shift the line accordingly as we shift B towards A along the graph. By the time B is at the same point as A, we would have a line that can accurately represent the rate of change at point A - we would have a line that represents the derivate of the function at point A.

<p class="text-center"><img src="/img/from-chapter-1/dot_closer.gif"></p>

By turning the process above into a function (denoted by $f'(x)$), this function would be the derivative of the function of the graph (denoted by $f(x)$).

$$\begin{align}slope &=  \frac{y_B-y_A}{x_B-x_A}\\\\f'(x) &= \lim_{h\rightarrow 0}\frac{f(x+h)-f(x)}{(x+h)-x}\end{align}$$

Here we are denoting the coordinate of point B as $(x+h, f(x+h))$. And what we are doing is obtaining a value for the straight line (the "slope"/derivative) at point A as we shift point B to A by making $h$ approach 0.  So the coordinate becomes $(x+0, f(x+0))$, which is the coordinate for point A.

<p class="text-center"><img src="/img/from-chapter-1/dot_closer2.gif"></p>

<blockquote>
This is the modern definition of derivative in terms of limit.
</blockquote>

<blockquote>

Besides $f'(x)$ <sub>[aka Lagrange's notation]</sub>, here is another common notation for differentiation:

$$\frac{d}{dx}f(x)$$

<a target="_blank" href="http://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz">Gottfried Wilhelm Leibniz</a>, a great German mathematician, came up with this notation in the 17th century when he was still alive. He came up with it by seeing $dx$ as an <a target="_blank" href="http://en.wikipedia.org/wiki/Infinitesimal">infinitesimal (infinitely small)</a> change in $x$ [the input of $f(x)$]. And the single $d$ at the numerator here is supposed to be merged with $f(x)$ to indicate an infinitesimal change in $f(x)$ [the output of $f(x)$]. $\frac{d}{dx} f(x)$ is sometimes written as $\frac{dy}{dx}$, where $y$ stands for the output of $f(x)$.

This is actually a more <a target="_blank" href="http://en.wikipedia.org/wiki/Criticism_of_non-standard_analysis">ancient</a> way of defining a derivative: a derivative tells you the rate of change of the output at an infinitesimal scale as the input changes. Therefore it is $dy$ [or $d\ f(x)$] divided by $dx$ - an infinitesimal change in $f(x)$, divided by an infinitesimal change in $x$. So we are defining derivative in terms of a fraction ($\frac{dy}{dx}$) here, instead of a limit.

We call this way of thinking about derivative <a target="_blank" href="http://en.wikipedia.org/wiki/Non-standard_analysis">non-standard analysis</a>.

</blockquote>

Let's say we want to get the derivative of $x^3$. The straightforward way to do it is to compute the limit.

$$\begin{align}\frac{d}{dx} x^3 &= \lim_{a\rightarrow 0}\frac{(x+a)^3-x^3}{(x+a)-x} \\&= \lim_{a\rightarrow 0}\frac{a(3x^2+a(3x+a))}{a} \\&= \lim_{a\rightarrow 0} 3\cdot x^2+a(3x+a) \\&=3\cdot x^2+0(3x+0) \\&=3 \cdot x^2\end{align}$$

But we can speed up the process by using shortcuts like this.

$$\begin{align}\frac{d}{dx} x^n & = n(x^{n-1}) \\ \frac{d}{dx} x^3 &= 3(x^{3-1}) = 3 \cdot x^2 \end{align}$$

Here is a list of famous shortcuts for differentiation.

<div class="block-of-grey"><div class="row"><div class="col-sm-6">
$\frac{d}{dx} c = 0$<br>
<br>
$\frac{d}{dx} c f(a) = c \frac{d}{dx} f(a)$<br>
<br>
$\frac{d}{dx} x = 1$<br>
<br>
$\frac{d}{dx} cx = c$<br>
<br>
<span class="span-block">"Power rule"</span><br>
$\frac{d}{dx} x^n=nx^{(n-1)}$<br><br>
<span class="span-block">"Sum rule"</span> <br>
$\frac{d}{dx} f(x) + g(x) = f'(x) + g'(x)$<br><br>
<span class="span-block">"Product rule"</span> <br>
$\frac{d}{dx} f(x) \cdot g(x) = f'(x)g(x) + g'(x)f(x)$<br><br>
<span class="span-block">"Chain rule"</span> <br>
$\frac{d}{dx} f(g(x)) = f'(g(x))g'(x)$<br><br>
<span class="span-block">"Quotient rule"</span><br>
$\frac{d}{dx} \frac{f(x)}{g(x)} = \frac{f'(x)g(x) - g'(x)f(x)}{g(x)^2}$<br>
<br>
$\frac{d}{dx} \frac{1}{x} = \frac{-f'(x)}{x^2}$
</div><div class="col-sm-6">
$\frac{d}{dx} c_1{^{ax}} = c_1{^{ax}} ln(c_1) a$<br>
<br>
$\frac{d}{dx} e^x = e^x ln(e) = e^x$<br>
<br>
$\frac{d}{dx} x^x = x^x (1+ln(x))$<br>
<br>
$\frac{d}{dx} \log_c(x_2) = \frac{1}{x_2\ln{c}}$<br>
<br>
$\frac{d}{dx} ln(x_1) = \frac{1}{x_1}$<br>
<br>
$\frac{d}{dx} ln(|x|) = \frac{1}{x}$<br>
<br>
$\frac{d}{dx} sin(x) = cos(x)$<br>
<br>
$\frac{d}{dx} cos(x) = -sin(x)$<br>
<br>
$\frac{d}{dx} tan(x) = -sec^2(x)$<br>
<br>
$\frac{d}{dx} sec(x) = sec(x)tan(x)$<br>
<br>
$\frac{d}{dx} csc(x) = -csc(x)cot(x)$<br>
<br>
$\frac{d}{dx} cot(x) = -csc^2(x)$<br>
<br>
$c$ is a constant. $c_1$ is a constant $>0$. <br>
$n$ is an integer. <br>
$x_1$ is a variable  $>0$. <br>
$x_2$ is a variable $>0$ but $\neq 1$.
</div></div></div>

These shortcuts can all be derived from the limit of $\frac{f(x+h)-f(x)}{(x+h)-x}$ above. They are sometimes referred to as <a target="_blank" href="http://en.wikipedia.org/wiki/Differentiation_rules">"differentiation rules"</a>. Calling them "rules" certainly makes them sound like some fundamental principles in calculus, but the truth is they are merely shortcuts to speed things up.

<p class="text-center"> ● ● ● </p>

<br/>
<h3 class="to_antidifferentiation">5.&nbsp;Introducing anti-differentiation</h3>
<p class="_index">I shall now introduce a new concept called <u>anti-differentiation</u>. It is just the inverse of differentiation. It can be seen as a machine that takes in a function, $g(x)$, and give you back another function, $f(x)$, whose derivative is $g(x)$. Here, $g(x)$ is known as the <u>anti-derivative</u> of $f(x)$.</p>

<p class="text-center"><img src="/img/from-chapter-1/a_machine.png"></p>

Apparently, we will get the same derivative when differentiating functions that are only different at the part where it adds (or subtracts) a constant.

$$\begin{align}\frac{d}{dx} x^2+100 &= 2x \\ \frac{d}{dx} x^2+49 &= 2x \\ \frac{d}{dx} x^2 &= 2x \end{align}$$

As shown above, we can see that no matter what the constant is, it would always give us back the same function if we differentiate it. So, in order to be technically correct, we would need to put a placeholder, $+ C$, in the end of the function to indicate that the anti-derivative can be any function that plus some constant (or minus some constant for cases when $C$ is negative).

$$\begin{align}f(x) &= 2x \\ \frac{d}{dx} g(x) &= f(x) \\ g(x) &= x^2 + C \end{align}$$

<h3 class="_index to_integration">6.&nbsp;What is integration?</h3>
Integration is a fanciful name for the process of finding <u>integral</u>. Integral here is referring to either <u>indefinite integral</u>, or <u>definite integral</u>. (Therefore sometimes we say indefinite integration or definite integration just to be specific.)

<u>Indefinite integral</u> is fundamentally equivalent to anti-derivative. They are basically the same thing.

<p class="text-center"><img src="/img/from-chapter-1/i_machine.png"></p>

$$\begin{align}\frac{d}{dx}f(x) + C = g(x) \\\\ \int g(x)\ dx = f(x) + C \end{align}$$

<blockquote>
This is shown in the <a target="_blank" href="http://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus"> first fundamental theorem of calculus</a>.
</blockquote>

<blockquote>

The $dx$ in the equation indicates that $x$ is the input we are integrating $g(x)$ with respect to. A function can take in more than one input [e.g. $f(x,q) = x^2+q^3$] so there are times when it is crucial to specify which input we are integrating the function with respect to [e.g. Is it $x$ or $q$? Integrating the function with respect to a different input would give us a different result].

</blockquote>

<u>Definite integral</u> can be defined as the difference between 2 identical anti-derivatives that take in different inputs.

$$\int_a^b g(x)\ dx = f(b)-f(a) $$

This is often read as "the definite integral of g(x) from a to b".

<blockquote>
This definition of definite integral is derived from the <a target="_blank" href="http://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus"> second fundamental theorem of calculus</a>.
</blockquote>

<blockquote>
$a$ here is sometimes referred to as the lower limit, while $b$ is referred to as the upper limit.
</blockquote>

Here is another way to define what a definite integral is. Imagine you want to find out the area of the region under a curve in a graph.

<p class="text-center"><img src="/img/from-chapter-1/rs_fn.png"></p>

<p class="text-center"><img src="/img/from-chapter-1/rs_area.png"></p>

You can approximate the area of the region by drawing rectangles under the curve and adding the area of these rectangles together. The smaller the width of the rectangle is, the more rectangle there would be, and the more accurate the approximation would be.

<p class="text-center"><img src="/img/from-chapter-1/rs1.png"></p>

<p class="text-center"><img src="/img/from-chapter-1/rs2.png"></p>

This can actually be written into a summation. Here $n$ is the number of rectangles.

$$\sum\limits_{i=1}^n(\frac{b-a}{n})\cdot g(a+ \frac{b-a}{n}i)$$

<blockquote>
This is known as the <a target="_blank" href="http://mathworld.wolfram.com/RiemannSum.html">Riemann sum</a>. $\frac{b-a}{n}$ is the width of each rectangle, and $g(a+ \frac{b-a}{n}i)$ is the height.
</blockquote>

We would be able to find the actual value for the area if we get the limit as $n$, the number of rectangle, goes to <u>infinity</u>. Infinity here can be imagined as a theoretically enormous number that is bigger than every real number on the <a target="_blank" href="http://en.wikipedia.org/wiki/Number_line">number line</a>. This limit is another way of defining <u>definite integral</u>.

<p class="text-center"><img src="/img/from-chapter-1/ri.gif"></p>


$$\int_a^b g(x)\ dx = \lim_{n\rightarrow \infty} \sum\limits_{i=1}^n(\frac{b-a}{n})\cdot g(a+ \frac{b-a}{n}i)$$

<blockquote>

Integral defined in this way is often known as <a target="_blank" href="http://en.wikipedia.org/wiki/Riemann_integral">Riemann integral</a>. When the limit exists, we say the function is Riemann-integrable. When a function is not Riemann-integrable, it doesn't mean it is completely not integrable. It really just depends on how we define "integral". In a branch of maths known as <a target="_blank" href="http://en.wikipedia.org/wiki/Real_analysis">real analysis</a>, integration is normally defined <a target="_blank" href="http://en.wikipedia.org/wiki/Lebesgue_integration">in the Lebesgue's way</a>, different from the Riemann's way above. Functions that can be integrated in the Lebesgue's way are Lebesgue-integrable.  One typical example for a function that is not Riemann-integrable but Lebesgue-integrable is the <a target="_blank" href="http://en.wikipedia.org/wiki/Nowhere_continuous_function">nowhere continuous function</a>.

</blockquote>

In the limit above, we are getting the area of region underneath the graph of $g(x)$ from $A$ to $B$. And this is actually equivalent to “stacking up” the rate of changes of its anti-derivative, $f(x)$, at every point from $A$ to $B$. Therefore we are actually getting the difference between $f(a)$ and $f(b)$. This is why definite integral of $g(x)$ is able to give us the area from point $A$ to $B$ in the graph of $g(x)$: definite integral is giving us the overall change in value from $f(a)$ to $f(b)$.

<p class="text-center"><img src="/img/from-chapter-1/1d_2d_1.png"></p>

<p class="text-center"><img src="/img/from-chapter-1/1d_2d_2.png"></p>

<p class="text-center"><img src="/img/from-chapter-1/1d_2d_3.png"></p>

<blockquote>

This is precisely why $dx$ is there as a part of the integral notation $\int f(x)\ dx$. In the logic that differentiation is defined as $\frac{d f(x)}{dx} = g(x)$, we can see that $g(x)\ dx = d f(x)$, where $d$ is an infinitesimal change interpreted as $\frac{1}{\infty}$. The relation of every $x$ and $y$ in the function $f(x)$ [how $x$ changes affects $y$ changes, vice versa] can therefore be constructed by indeterminately<sup>1</sup> summing up<sup>2</sup> the infinite number of infinitesimal "slices" of its derivative $g(x)$, with each infinitesimal "slice" being a nonspecific<sup>3</sup> $y$<sup>4</sup> multiplied by an infinitesimal change in $x$, $dx$, that governs the value of the corresponding $y$.

<small>
indeterminately<sup>1</sup>: this is why it is called <i>indefinite</i> integration. We are getting a result in terms of a variable, rather than getting an actual value.
summing up<sup>2</sup>: this is what $\int$ indicates in the notation.
nonspecific<sup>3</sup>: thus it is <i>indefinite</i> integration. What matters is the relation in terms of $x$, not the actual value.
$y$<sup>4</sup>: this $y$ is the $y$ from $g(x)$.
</small>

</blockquote>

<br />
<h3 class="_index">7.&nbsp;How to find the definite integral of a function from $a$ to $b$?</h3>

Computing the limit of a Riemann sum can really be a tedious thing to do. So what we normally do is to find the indefinite integral first before putting $a$ and $b$ into the indefinite integral and getting the difference between them (using the definition of definite integral from the 2nd fundamental theorem of calculus mentioned above).

$$g(x) = x^4 \\ \int g(x)\ dx =\frac{x^5}{5} + C \\ \int_2^3 g(x)\ dx = \frac{3^5}{5}-\frac{2^5}{5} = 42.2 $$

Of course, it is <a target="_blank" href="http://math.stackexchange.com/q/710175/65082">not always necessary to get the indefinite integral first (it is possible to arrive at an answer after some transformations of the definite integral)</a>.

<br />
<h3 class="_index">8.&nbsp;How to find the indefinite integral (anti-derivative) of a function?</h3>

Apparently, we can reverse the differentiation shortcuts/rules above and turn them into integration shortcuts/rules. But sometimes a little bit of creativity is required for integration. Let's take a look at the reverse-<a target="_blank" href="http://en.wikipedia.org/wiki/Chain_rule">chain-rule</a>.

$$ f'(g(x))g'(x) = \frac{d}{dx} f(g(x))$$

Things don't always come in a perfect bundle. To use reverse-chain-rule, most of the time we need to see the algebraic structure as $f'(g(x))$ and compute $g'(x)$ on our own.

$$f'(g(x)) = \frac{1}{g'(x)} \cdot \frac{d}{dx} f(g(x))$$

Here is an example. Let's say we need to solve this indefinite integral.

$$\int \frac{3}{(2x+1)^2} dx$$

We can see $f'(x)$ as $\frac{3}{x^2}$ and $g(x)$ as $2x+1$.

$$\int \frac{3}{(2x+1)^2} dx = \int f'(g(x)) dx$$

What we need to do now is to obtain $f(x)$ by integrating $f'(x)$, and obtain $g'(x)$ by differentiating $g(x)$.

$$f(x) = \int f'(x)\ dx = \int \frac{3}{x^2} \ dx= \frac{-3}{x}$$

$$g'(x) = \frac{d}{dx} g(x) = \frac{d}{dx} 2x+1 = 2$$

$$\begin{align}\int \frac{3}{(2x+1)^2} dx&= \frac{1}{g'(x)} \cdot f'(g(x)) \\&= \frac{1}{2} \cdot \frac{-3}{2x+1} + C \end{align}$$

So if we need to solve the definite integral $\int_0^1 \frac{3}{(2x+1)^2} dx$, we just put the two values into the indefinite integral and get the difference like this:

$$\begin{align}\int_a^b \frac{3}{(2x+1)^2}\ dx &= \frac{1}{2} \cdot ( \frac{-3}{2 \cdot b +2} - \frac{-3}{2 \cdot a +2}) \\\\ \int_0^1 \frac{3}{(2x+1)^2}\ dx &= \frac{1}{2} \cdot (\frac{-3}{2 \cdot 1 +2} - \frac{-3}{2 \cdot 0 +2}) \\&= \frac{1}{2} \cdot 2 = 1 \end{align}$$

<blockquote>
This technique (reversing chain rule) is known as <a target="_blank" href="http://en.wikipedia.org/wiki/Integration_by_substitution">integration by substitution</a>, or, $u$-substitution, where $g(x)$ is often written as $u$.
</blockquote>

<blockquote>

The truth is: finding an indefinite integral can be really hard sometimes. Aside from the fact that there isn't an "absolute" way of humanly doing it, there is actually a rigorous mathematical reason behind it. The set of functions we humans love to do differentiation on is normally closed under differentiation. This means if we differentiate a function, we should anticipate to get back a similar function (e.g. differentiating  an <a target="_blank" href="http://en.wikipedia.org/wiki/Elementary_function">elementary function</a> gives us back an elementary function). But it is not the case for integration. It is possible to integrate an elementary function, and get a non-elementary function in return (e.g $\int e^{x^2} dx$ ).
And as we can see, definite integration is more of a local operation, while indefinite integration is a global operation. This is why sometimes it makes more sense to solve a definite integral using transformations and techniques, arriving at the answer without having to compute the indefinite integral. There are respected individuals (e.g. <a target="_blank" href="http://math.stackexchange.com/users/19661/vladimir-reshetnikov">Vladimir Reshetnikov</a>, <a target="_blank" href="http://math.stackexchange.com/users/97378/cleo">Cleo</a> on Maths StackExchange) who are amazingly good at it.

</blockquote>

<p class="text-center"> ● ● ● </p>

<br/>

<h3 class="_index">9.&nbsp;Bonus: Partial derivative</h3>

When a function has more than one input value, we call it a multivariable function.

$$f(x_1,x_2) = 3x_1+x_2$$

<blockquote>

The graphs of functions that take in 1 input are lines in a 2D plane, while the graphs of functions that take in 2 inputs are surfaces in a 3D space, etc.

</blockquote>

To differentiate functions like this, we find the derivative with respect to one of the variables (denoted by $x_i$ in this case). This type of derivative is known as a partial derivative.

$$\frac{\partial}{\partial x_i}f(x_1,x_2..x_i..x_n)$$

Finding a partial derivative is very similar to finding a normal derivative: we get the limit as x approaches 0. But instead of having just $f(x+a)-f(x)$, we have $f(x_1,x_2..x_i+a..x_n)-f(x_1,x_2..x_i..x_n)$, since the function takes in more than one input.

$$\begin{align}&\ \ \ \frac{\partial}{\partial x_i}f(x_1,x_2..x_i..x_n) \\ &= \lim_{a\rightarrow 0}\frac{f(x_1,x_2..x_i+a..x_n)-f(x_1,x_2..x_i..x_n)}{(x_i+a)-x_i}\end{align}$$

To do a partial differentiation, we simply pretend that other variables in the function are constants as we differentiate the function with respect to the chosen input. Here is an example.

$$\begin{align}f(x,a,b,c) &= x^5+2ax+10b^{9}+log_{a}(c) \\\\ \frac{\partial}{\partial x} f(x,a,b,c) &= \frac{\partial}{\partial x} (x^5+2ax+10C^{9}+log_{C}(C)) \\ &= \frac{\partial}{\partial x} (x^5+2Cx+C) \\ &= 5x^4+2C \\ &= 5x^4+2a  \end{align}$$

<small>added on 29th Oct, at 5PM (SG Timezone, +8):
[edited a couple of times around 8 30PM to express the idea of tangent space in a more clear and concise way. And corrected some mistakes I made in the analogy of tangent plane.]
</small>
Upon differentiating the function, we need to replace the remaining $C$ back with the corresponding variables.

$$\begin{align} g(x,a,b,c) &= \frac{\partial}{\partial x} f(x,a,b,c)  \\ &= 5x^4+2C = 5x^4+2a \end{align}$$

Basically, $\frac{\partial}{\partial x} f(x,a,b,c)$ tells you about how an infinitesimal change in the input $x$ would affect the output $f(x,a,b,c)$ when $a$, $b$ and $c$ remains unchangeable. To get the numerical value for the derivative, it is sometimes necessary to put an actual value into these variables.

$$\begin{align} g(1,2,0,0) &= 629 \\g(1,3,0,0) &= 631 \end{align}$$

The derivative of functions with 1 input at one point ($x,f(x)$) can be represented by a <a target="_blank" href="http://mathworld.wolfram.com/TangentLine.html">tangent lines</a> when $x$ is specified. Meanwhile, the representation for the derivative of functions with 2 inputs at points($x_1,x_2,f(x_1,x_2)$) where $x_1$ is specified is a plane (<a target="_blank" href="http://mathworld.wolfram.com/TangentPlane.html">tangent plane</a>), for functions with 3 input it is a <a href="http://en.wikipedia.org/wiki/Three-dimensional_space"> 3D space</a> (3D <a target="_blank" href="http://en.wikipedia.org/wiki/Tangent_space">tangent space</a>), etc.

<blockquote>

In normal differentiation (single-input functions). To obtain a numerical value for the rate of change at a certain point is to obtain the slope of the tangent line at that point: there is only 1 slope because there is only one single line going across one single <a href="http://en.wikipedia.org/wiki/Point_(geometry)">point</a>, $(x,f(x))$. To do it we just need to specify $x$ since $f(x)$ is only dependent on $x$.

The graph of a two-variable function is a 2 dimensional surface in 3 dimensional space, so each point can be represented by $(x_1,x_2,f(x_1,x_2))$, where the value of $f(x_1,x_2)$ is dependent to both $x_1$ and $x_2$.

The derivative with respect to any one of the variable (e.g. $x_1$) when the variable (this case, $x_1$) is specific is a value dependent to $f(x_1,x_2)$ and $x_2$. So it is no longer a tangent line across one point, but a tangent plane across infinitely many points whose $x_1 = \text{the specific value}$. This is why, if we want to get an actual numerical value for the slope, we need to specify $x_2$.

The same applies to tangent of higher dimensions.

</blockquote>
</div>

<div class="block-of-grey">If you are interested in learning more about calculus, check out <a target="_blank" href="https://www.coursera.org/learn/calculus1">Calculus One</a> by <a target="_blank" href="https://www.coursera.org/instructor/jimfowler">Jim Fowler</a> on <a target="_blank" href="http://coursera.com/">Coursera</a>. It is truly amazing for beginners. For courses that cover more advanced topics in calculus and other areas of maths that use calculus, check out the ones by <a target="_blank" href="http://ocw.mit.edu/index.htm">MIT OpenCourseWare</a>. You'd probably find <a target="_blank" href="http://tutorial.math.lamar.edu/Classes/CalcI/CalcI.aspx">Pauls Online Notes</a> useful too.</div>
