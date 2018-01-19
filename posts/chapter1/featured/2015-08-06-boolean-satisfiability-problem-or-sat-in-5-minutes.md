---
layout: post
title: "The Boolean Satisfiability Problem [S<small>AT</small>] and S<small>AT</small> solvers in 5 mins* (or&nbsp;more)"
containMaths: true
coverPainting: "Untitled, 1962, Larry Bell"
footBlock: |
    <script>
    (function(){
    var bqt = document.getElementById("blockquoteToggle");
    var bqHidden = false;
    var x = document.getElementsByTagName("blockquote"),
        xx =  document.getElementById("introduction");
    bqt.addEventListener("click",function(){
        if(!bqHidden){
            bqt.innerHTML = "Click here to show the introduction and all <i> Blocks of Grey Text</i>."
            for(var i = 0; i < x.length; i++){
                x[i].style.display = "none";
            }
            xx.style.display = "none";
        }else{
            bqt.innerHTML= "Click here to hide the introduction and all <i> Blocks of Grey Text</i>."
            for(var i = 0; i < x.length; i++){
                x[i].style.display = "block";
            }
            xx.style.display = "block";
        }
        bqHidden = !bqHidden;
    });
    })();
    </script>
---

<div class="row d_shortcuts">This is a quick sum-up on (and a beginner guide to) the Boolean Satisfiability Problem.</div>

<small><sup>*</sup>In 5 minutes if one skips the introduction and the words in <i>the Blocks of Grey Text</i>.<br>
<a id="blockquoteToggle">Click here to hide the introduction and all <i> Blocks of Grey Text</i>.</a>
<br>
Word count includes only words <u>not</u> in <i>the Blocks of Grey Text</i>.</small>

<div id="introduction">
<h3 id="small0th-minutesmall-introduction-small-classwordcount386nbspwordssmall"><small>0th minute</small>: Introduction <small class="wordCount">382&nbsp;words</small></h3>

<p>In CS, when we talk about a <strong>problem</strong>, we are referring to a set of questions, where each question is an instance of the problem. “Is 7 a prime number?” and “Is 2513414231 a prime number?” are both instances of a problem that can be expressed as: “Is n a prime number?”</p>

<p>Problems can be classified based on the time or space complexity of the algorithms used to compute an answer for every instance of the problem. Among the most easy-to-understand <strong>NP-complete</strong> problems is the <strong>Boolean Satisfiability Problem</strong> (aka S<small>ATISFIABILITY</small>, or S<small>AT</small>). </p>

<p>The <strong>Boolean Satisfiability Problem</strong> is also the first problem proven<sup>{2}</sup> to be NP-complete. A problem is <b>NP-complete</b> if it belongs to the set (or <a href="https://en.wikipedia.org/wiki/Class_(set_theory)">“class”</a> if you prefer) of the hardest problems in <strong>NP</strong> - hardest in the sense that every problem ever exists in NP can be <a href="https://en.wikipedia.org/wiki/Polynomial-time_reduction">reduced</a> to them. (Thus being able to solve a NP-complete problem is equivalent to being able to solve every problem in NP). </p>

<p class="text-center"><img style="max-width:400px" src="/assets/img/SAT.jpg"></p>

<blockquote>
  <p><strong>NP</strong> is the set of decision problems for which there exists a non-deterministic Turing machine that would output a value 1, or 0, after at most O(n<sup>k</sup>) steps where k is some constant and n is the complexity of the input. We often refer to such number of steps (or running time) as polynomial, hence Non-deterministic Polynomial time, or NP. </p>

  <p>A Turing machine is basically a mathematical object that formalizes that idea of algorithm (<a href="http://www.cs.virginia.edu/~robins/Turing_Paper_1936.pdf">in Turing model’s of computation</a>). A non-deterministic Turing machine (NDTM) is, in simple words, a theoretical Turing machine that can, in a sense, engage in all possible computations while taking the same time/step as a deterministic Turing machine. (<a href="http://www.encyclopediaofmath.org/index.php/Probabilistic_Turing_machine">Note: nondeterministic doesn’t mean probabilistic.</a>) <b>One way I like to think about a non-deterministic Turing machine is that it can only exist in a universe where time is a 2 dimensional plane.</b> A deterministic Turing machine (DTM) on the other hand computes in one-dimension time (and is defined in terms of a <strong>transition function</strong>, unlike NDTM which relies on a <strong>transition relation</strong>).</p>

  <p>Besides the Boolean Satisfiability Problem, the prime factorization problem, “Given $X$ and $N$, where $1&lt; X &lt; N$, is there a $d$ where $X &lt; d &lt; N$ and $d$ a prime factor of $N$?”, is also a problem in <strong>NP</strong>.</p>

  <p>Decision problems<sup>{1}</sup> are problems concerning only with the "trueness" of some statement. That is to say that algorithms for solving decision problems would output either <code>True</code> or <code>False</code> (often in binary value). The problem above is a decision problem, and so is the problem “Is X a prime number?”</p>

  <p>I would be diving deeper into computational complexity in an upcoming essay. If you are interested in theoretical CS, I recommend you checking these out:</p>

  <ol>
    <li>
      <p><a href="http://www.amazon.com/gp/product/0521424267/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0521424267&amp;linkCode=as2&amp;tag=0aarhe-20&amp;linkId=PHEETUYVXM6OG77J">Computational Complexity: A Modern Approach</a> (Book)</p>
    </li>
    <li>
      <p><a href="http://www.amazon.com/gp/product/052188473X/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=390957&amp;creativeASIN=052188473X&amp;linkCode=as2&amp;tag=0aarhe-20&amp;linkId=PDEIBZRCW7SZRZHB">Computational Complexity: A Conceptual Perspective</a> (Book)</p>
    </li>
    <li>
      <p><a href="http://www.amazon.com/gp/product/0716710455/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0716710455&amp;linkCode=as2&amp;tag=0aarhe-20&amp;linkId=SAE3OYM4X44YGLQS">Computers and Intractability: A Guide to the Theory of NP-Completeness</a> (Book)</p>
    </li>
    <li>
      <p><a href="https://complexityzoo.uwaterloo.ca/">Complexity Zoo</a> (Website)</p>
    </li>
    <li>
      <p><a href="https://rjlipton.wordpress.com/">Gödel’s Lost Letter and P=NP</a> (Website)</p>
    </li>
  </ol>
