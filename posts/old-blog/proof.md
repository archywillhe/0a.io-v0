---
title: "A Mathematical Proof of an Interesting Phenomenon Observed in the Pattern of a set of Progressive 3x3 Matrices"
layout: post
coverImg: "/img/old-blog/04.jpg"
date: 2013-12-28
containsMaths: true
---
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/assets/past/jqmath-etc-0.4.0.min.js"></script>

The Newtonian view of gravity is still taught in school today even though we now know that it is actually not an accurate description of gravity, especially when describing objects moving at a velocity near the speed of light, or objects with an enormous amount of mass such as a supermassive black hole in the center of a <a href="http://en.wikipedia.org/wiki/Quasar">quasar</a>. And the reason why physics teachers are still teaching pre-university students the Newtonian theory is that <a href="http://en.wikipedia.org/wiki/Model-dependent_realism">it isn't wrong</a>. It's just that it has its limitation and an alternative model should be used when necessary. In comparison, <a href="http://en.wikipedia.org/wiki/General_relativity"> the geometric theory of gravitation by Einstein</a> is a much better view of gravity, but is considered too complex for the average mind of normal adolescents. Therefore, despite the fact that we can use it to calculate how space and time are distorted near a black hole and how that affects the direction in which light travels observed from a different frame of reference, you barely see <a href="http://en.wikipedia.org/wiki/Einstein_field_equations">Einstein field equations</a> appear in a junior college student's physics textbook. And interestingly, there are also times when Einstein's theory will seem to break down; just like its predecessor, it has its own limitation too. And that is why to better understand the fabric of the cosmos we need more advanced theories like <a href="http://en.wikipedia.org/wiki/Quantum_field_theory">quantum field theory</a> and <a href="http://en.wikipedia.org/wiki/M-theory">M-theory</a>.

What I want to talk about today isn't physics, but how two seemingly unrelated theories, that are capable of describing the same thing in different ways like the different theories of gravity, are interconnected. In <a href="http://0.0ar.ch/article/iq-questions"><i>Some Seemingly Complex IQ Questions, Their Solutions, and Techniques</i></a>, I pointed out that the pattern in the progressive matrices below <a href="http://0.0ar.ch/article/iq-questions">can be described by using either a principle-based theory or a transformation-based theory</a>. And the same answer can be derived from both theories.

<div class="picture in"><img style="height:450px; width:auto;" src="/img/old-blog/q39.png"><br><i>The answer is B. Click <a id="pop">here</a> to read the solution if you haven't.</i></div>
<script type="text/javascript">
$("#pop").on("click",null,null, function(){
    $(".popp").fadeIn(500);
},1);
</script>


<div class="popp h" style="margin-bottom: 15px;
padding: 10px;
background-color: #f8edda!important;
font-size: 14px;
border-bottom: 1px dotted #DFC1C2;
border-top: 1px dotted #DFC1C2;">This question can be solved by viewing either that among the pictures there is a pattern built on the foundation that <b style="font-family:Times">each row and column has to obey certain principles</b>, or that each picture (except the first one) is <b style="font-family:Times">the result of certain transformations that are applied to the previous picture</b>.
<br>
The first theory I formulated that works is that <b style="font-family:Times">in each row/column the different sets of similarities in terms of the position of polygon those 3 pictures share with their corresponding neighboring pictures are of the same number</b>. (e.g. The first and second pictures have 4 similarities - they both contain two triangles in the 4th and 6th blocks, a cross in the 7th block and a circle in the 9th block - and 4 is the number of similarities the second and third pictures have.)
<br><br>
Therefore the answer is <b style="font-family:arial">B</b>, the only picture that <b style="font-family:Times">shares 1 similarity with its horizontal neighbor</b>, the 8th picture (which <b style="font-family:Times">also shares 1 similarity with the 7th picture</b>), and <b style="font-family:Times">1 similarity with its vertical neighbor</b>, the 6th picture (which <b style="font-family:Times">also shares 1 similarity with the 3rd picture</b>).  
<br><br>
But I was not quite satisfied with this theory as it doesn't really describe the pattern in great details and it allows more than one possible answer to exist (though among the choices the only possible answer is B). So I went on studying the pictures and managed to come up with a more elaborate theory that works. Every picture undergoes a set of transformations to turn into the next picture. <br><br>

When the next pictures are in the same row, the transformations consist of<br><br><ol><li><b style="font-family:Times">the transfiguration of shapes</b> that causes triangles in the original picture to become crosses, circles to become triangles and crosses to become circles </li><li><b style="font-family:Times">the one-block-to-the-right-per-picture movement of all polygons</b> (and one will move to the next row upon reaching the edge, or back to the first block upon reaching the end).</li></ol><br>
And when the next pictures are not in the same row (e.g. from 3rd to 4th picture), there will be <b style="font-family:Times">a clockwise rotational transformation</b> instead.
<br><br>
Interestingly, this theory too suggests that <b style="font-family:arial">B</b> is the answer. And this is no coincidence. Using mathematics, we can actually prove that the pattern described in the first theory is the consequence of the transformations described in the second theory. Or in the language of propositional calculus, <b style="font-family:arial">transformations_in_2ndT &#8658; pattern_in_1stT</b>.
</div>

And apparently we can prove <b style="font-family:arial">transformations_in_2ndT &#8658; pattern_in_1stT</b> mathematically. Now I shall present to you a humble proof of mine:
<br><br>
<ol>
<li>Let there be a function, $f(x)$, for $f(x) = x+1$ when $x<9$ and $f(x) = 1$ when $x=9$, with the domain $[1, 9]$.</li>
    <br><ul><li>This function is used to model the one-block-to-the-right movement of all polygons. $f(original\_position) = position\_in\_the\_next\_picture$ </li></ul>
    <br>
<li>Let there be three empty sets, $A$, $B$, and $C$. Randomly assign the integers 1 to 9 to $A$, $B$, and $C$ such that $A$, $B$, and $C$ each has a cardinality of 3 [this means each of them has 3 elements]. In another words, $A⊖B⊖C = \{1,2,3,4,5,6,7,8,9\}, |A|=|B|=|C|=3$.  </li>
<br><ul><li>$A$, $B$, and $C$ are used to model the positions of polygons in terms of their shapes. The elements in $A$ represent the positions of polygons in one shape (e.g. cross), while elements in $B$ and $C$ represent the positions of polygons in other shapes.

<div class="picture in"><img style="width:400px;" src="/img/old-blog/i-am-too-kind.jpg">
</div>
</li></ul>
<br>
<li>Let there be an algorithm $P$ that moves the original elements in set $A$ to $B$, in $B$ to $C$, and in $C$ to $A$. In another words, $A_2=C_1, B_2=A_1, C_2=B_2$. </li>
<br>
<ul><li>Let the transfiguration of shapes be from $A$ to $B$, $B$ to $C$, and $C$ to $A$: we can now model it using the algorithm $P$. And we can see that the transformation from one picture to another consists of $P$ and $f(\{A,B,C\})$.

<div class="picture in"><img style="width:400px;" src="/img/old-blog/i-am-just-too-kind.jpg">
</div>
</li></ul><br>
<li>Now imagine that $q$, an element in $B$, is also an element in $f(A)$. <br>In another words, $q ∈ f(A)∩B$.
</li><br>
<ul><li>The representation of polygons in shape B and their positions in the second picture can be derived by $f(A)$ and applying the algorithm $P$. Therefore we can see that if $q$ exists, it is a symmetry (in terms of position and shape) of a polygon between pictures 1 and 2.
</ul></li>
<br>
<li>Let there be 2 sets, $I$ and $U$, for $I = f(A) ∩ B$  and $U = f(f(A)) ∩ f(B)$. Since $f(z)=f(z)$ for any $z$, it is true that $I$ and $U$ have the same cardinality.</li>
<br>
<ul><li>We have proved that the number of symmetries between pictures 1 and 2 is equivalent to the number of symmetries between pictures 2 and 3 when only polygons in shape B are concerned.
</ul></li><br>
<li>And therefore it is also true that $I$ and $U$ will both have the same cardinality <br>for $I = (f(A) ∩ B) ∪ (f(B) ∩ C) ∪ (f(C) ∩ A)$ and $U = (f(f(A)) ∩ f(B)) ∪ (f(f(B)) ∩ f(C)) ∪ (f(f(C)) ∩ f(A))$.</li>
<br>
<ul><li>Voilà! We have now proved that in each row the different sets of similarities in terms of the position of polygon 3 pictures share with their corresponding neighbors are of the same number. But it doesn't end here since we have yet to prove that the same principle also applies to each column.
</li></ul>
 <br>
<li>Now let $(z_{n})$ be the sequence of 9 integers defined as $z_{n} = n$.</li>
<br>
<ul><li>This is used to model the positions of polygons in the first picture.</li></ul>
<br>
<li>Let there be a sequence transformation, $D$, that transforms a sequence $( u_{n} )$ into the sequence $( w_{n} )$ with  $w_{1}=u_{9}$, and $w_n = u_{n}-1$ for $n>1$. </li><br>
<ul><li>This is used to model the one-blocks-to-the-right movements each polygon experiences from the first to second picture, from the second to third picture, and from the fourth to sixth picture, etc.</li></ul><br>
<li>Let there be another sequence transformation, $L$, that transforms a sequence $( u_{n} )$ into the sequence $( w_{n} )$ with $w_{1} = u_{7}, w_{2} = u_{4}, w_{3} = u_{1}, w_4 = u_8$, $w_5 = u_5, w_{6} = u_{2}, w_7 = u_9, w_8 =u_6, w_9 = u_3$</li>