</blockquote>

<p>You can just think of <b>NP</b> as the set of problems whose solution can be <b>verified</b> by an efficient algorithm. And that is different from <b>P</b>, the set of problems whose solution can be <b>found</b> by an efficient algorithm. We can easily prove that each problem in P is also in NP, but we are not sure whether it is true that each problem in NP is too in P. </p>

<script type="math/tex; mode=display"> (P \subseteq NP) \text{ Duh! }  \\ (NP \subseteq P) \text{ ???? }</script>

<p>Take the prime factorization problem for example. At the moment the most efficient algorithm <a href="http://www.math.vt.edu/people/brown/doc/briggs_gnfs_thesis.pdf">(for integers larger than 100 digits)</a> we can implement into pre-existing computers<sup>{3}</sup> has a sub-exponential running time. But we can’t say for certainty that the it is not in P. Many brave men and women have tried but failed to come up with a polynomial time algorithm for every instance of the problem. It may simply be the case that we, members of the Human species, are not intelligent enough to design such algorithm. (Or it may be that $NP \not= P$ and the prime factorization problem is simply not in P, in which case we have yet to prove it.)</p>

<p>If we ever come up with an algorithm that can solve all Boolean Satisfiability Problem in polynomial time, it would mean that $P = NP$ since any problem in NP can be reduced into the Boolean Satisfiability Problem. <a href="https://news.ycombinator.com/item?id=2121727">(Here’s a courageous attempt.)</a></p>

<blockquote>
  <p>statement<sup>{1}</sup>: More formally, a <strong>decision problem</strong> is defined as a set of strings, $L$ composed by an alphabet $\Sigma$, where there exists a Turing Machine TM,</p>

  <script type="math/tex; mode=display"> x \in L \Leftrightarrow TM(x) = 1</script>

  <p>So, by the formal definition, <strong>the set of prime numbers is a decision problem</strong>. And this decision problem is known as PRIMES. In 2002, it was <a href="https://www.cs.auckland.ac.nz/~msta039/primality_v6.pdf">proven that PRIMES is in P</a>.</p>

  <p>Here $L$ is often referred to as <a href="https://en.wikipedia.org/wiki/Formal_language">a language over $\Sigma$</a>.</p>

  <p><sup>{2}</sup>: First proven by Cook in his 1971 paper, <a href="https://www.cs.toronto.edu/~sacook/homepage/1971.pdf"><em>The complexity of theorem-proving procedure</em></a>. It was later known as the <a href="https://en.wikipedia.org/wiki/Cook%E2%80%93Levin_theorem">Cook–Levin theorem</a>.</p>

  <p><sup>{3}</sup>: By “pre-existing computerese I mean classical ones that don’t rely on quantum mechanics (for computation). The most efficient factorization algorithm we know of in the 21st century is the one described in <a href="http://arxiv.org/pdf/quant-ph/9508027v2.pdf">Shor’s 1995 paper</a>, a super-polynomial time algorithm that makes use of <a href="https://en.wikipedia.org/wiki/Quantum_Fourier_transform">quantum Fourier transform</a>. The sad (or <a href="https://edwardsnowden.com/2014/01/04/penetrating-hard-targets-and-owning-the-net/">good</a>) news is that there yet exists a quantum computer powerful enough to have <a href="https://en.wikipedia.org/wiki/RSA_problem">any practical uses of the algorithm</a>.</p>

</blockquote>
</div>

###<small>1st minute</small>: What is the Boolean Satisfiability Problem? <small class="wordCount">334&nbsp;words</small>

The **Boolean Satisfiability Problem** (or S<small>AT</small>) is the problem of determining if a proposition statement<sup>*</sup> is **satisfiable**. A propositional statement is satisfiable when it is possible to assign some true-false values for the variables in the statement such that the statement yields `True`. Otherwise the statement is unsatisfiable.

A propositional statement is simply a string made up of variables, brackets and these 3 symbols:

<div class="row d_shortcuts text-center">
$\neg$ with the meaning <i>not</i>.<br> $\neg True = False $<br>
$\land$ with the meaning <i>and</i>.<br> $ False \land True = False $<br>
$\lor$ with the meaning <i>or</i>.<br> $ False \lor True = True $ <br>
</div>

These symbols are also known as logical connectives. They're arranged in the order of precedence above. Here is an example of a propositional statement:

$$ d \lor (a \land b \land (c \lor d \land \neg a))$$