<div class="picture in"><img style="width:400px;" src="/img/old-blog/i-just-am-too-kind.jpg">
</div>
<ul><li>This is used to model the rotation occurring from third to fourth picture, and sixth to seventh picture.
</ul></li>
<br>
<li>Let $( m_{n} )$ be a new sequence that is the result of $( z_{n} )$ after transformations $D, D, L$, and $( j_{n} )$ be another new sequence that is the result of $( m_{n} )$ after transformations $D, D, L$.</li>

<div class="picture in"><img style="width:400px;" src="/img/old-blog/too-kind.jpg">
</div>
<ul><li>
The two sequences $( m_{n} )$ and $( j_{n} )$ are used to model the positions of polygons in the fourth and seventh picture in relative to the first picture.
</li></ul><br>
<li>Now let $Y$ be a set of 9 order pairs: ${(z_1, m_1), (z_2, m_2), .... (z_9, m_9)}$ and $T$ be another set of 9 order pairs: ${(m_1, j_1), (m_2, j_2), .... (m_9, j_9)}$.</li>
<br>
<ul><li> Each set of order pairs is used to model the comparison between two pictures (in this case, pictures 1 and 4, and pictures 4, and 7). </li></ul>
<br>
<li>$Y$ is equivalent to $T$ since each order pair in $Y$ is equivalent to some order pair in $T$.</li>
<br>
<ul><li>Now we have proved that the symmetry between pictures 1 and 4 is equivalent to the symmetry between picture 4 and 7 when the transformation only consists of L and D. Since the transfiguration of shapes is also a part of the transformation, we have to prove that the symmetry still holds even when the transfiguration of shapes is applied.</li></ul>
<br>
<li>Now let there be a function $g(x)$ for $g(x) = x+1$ for $x<3$ and $g(x) = 1$ for $x = 3$ in the domain $[1,3]$.</li>
<br>
<ul><li>This is used to model the change in shape (integers 1, 2 and 3 represent the 3 different shapes).</li></ul>
<br>
<li>Let $v(x)$ be a function that outputs the corresponding value (either 1, 2, or 3) to represent the shape at $x$-th position in the first picture.</li>
<br>
<ul><li>Since the two integers in each and every order pair in $Y$ and $T$ are only the representations of the positions but not of the shapes, we need $v(x)$ to bring in the numerical representations of shapes to put into $g(x)$.

<div class="picture in"><img style="width:400px" src="/img/old-blog/am-a-kind-person.jpg">
</div>
</li></ul>
<br>
<li>Let there be an integer $z$ for $z = (g ∘ g)(r)$ where $r$ is an integer that represents the shape of a polygon, $(g ∘ g)(z)$ is therefore equivalent to $(g ∘ g ∘ g ∘ g)(r)$. And therefore it is also true that $(g ∘ g ∘ g ∘ g)(v(π_{l}(p))) = (g ∘ g)(v(π_{r}(p)))$ if $(g ∘ g)(v(π_{l}(p))) =  v(π_{r}(p))$ for $p$ be any order pair in $Y$ and $T$.

<div class="picture in"><img style="width:550px" src="/img/old-blog/being-so-kind.jpg">
</div>
</li>
<li>Now let $( z_{n} )$ model the positions of polygons in the second picture. And let $( m_{n} )$ be a new sequence that is the result of $( z_{n} )$ after transformations $D, L, D$, and $( j_{n} )$ be another new sequence that is the result of $( m_{n} )$ after transformations $D, L, D$.</li>
<br>
<ul><li>
The two sequences $( m_{n} )$ and $( j_{n} )$ are now used to model the positions of polygons in the fifth and seventh picture in relative to the second picture.
</li></ul>
<br>
<li>Using the same steps above, and this time let $v(x)$ be a function that outputs the corresponding value (either 1, 2, or 3) to represent the shape at $x$-th position in the second picture, we can prove that the symmetry holds as $(g ∘ g ∘ g ∘ g)(v(π_{l}(p))) = (g ∘ g)(v(π_{r}(p)))$ if $(g ∘ g)(v(π_{l}(p))) =  v(π_{r}(p))$ for $p$ be any order pair in the new $Y$ and $T$.</li>
<br>
<li>Now let $( z_{n} )$ model the positions of polygons in the third picture. And do the same thing this time with the transformations as $L, D, D$ and $v(x)$ as a function that outputs the corresponding value to represent the shape at $x$-th position in the third picture.</li><br> <li>We can see that the symmetry holds too since it is also true that $(g ∘ g ∘ g ∘ g)(v(π_{l}(p))) = (g ∘ g)(v(π_{r}(p)))$ if $(g ∘ g)(v(π_{l}(p))) =  v(π_{r}(p))$ for $p$ be any order pair in the new $Y$ and $T$.</li>

<div class="picture in"><img style="width:480px" src="/img/old-blog/theEnd.jpg">
</div>
<li> Therefore, transformations_in_2ndT &#8658; pattern_in_1stT. </li>
</ul>

<div class="picture in"><img src="/img/old-blog/mydesk.jpg">
</div>
<p style="font-size:18px; font-family: 'Times New Roman';">
Tagged: proof, maths, logic, pattern</p>