And here is an instance of The Boolean Satisfiability Problem:

$$\text{Is }d \lor (a \land b \land (c \lor d \land \neg a)) \text{ satisfiable?}$$

The answer is yes, it is satisfiable. One solution:

<div class="row d_shortcuts">
$a$ assigned: Any value<br>
$b$ assigned: Any value<br>
$c$ assigned: Any value<br>
$d$ assigned: True<br>
</div>

Meanwhile, the answer to the question

$$\text{Is } a \land \neg a \land b \land c \land d \text{ satisfiable?}$$

is no, it is unsatisfiable. That is because there is no value we can assign to $a$ such that $a \land \neg a$ would yield `True`, and therefore it is impossible for the entire statement to yield `True`.

><sup>*</sup>: More technically, it is known as a "formula" or "wff" ("well-formed formula"). "Well-formed" in the sense that it is syntactically correct such that it can be interpreted in our context. "Formula" in the sense that it is something formed by putting symbols together.
>
> $$ wff \subset statement $$
>
>"$\land\land\land A \land \lor B B B$" for example is a statement but not a formula since it is not well-formed.
>
>p.s. In order to know how the symbol works here we rely on its association with the meaning of some lexical item in English, like the word "not" in the case of $\neg$, and our intuitive understanding of how "not" functions. We need to keep in mind that the symbols by themselves have no absolute meaning: some are even interpreted differently in different systems of logic ([classical logic](http://ncatlab.org/nlab/show/classical+logic) vs [intuitionistic logic](http://ncatlab.org/nlab/show/intuitionistic+logic) for example). But that is outside of the scope of this essay, and so for the moment let's just take it as that these symbols indeed mean what the words mean.
>
>p.s. Often in proposition logic, you would encounter these symbols as well:
>
> <div class="row d_shortcuts text-center"> $\Rightarrow$ with the meaning <i>imply (if .. then ..) </i>. [$\Leftarrow$ for different direction]<br> $ (False \Rightarrow True) = True $<sup>{4}</sup><br>
$\Leftrightarrow$ with the meaning <i>if and only if (two-way implication)</i>.<br>$ (False \Leftrightarrow True) = False $ </div>
>
> They are omitted because statements that use these symbols can be rewritten using the basic Boolean operations: $\lor$, $\land$, and $\neg$.
>
> $$ a \Rightarrow b \text{ can be rewritten as } \neg a \lor b  \\ \text{without changing its satisfiability}$$
>
> Since our main concern is satisfiability here, we'd like to be minimalist, and exclude symbols from our alphabet that are not necessary.
>
>p.s. In model theory, we can view the assignment of booleans values to the variables in a statement as **an interpretation** of the statement, and we write
>
>$$I \models F$$
>
>where $I$ is the interpretation and $F$ is the statement (or more technically, formula<sup>{1}</sup>) and we say $I$ is a model of $F$. With this in mind, we can say that two formulas $F_1$ and $F_2$ are equivalent as long as each model of A is a model of B, and vice versa.
>
> $$F_1 \equiv F_2 \Leftrightarrow (\forall I (I \models F_1) \Leftrightarrow (I \models F_2))$$
>


S<small>AT</small> is a member of problems known as the **Constraint Satisfaction Problems (or CSPs)**. CSP is basically a generalization of S<small>AT</small>, where the followings are both to be defined:

1. the values a variable can be assigned to (often referred to as *domain*)  

2. the constraints on what makes a satisfiable statement

Another member of CSPs is the <a href="http://www.eecs.berkeley.edu/~sseshia/pubdir/SMT-BookChapter.pdf">**Satisfiability Modulo Theories Problem (or SMT)**</a>, where, instead of proposition statements (like what we are dealing with in S<small>AT</small>), it is the problem of determining the satisfiability of first-order logic statements, and whether a first-order logic statement is satisfiable depends on the theory of our choice.

Let's say the theory of our choice is linear arithmetic, we would say that the statement below is satisfiable if variables can take in any value in $\mathbb{R}$, the set of real numbers.

$$2a + 4b = 7$$

It is, however, unsatisfiable if we define $\mathbb{Z}$, the set of integers, to be the domain instead.

<p class="text-center"> ● ● ● </p>

###Extra <small class="wordCount">(skip this if you want) 213&nbsp;words</small>

When a satisfiable statement always yields `True` no matter what the value the variables take (every set of true-false assignments to the variables is a solution), we call it a **tautology**. Here is one:

$$ a \lor \neg a $$

Interestingly, the problem of determining if some statement is not a tautology can be easily reduced into the Boolean Satisfiability Problem.

Since a tautology always yields `True`, negating a tautology would give us a statement that always yields `False`, and that, my friend, is an unsatisfiable statement. The problem of determining if some statement, V, is not a tautology is thus equivalent to the problem of determining if the negation of the statement, V, is satisfiable. And that means the "Not-Tautology problem" is also in NP.

On the other hand, the Boolean Unsatisfiability Problem is in what's known as <b>co-NP</b>, and so is the problem of determining if a statement is a tautology.

**co-NP** can be thought of as the set of problems whose non-solution can be verified efficiently using a Non-Deterministic Turing Machine. At the moment "NP = co-NP?" remains an open question.

>Formally, a co-NP problem is a language<sup>*</sup> over some alphabet Σ, for which there exists Non-Deterministic Turing Machine that would output 0 in polynomial time, after taking in any string from the language as input.
>
>Note that that is different from a definition of a NP problem, a language<sup>*</sup> for which there exists exists Non-Deterministic Turing Machine that would output 1 in polynomial time, after taking in any string from the language as input.
>
> \* : If you are confused by the usage of the word "language", read {1} (in the *block of Grey Text*) in 0th minute: Introduction.
>
> All problems in P are in (NP $\cap$ co-NP). Among other known problems in (NP $\cap$ co-NP) is the prime factorization problem.
>

<p class="text-center"> ● ● ● </p>

From the 2nd minute on we'd be

1. using the word **formula** (instead of "statement") [For the reason, see <sup>{1}</sup> in 1st minute: What is the Boolean Satisfiability Problem? if you haven't]

2. using **S<small>AT</small>** as the abbreviation for the Boolean Satisfiability Problem

###<small>2nd minute:</small> Classifying S<small>AT</small> <small class="wordCount">354&nbsp;words</small>

We can classify instances of S<small>AT</small> based on what form the formulas are in.

**3S<small>AT</small>** is the instances of S<small>AT</small> where the formulas are in the form

$$\bigwedge_{j \in J} ( a_j \lor b_j \lor c_j ) $$

where $a_j,b_j,c_j$ are called **literals**. A literal is either an atomic formula or its negation. One example:

$$ ( x \lor \neg y \lor \neg x ) \land ( x \lor \neg x \lor z ) $$

>An atomic formula is a formula that has no deeper structure: such as "$a$" in "$a \land b$".
>
>$\bigwedge$ works the same as a loop. We can arrive at the formula above by taking $J = \\\{ 1,2 \\\} \text{ and }a_1 = a_2 = x, b_1 = \neg y, b_2 = c_1 = \neg x, c_2 = z $.
>
>$$\begin{align} &\bigwedge_{j \in J} ( a_j \lor b_j \lor c_j )  \\ =& ( a_1 \lor b_1 \lor c_1 ) \land ( a_2 \lor b_2 \lor c_2 ) \\ =& ( x \lor \neg y \lor \neg x ) \land ( x \lor \neg x \lor z ) \\ \end{align}$$
>

This is also known as the <b>Conjunctive<sup>{1}</sup> Normal Form (CNF)</b>. To be more precise, the form above is called <b>3CNF</b> (because it has 3 literals in each clause<sup>{2}</sup>). <b>kCNF</b> is the type of CNF with k number of literals in each clause.

$$\begin{align}  \bigwedge_{j \in J} ( a_j \lor b_j \lor c_j ) &\text{ is 3CNF} \\ \bigwedge_{j \in J} ( a_j \lor b_j) &\text{ is 2CNF}  \end{align}$$


More generally, any formula is in CNF as long as it's of the form:

$$\bigwedge \bigvee x \text{ is CNF}$$

Clauses in a general CNF formula need not contain the same number of literals. Examples:

$$( a \lor b) \land ( c \lor d ) \land (a \lor c \lor b \lor \neg b) \land (\neg a \lor c \lor d) \\ ( a \lor b ) \land c$$


Instances of S<small>AT</small> on statements in ***k*CNF** are called ***k*S<small>AT</small>**, where *k* is a natural number. Great thing about 3S<small>AT</small> is that all instances of S<small>AT</small> are [reducible](http://web.mit.edu/~neboat/www/6.046-fa09/rec8.pdf) into 3S<small>AT</small>. And that means 3S<small>AT</small> is also NP-complete. **2S<small>AT</small>**, on the other hand, is S<small>AT</small> in 2CNF and it is not NP-complete.


2S<small>AT</small> is in P (and [NL-complete](https://en.wikipedia.org/wiki/NL-complete)) and not all instances of S<small>AT</small> can be reduced into 2S<small>AT</small> (or else we can conclude that P = NP).

Lastly, we shall talk about **HORN-S<small>AT</small>**, instances of S<small>AT</small> with Horn formula. When each clause contains at most 1 positive literal, we call it a **Horn<sup>{3}</sup> formula**. Here are some examples:

$$( a \lor \neg b) \land ( c \lor \neg d ) \land (\neg a \lor \neg c \lor \neg b) \land \neg x \\ x \land y \land z \land (\neg d \lor \neg x \lor \neg i \lor \neg y) \\ ( a \lor \neg b ) \land c$$

<div class="text-center">
<img style="max-width:300px" src="/assets/img/such horn.jpg">
</div>

Not only is Horn-S<small>AT</small> in P (just like 2S<small>AT</small>), it is also [P-complete](https://en.wikipedia.org/wiki/P-complete), and [solvable in linear time](http://www.sciencedirect.com/science/article/pii/0743106684900141). ([That doesn't mean P = LIN though.](http://cs.stackexchange.com/questions/45002/is-horn-sat-in-lin-if-so-why-is-that-not-an-indication-that-p-lin))



>
> <sup>{1}</sup> Conjunctive since it's formed by $\land$. It yields `False` if one of its clauses yields `False`.
>
> <sup>{2}</sup>: Formally a **clause** is defined to be a **disjunction** of literal:
>
> Dejunctive since it's formed by $\lor$. It yields `True` if one of its literals yields `True`.
>
> <sup>{3}</sup> Initially in propositional logic, a Horn clause is in the form
>
> $$ (\bigwedge_{a \in A} a) \Rightarrow b $$
>
> In S<small>AT</small>, since we don't use the $\Rightarrow$ symbol, the above is re-written as:
>
> $$ b \lor (\bigvee_{a \in A} \neg a )$$
>
> or in the case that $b$ is an absolute `True`, we have $(\bigwedge_{a \in A} a) \Rightarrow True$, which gives us
>
> $$ \bigvee_{a \in A} \neg a$$
>
> or in the case that $\bigvee_{a \in A}$ is an absolute `True`, we have $True \Rightarrow b$, giving us
>
> $$ b $$

This pretty much sums up generally how instances of S<small>AT</small> are classified. If you are interested in classifying S<small>AT</small> in a more 'hard core' manner (viewing S<small>AT</small> itself as a classification problem), [check out this 2008 paper by David Devlin and Barry O’Sullivan](http://www.cs.ucc.ie/~osullb/pubs/classification.pdf).

Perhaps you've also heard of problems with names like [MAXS<small>AT</small>](https://en.wikipedia.org/wiki/MAX-3SAT) and [#S<small>AT</small>](https://en.wikipedia.org/wiki/Sharp-SAT). Instances of these problems are not really instances of S<small>AT</small>; it'd be more accurate to say that they are variations of S<small>AT</small>. MAXS<small>AT</small> is the problem of finding a boolean assignment satisfying most clauses in a CNF formula, and #S<small>AT</small> is the problem of counting the number of satisfying assignments.


###<small>3rd minute :</small> S<small>AT</small> Solvers - General Overview <small class="wordCount">337&nbsp;words</small>

There are many known algorithms capable of solving some (but not all) instances of S<small>AT</small> pretty efficiently. We often refer to them as <b>S<small>AT</small> solvers</b>. In general they can be classified into **complete** or **incomplete**.

Complete S<small>AT</small> solvers would always return either `satisfiable` or `unsatisfiable`. Incomplete S<small>AT</small> solvers, on the other hand, are less reliable - they may be unable to prove unsatisfiability (when it's impossible for the formula to yield `True`), or unable to find a solution when the formula is satisfiable - but perhaps a lot more useful in scenarios when the instances of S<small>AT</small> cannot be solved by complete algorithms in reasonable time.

>To make thing simpler S<small>AT</small> solvers normally take in formulas in CNF form encoded in [DIMACS](http://www.satcompetition.org/2009/format-benchmarks2009.html) format as inputs. Suppose we have a formula that isn't in CNF form, we would first [convert it into CNF form](http://stackoverflow.com/a/11582917/2041954) before inputting it into a S<small>AT</small> solver.


To compare the performance between different S<small>AT</small> solvers, we give them a large set of formulas and see how well each performs (e.g. by the total time taken, or number of formulas solved in n-minutes, or using [a methodology called *careful ranking*](http://link.springer.com/chapter/10.1007%2F978-3-642-21581-0_25#page-1)). The set of formulas is often referred to as a benchmark instance. A solver previously lost to another solver may do better if different type of benchmark instances are used.

In [the S<small>AT</small> 2014 competition](http://satcompetition.org/2014/index.shtml), [Lingeling](http://fmv.jku.at/lingeling/) beat all the other solvers when evaluated using application-type benchmark instances, but lose to [glucose](http://www.labri.fr/perso/lsimon/glucose/) when hard-combinatorial-type are used.

> Due to the NP-complete nature of S<small>AT</small>, we can use S<small>AT</small> solvers to solve real world problems in areas like circuit design (for [Combinational Equivalence Checking](http://www.cise.ufl.edu/~zhuang/doc/TR-05.pdf)), and artificial intelligence  (for [Automated Planning and Scheduling](http://users.ics.aalto.fi/rintanen/jussi/papers/Rintanen11aaai.pdf)). Application-type benchmark instances consist of formulas from real world problems.

Many modern S<small>AT</small> solvers are based on the original **DPLL** algorithm designed in the 60's. In summary, DPLL is a complete algorithm that works by assigning a variable some boolean value, checks if this breaks the overall satisfiability: if it doesn't break, pick a new variable, and check again; if it breaks, alters the assigned value and check again (if both True-False values are tried, go back to the previous variable, alter it and check). Repeatedly doing so until we arrive at either one of these two ends:

1. All variables are assigned to some boolean value and it does not break the overall satisfiability, and hence the formula is satisfiable.

2. No matter what boolean values a set of variables are assigned to, it would break the overall satisfiability, and hence the formula is unsatisfiable.

###<small>4th and 5th minutes :</small> S<small>AT</small> Solvers - DPLL and More <small class="wordCount">613&nbsp;words</small>

You may have already imagined, DPLL is basically a [depth-first search](https://www.youtube.com/watch?v=bkROCj-BTWE), and that means at its heart it uses **backtracking**, a brute-force-like technique that, rather than checking every single possible solution one by one (which is what's known as brute-force), it checks possible solutions by compositing part by part in a combinatorial fashion [e.g. building a solution variable by variable as described above], discarding sets of solutions that are deemed invalid by parts.

> In short, **a backtracking algorithm is very similar to a classical brute-force algorithm, except that it is slightly smarter and thus more efficient**. Here is an example. Imagine you are given 9 numbers
>
>$$4015,1635,8744,1236,3241,123,6126,142,13421$$
>
>and your task is to find if there is a set of $n$ numbers adding up to a prime number $x$ where $n > 3$ and $x < 14000$. One example of an algorithm that uses backtracking would firstly
>
> 1. form a set of 3 numbers (e.g. first 3 numbers $4015,1635,8744$)
>
> 2. get its sum (in this case $4015+1635+8744=14394$ )
>
> 3. check if it makes sense to go on adding more numbers into this set of 3 numbers.
>
>In our case $14394>14000$, so it makes no sense to go on and we abandon the last number,, 8744, in our set, makes a new set of 3 numbers $4015,1635,1236$, and do the same thing to check if it makes sense to go on (in this case $4015+1635+1236=6886$). Since it did not exceed the limit of 14000, we continue to
>
> 1. add a new number into the the set
>
> 2. get its sum (in this case it didn't exceed 14000. We can continue)
>
> 3. now that $n>3$ (we have 4 numbers), we check if it is prime: if not we add more numbers to it (repeat step 1)
>
> once we exceed the limit we abandon the last number just like before (and hence *backtracking*)... Keep doing so until we have
>
>1. either tried every sensible combination (sum < 14000), but there is no prime
>
>2. or we arrive at a solution, a set of numbers that meets our criteria.
>
> Read up on [the Eight queens puzzle](https://en.wikipedia.org/wiki/Eight_queens_puzzle) and its backtracking algorithm and you'd have a complete grasp of the concept (if you haven't).


The other 2 techniques classical DPLL uses are

1. **pure literal elimination**: The idea is simple. If a literal appears only as positive or negative (but not both, and hence we call it **pure**) in the formula,  

    1. we assign a value to the literal for it to yield `True`.

    2. and delete all the clauses which contain it in the formula.

    >This is because since it is pure, we can just make it yield `True` and it won't have any other consequence to the overall satisfiable.
    >
    >    $$ (a \lor b \lor \neg c) \land (a \lor \neg b) \land ( b \lor \neg c) $$
    >
    >    In the formula above, $a$ and $c$ are both pure, so we can give $a = True$ and $c = False$, and delete all the clauses that contain them. After that we'd end up with no clauses. And that means the formula is satisfiable with
    >   
    >    <div class="row d_shortcuts">
    >    $a$: True<br>
    >    $b$: Any value<br>
    >    $c$: False<br>
    >    </div>
    >

2. **unit propagation**: It is obvious that for clauses made up of 1 literal, that 1 literal has to evaluate `True` for the formula to yield `True`. Therefore

    1. we assign a value for the literal to yield `True`

    2. delete clauses that contains the literal, and instances of it in opposite polarity (the opposite of positive is negative, vice versa).

    > Take this CNF for example:
    >
    >$$ a \land (a \lor x \lor y) \land ( \neg a \lor \neg b) \land (c \lor b ) \land (d \lor \neg b)$$
    >
    >After 1st round of unit propagation, we would have $a = True$ and, after reduce the original forumla to:
    >
    >$$ \neg b \land (c \lor b ) \land (d \lor \neg b)$$
    >
    >Great! We can do a 2nd round of unit propagation with $\neg b$: make $b = False$ and reduce it into:
    >    
    >$$ c $$
    >
    >And here we have it, the original formula is satisfiable with
    >
    >    <div class="row d_shortcuts">
    >    $a$: True<br>
    >    $b$: False<br>
    >    $c$: False<br>
    >    $d$: Any value<br>
    >    </div>
    >
    > <p class="text-center"> ● ● ● </p>
    >
    > When we end up in a situation where there is an **empty clause** (a clause with 0 literals), it indicates that there is a set of variables no matter what value we assign them, we can't satisfy the formula. And thus it is unsatisfiable.
    >
    >Here is an example where after one round of unit propagation, we'd have an empty clause, indicating that no matter what values we assign $a$ and $b$, it won't satisfy the formula.
    >
    >    $$ a \land b \land (\neg b \lor \neg a) \land (c \lor b \lor d) \land (d \lor a) $$

More technically, we would say that unit propagation and pure literal elimination are used at each **decision level**. We start off at decision level 0, and the decision level increases by 1 each time as we assign a boolean value to a variable.

>We often call such variable "assigned variable". And that is different from "implied variables", variables that get their values from pure literal elimination and unit propagation.

Here is a simple implementation of classical DPLL in Haskell:

{% highlight Haskell %}
import Data.List

data Satisfiability = SAT | UNSAT deriving (Eq, Show)

type Literal = Int
type Variable = Int
type Clause = [Literal]

type VariableAssignement = (Int,Bool)

--extract variable from literal
exv :: Literal -> Variable
exv l
    | l > 0 = l
    | l < 0 = -l

exvWithValue:: Literal -> VariableAssignement
exvWithValue l
    | l > 0 = (l,True)
    | l < 0 = (-l,False)

assignTrueFor ::  [Clause] -> Variable -> [Clause]
(assignTrueFor) cnf literal = [ (- literal) `delete` clause  | clause <- cnf, (not $ literal `elem` clause)]

hasConflict = (elem) []

dpll :: ([Variable], [Clause]) -> [VariableAssignement] ->(Satisfiability,[VariableAssignement])
dpll (vss@(x:vs),cnf) as
    | hasConflict cnf = (UNSAT,[])
    | let (result,list) = enterDecisionLevelWAL x,
        result == SAT = (result,list)
    | otherwise = enterDecisionLevelWAL (-x)
        -- enterDecisionLevelWAL: enter Decision Level With Assigned Literal
        where enterDecisionLevelWAL theVariable = do_up_and_ple (vs, (cnf `assignTrueFor` theVariable)) (exvWithValue theVariable:as)
dpll ([],_) as = (SAT,as)

-- do_up_and_ple: do unit propagation && pure literal elimination
do_up_and_ple :: ([Variable], [Clause]) -> [VariableAssignement] ->(Satisfiability,[VariableAssignement])
do_up_and_ple (vs,cnf) as = dpll (vs',cnf') as'
    where
        ((vs',cnf'),as') = up_and_ple ((vs,cnf),as)
        up_and_ple x = check_if_ple_gets_same_result (ple x') x'
            where x' = (up (ple x))
        check_if_ple_gets_same_result x previous
            | x == previous = x
            | otherwise = up_and_ple x

-- pure literal elimination
ple ((vs,cnf),as)
    | length pls == 0 = ((vs,cnf),as)
    | otherwise = up ((vs',cnf'),as')
    where
        cnf' = foldl (assignTrueFor) cnf pls
        vs' = vs \\ (fmap exv pls)
        as' = as ++ (fmap exvWithValue pls)
        pls = nubBy (==) $ find_pure_literals literals []
        literals = concat cnf
        find_pure_literals (x:xs) o = find_pure_literals xs o'
            where
                o'
                    | (x `elem` literals) && ( -x `elem` literals) = o
                    | (-x `elem` literals) = -x:o
                    | otherwise = x:o
        find_pure_literals [] o = o

-- unit propagation
up ((vs,cnf),as)
    | length ucs == 0 = ((vs,cnf),as)
    | otherwise = up ((vs',cnf'),as')
    where
        cnf' = foldl (assignTrueFor) cnf ucs
        as' = as ++ (fmap exvWithValue ucs)
        vs' = vs \\ (fmap exv ucs)
        ucs = [ x | (x:xs) <- cnf, xs == []]

dpllStart :: ([Variable], [Clause]) ->(Satisfiability,[VariableAssignement])
dpllStart (vs,cnf) = do_up_and_ple (vs, cnf) []
{% endhighlight %}

To run it, simply invoke `dpllStart` with a parameter in the form `([Int], [[Int]])`

$$ (a \lor b) \land (a \lor c ) \land (c \lor -d) \\ \text{would be ([1,2,3],[[1,2],[1,3],[3,-4]])}$$

and it would return either `UNSAT` with an empty list or `SAT` with a list of boolean assignments.

>
>I've integrated a parser for parsing CNF formula in [DIMACS format](http://www.satcompetition.org/2009/format-benchmarks2009.html) into the implementation above.
>
>[It's available on GitHub.](https://github.com/0a-/Haskell-DPLL-SAT-Solver)
>

Below is DPLL in pseudo-code with JavaScript-like syntax. (I have omitted the array that stores variable assignments.)

{% highlight JavaScript %}
function dpll(formula){
    if(formula.has(empty_clause)){
        return "UNSAT";
    }else if(formula.variables.length === 0){
        return "SAT";
    }
    var v = formula.variables[0];
    formula.variables.shift();
    var new_formula = formula;
    new_formula.assignVariable(v, TRUE);
    var result = doUPandPLE(new_formula);
    if(result === "UNSAT"){
        formula.assignVariable(v, FALSE);
        result = do_up_and_ple(formula);
    }
    return result;
}

function doUPandPLE(f){
    //LiteralElmination & UnitPropagation would remove elements in f.variables
    //as they make changes to the formula
    do{
      f.repeatedlyDo("PureLiteralElmination");
      f.repeatedlyDo("UnitPropagation");
    }while(f.ifDoPureLiteralElminationCanMakeChanges());

    return dpll(f);
}
{% endhighlight %}

<p class="text-center"> ● ● ● </p>

To improve the performance of a S<small>AT</small> solver, we can use a **heuristic function** to determine which variable to assign a boolean value to in each decision (rather than following a fixed order). We often refer to it as a **decision heuristic**. One example is **VSIDS** introduced in [CHAFF](http://www.princeton.edu/~chaff/software.html), a S<small>AT</small> solver that won the 2006's S<small>AT</small> competition.

> We call something **heuristic** often when there is not much rigorous maths behind it so it does not guaranteed to be optimal or perfect but it works well after some tests and that is the main reason why it is being implemented & used. Usually, a heuristic function (or algorithm) is characterized by being simple, quick and effective.

The idea of VSIDS is simple: a variable is chosen for each decision according a ranking of these variables that changes over time. Each variable is ranked by its "activity score", a floating point variable that would plus some constant, $C$, every time the variable shows up in a newly generated clause through a process called "conflict clause learning". Every now and then, activity scores would be divided by another constant, $N$, hence shrinking over time, and "decaying" in the sense. For that reason, it is called VSIDS: Variable State Independent Decaying Sum.

>To learn more about VSIDS you can check out [Understanding VSIDS Branching Heuristics
in Conflict-Driven Clause-Learning S<small>AT</small> Solvers](http://arxiv.org/pdf/1506.08905v1.pdf) and [The Effect of VSIDS on S<small>AT</small> Solver Performance](https://classes.soe.ucsc.edu/cmps217/Fall07/Project/jaeheon/final_paper/final_paper/input-dist-subm.pdf).
>
> Conflict clause learning is a technique that generates an "conflict clause" by using an [implication graph](https://en.wikipedia.org/wiki/Implication_graph) that examines how conflict arises after unit propagation. Conflict happens when all literals in a clause are forced to yield `False` (which is the case when we have an empty clause, if our algorithm deletes False literal). Thus the process above is often referred to as conflict analysis. If you are interested in learning more about it, check out [this great article (with pictures)](http://www.msoos.org/2011/05/understanding-implication-graphs/) by [msoos](https://github.com/msoos) from [Wondering of a S<small>AT</small> geek](http://www.msoos.org/). Wanna dive deeper? You'd certainly find these papers useful:
>
> 1. [Understanding the Power of Clause Learning](https://www.cs.rochester.edu/u/kautz/papers/learnIjcai.pdf)
>
> 2. [Clause Learning in S<small>AT</small>](http://www.cs.princeton.edu/courses/archive/fall13/cos402/readings/SAT_learning_clauses.pdf)
>
> 3. [Towards Understanding and Harnessing the Potential of Clause Learning](https://www.jair.org/media/1410/live-1410-2304-jair.pdf)
>
> 4. [Efficient Conflict Driven Learning in a Boolean Satisfiability Solver](http://www.princeton.edu/~chaff/publication/iccad2001_final.pdf).
>
> S<small>AT</small> solvers that use such technique are also known as [Conflict-Driven Clause-Learning (CDCL) S<small>AT</small> Solvers](https://en.wikipedia.org/wiki/Conflict-Driven_Clause_Learning).
>


Other ways of improving performance of DPLL-based algorithms include

1. adding conflict clauses (generated by conflict analysis as described above) into the formula to prevent from getting into the same conflict again.

2. implementing unit propagation by using a technique that watches 2 literals at a time, instead of keeping track of all literals, in which case [you'd need to sacrifice pure literal elimination](http://cs.stackexchange.com/q/44924/11573). To learn more read [this 2001 paper](http://www.princeton.edu/~chaff/publication/DAC2001v56.pdf).

3. Other than using heuristic for decision as described above, we can use heuristic for backtracking. And that is actually what's done in many CDCL S<small>AT</small> Solvers.  

    >Backtracking like the one in classical DPLL is called chronological backtracking. Chronological in the sense that we we simply go back to the previous decision level. In heuristic backtracking, we go back to a decision level (or backtrack point) based on a **heuristic function**. The principal behind it is that we should learn from conflicts and avoid making the mistake of trying out all different variables assignments down a decision level only to find out that all the assignment at that decision level would only lead to unsatisfiability. That is to say that we would rely on the heuristic to help us in figuring out if the boolean assignment at some previous decision level may be a bad pick, and that we should backtrack all the way up.

4. implementing some *restart* policies, which force the solver to backtrack to decision level 0 (or some other level) when some condition is met. This is to prevent the solver from getting "stuck" at some part of the [search space](http://wiki.lesswrong.com/wiki/Search_space) for a long time. To learn more about it, check out [The Effect of Restarts on the Efficiency of Clause Learning](http://users.cecs.anu.edu.au/~jinbo/07-ijcai-restarts.pdf) and [Dynamic Restart Policies](ftp://ftp.research.microsoft.com/pub/ejh/drestart.pdf).


and many and many more.  

###End Note - Further reading:

1. [Boolean Satisfiability: Theory and Engineering (2014)](http://cacm.acm.org/magazines/2014/3/172516-boolean-satisfiability/fulltext) <small class="wordCount">755 words</small>

2. [Why is 2S<small>AT</small> in P? (a CS.SE post)](http://cstheory.stackexchange.com/a/6891/30600) <small class="wordCount">300+ words</small>

3. [The Quest for Efficient Boolean Satisfiability Solvers (2002)](http://www.princeton.edu/~chaff/publication/cade_cav_2002.pdf) <small class="wordCount">~9k words</small>

4. [The S<small>AT</small> Phase Transition (1994)](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.489.8416&rep=rep1&type=pdf) <small class="wordCount">~5k words</small>  

5. [Satisfiability Solvers](http://www.cs.cornell.edu/gomes/papers/satsolvers-kr-handbook.pdf) <small class="wordCount">a chapter from <a href="http://www.amazon.com/gp/product/0444522115/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=0444522115&linkCode=as2&tag=0aarhe-20&linkId=UZ2R6YMF7HQ6MZSN">Handbook of Knowledge Representation</a></small>

6. [Empirical Study of the Anatomy of Modern Sat Solvers](http://www.cs.toronto.edu/~fbacchus/csc2512/Lectures/2013Readings/Skallah_Empirical_Study_SAT_Solvers.pdf) <small class="wordCount">~5k words</small>  

7. [Handbook of Satisfiability](http://www.amazon.com/gp/product/1586039296/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=1586039296&linkCode=as2&tag=0aarhe-20&linkId=4SB427BUQ5LKHOFJ) <small class="wordCount">a book</small>

8. [Algorithms for the Satisfiability Problem: A Survey (1996)](http://www.cs.toronto.edu/~chechik/courses03/csc2108/algorithms-for-satisfiability.pdf) <small class="wordCount">~60k words</small>

9. [Theory and Applications of Satisfiability Testing - S<small>AT</small> 2014](http://www.amazon.com/gp/product/3319092839/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=3319092839&linkCode=as2&tag=0aarhe-20&linkId=ZKNKEH4TF3DC6R7R) <small class="wordCount">a book</small> <small>Also available on <a href="http://www.springer.com/us/book/9783319092836">springer</a>.</small>

{{page.script}}
