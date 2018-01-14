---
layout: post
title: "JavaScript Closure and Design Patterns in 3 minutes"
metaDescription: "JavaScript closure and design patterns explained in a comprehensible way."
containsCode: true
coverPainting: "Church Street El 1920, Charles Sheeler"
reddit: https://www.reddit.com/r/javascript/comments/2i3zj4/javascript_closure_and_design_patterns_for_those/
---

###1st Minute: What is a closure in Javascript?

A <i>closure</i> is not really <a target="_blank" class="default_anchor" href="http://0ar.ch/">a</a> thing. It is just a term we use to describe what happens when we have a function that has access to outside variables other functions cannot access.

<blockquote>Outside variables are sometimes referred to as <a target="_blank" href="http://en.wikipedia.org/wiki/Non-local_variable">non-local variable.</a></blockquote>

Here is a simple example of closure in JavaScipt.

{% highlight JavaScript %}
function cat(){

    var nyan = "meow";

    function speak(){

        alert(nyan);

    }

    speak();

}
{% endhighlight %}


Now everytime you do <code>cat()</code>, a new variable, <code>nyan</code>, would be created. And <code>nyan</code> is only accessible by the <code>speak</code> function inside <code>cat</code>.

{% highlight JavaScript %}
cat(); //alerts "meow" because speak() is invoked

alert(nyan); //error: nyan is undefined
{% endhighlight %}


Here is another example of closure.

{% highlight JavaScript %}
function cat(){

    var nyan = ["meow","I am a cat"];

    var x = 0;

    var speak_and_change_x =  function(){
        //alert either "meow" or "I am a cat"
        //based on x
        alert(nyan[x]);

        //change x
        x = (x+1===2)? 0 : 1;
    };

    return speak_and_change_x ;

}
{% endhighlight %}


Now when you invoke <code>cat</code>, 3 variables will be created: an array <code>nyan</code>, an integer <code>x</code>, and a function <code>speak_and_change_x</code>. Both <code>nyan</code> and <code>x</code> can only be accessed by function <code>speak_and_change_x</code> inside <code>cat</code>.

{% highlight JavaScript %}
cat(); //nothing will be alerted.

cat()(); //alert "meow";
{% endhighlight %}


Since you are just returning <code>speak_and_change_x</code>, rather than invoking it using <code>()</code>, nothing will be alerted when you write <code>cat()</code>. However, writing <code>cat()()</code> will <code>alert ("meow")</code> because it is equivalent to invoking the function <code>cat</code> returns  - and that is the same as <code>speak_and_change_x()</code>.

Rather than writing <code>cat()()</code> to invoke the function, normally what we do is to store what <code>cat()</code> returns into a variable.

{% highlight JavaScript %}
var Archy = cat(); //since cat() returns speak_and_change_x, Archy is now speak_and_change_x;

//now invoking Archy() will be the same as invoking speak_and_change_x()

Archy(); //alerts "meow"

Archy(); //alerts "I am a cat"

Archy(); //alerts "meow"

Archy(); //alerts "I am a cat"
{% endhighlight %}

>Note: when returning a function, you shouldn't put <code>()</code> behind it. The moment you put <code>()</code> behind a function, you are invoking/invoking it.
>
> {% highlight JavaScript %}
var a = function (){ return 6 };
 
var b = a(); //b is 6.
 
alert(b); //6 will be alerted;
 
alert(b()); //error: b is not a function
 
var c = a; //c is a function
 
alert(c); //the entire function will be alerted
 
alert(c()); //alert 6.
{% endhighlight %}
>
><a target="_blank" onclick="var c = function (){ return 6 }; alert(c)">Click here</a> if you are curious what invoking <code>alert(c)</code> will do in the code above.


<p class="text-center"> ● ● ● </p>

<h3>Bonus: Ternary Operator</h3>
In the example above you can see that I am doing something like this:

{% highlight JavaScript %}
x = (x+1 === 2)? 0 : 1;
{% endhighlight %}

This is a short way of writing

{% highlight JavaScript %}
if( x+1 === 2 ){
    x = 0;
}else{
    x = 1;
}
{% endhighlight %}

The way it works can be visualized in this form:

{% highlight JavaScript %}
x = (condition)? if true : if false;
{% endhighlight %}


<h3>Bonus: Strict Comparison Operators (<code>===</code> and <code>!==</code>)</h3>

The <code>===</code> in the code above is known as a Strict Comparison Operator. It is slightly different from <code>==</code>. When we compare two variables like this: <code>a === b</code>, the JavaScript engine will first look at the variables' <i>types</i>, and if they are not the same <i>type</i>, <code>false</code> will be returned immediately.

{% highlight JavaScript %}
(0 === null) //false;

(0 === "0") //false;

(0 === []) //false;

(0 === 0) //true;
{% endhighlight %}


If we compare two variables using <code>==</code>, a type conversion would happen before the comparison occurs.

{% highlight JavaScript %}
(0 == null) //true; because JS engine has converted null into integer 0

(0 == "0") //true; because JS engine has converted the string "0" into integer 0

(0 == []) //true; because JS engine has converted the empty array [] into integer 0

(0 == 0) //true;
{% endhighlight %}


Therefore, in terms of performance, <code>===</code> would be slightly faster. The other strict comparison operator is <code>!==</code>, which is simply the inverse of <code>===</code>.

{% highlight JavaScript %}
(0 !== 0) //false;

(0 !== null) //true;
{% endhighlight %}


<p class="text-center"> ● ● ● </p>

<h3>2st Minute: More on Closure in JavaScript</h3>

When you create a closure, instead of returning a function, you can return an object. Here is another example of closure.

{% highlight JavaScript %}
var Archy = (function(){
    var nyan = ["meow","I am a cat"];
    var x = 0;
    var a =  function(){
        alert(nyan[x]);
    };
    var b = function(){
        x = (x+1===2)? 0 : 1;
    };
    return {
        speak: a,
        transform: b,
        name: "Archy"
    }
})();
{% endhighlight %}


In the example above, by returning an object, you will be able to return 2 functions that can access <code>nyan</code> and <code>x</code>, which other functions has no access to.

{% highlight JavaScript %}
alert(nyan[x]); //nyan is undefined, x is undefined.

Archy.speak() //alerts "meow"

Archy.speak() //alerts "meow"

Archy.transform() //this changes the value of x that Archy.speak() has access to.

Archy.speak() //alerts "I am a cat", because x has been changed to 1.

alert(Archy.name); //alerts "Archy"
{% endhighlight %}


Functions in the form <code>function(){...}</code> is known as anonymous function. One cool thing in JavaScript is that functions are actually not required to have names.

By having a function like this <code>(function(){...})()</code> (enclosing it with brackets and putting another pair of brackets behind), we are basically invoking this anonymous function. The <code>()</code> behind can also be used to pass parameters into the function, just like what can be done using <code>()</code> behind a function name like this <code>alert("nyan")</code>.

{% highlight JavaScript %}
(function(){ alert("x") })(); //alert "x"

(function(a){ alert(a) })("x"); //alert "x"
{% endhighlight %}


One common practice in Java script is to pass commonly used variables into anonymous function as parameters for quicker access. By passing a variable into a function, you would be able to access it locally instead of globally when you are inside the function, and thus it would be relatively faster.

{% highlight JavaScript %}
(function(){ console.log(window); })(); //accessing global variable.

(function(window){console.log(window); })(window); //accessing local variable.
{% endhighlight %}

>When you surround <i>statements</i> (e.g. a function statement: <code>function hi(){}</code>) in brackets (i.e. you have `(function hi(){})`), you are turning them into <i>expressions</i> (in this case it's known as <a target="_blank" href="http://en.wikipedia.org/wiki/Immediately-invoked_function_expression">immediately-invoked function expression (IIFE)</a>) and you can do all sort of things with expressions, similar to how you can do all sorts of things with variables.
>
> {% highlight JavaScript %}
var d = 1 < 0; //d has a boolean value of false.
 
d.toString(); //d has been converted into a string.
 
alert(d); //alerts "false"
 
var a = (1 < 0).toString(); //(1< 0) is being interpreted as an expression.
 
alert(a); //alerts "false";
 
(function hi(){alert(a)}).call(); //alerts "false";
 
(function hi(){alert(a)})(); //alerts "false";
 
function hi(){alert(a)}.call(); //syntax error
 
function hi(){alert(a)}(); //syntax error
{% endhighlight %}


<h3>3rd Minute: Design patterns in JavaScript</a></h3>

The example above where we create a closure and return an object is an example of a design pattern in JavaScript known as The Module Pattern.

There are many design patterns in JavaScript. Different design patterns are just different ways of writing codes. The Module Pattern, for example, uses <a target="_blank" href="http://0ar.ch/0a-explains-javascript-closure-and-design-patterns">closure</a> to create the illusion of a class object (or a class instance), something that JavaScript doesn't really provide (since JavaScript implements <a target="_blank" href="http://en.wikipedia.org/wiki/Prototype-based_programming">prototype-based OO</a>).  Using The Module Pattern, one would be able to have <i>public</i> and <i>private</i> functions and variables in an object (as if it is an instance of a class in <a target="_blank" href="http://en.wikipedia.org/wiki/Class-based_programming">class-based OO</a>).

<blockquote>

In this case, <code>x</code> and <code>nyan</code> are private variables, while <code>name</code> is a public variable and <code>speak()</code> and <code>transform()</code> are public functions. In class-based OO language, when something is public, it simply means that it is globally accessible. When something is private, only the instance and class functions (In this case there isn't a class function) are able to access it.

</blockquote>


Now let's move on to The Singleton Pattern, another beginner design pattern that makes good use of closure. The Singleton Pattern is like an upgrade version of The Module Pattern. Besides creating an illusion of a class object, it creates an illusion of a class function that either constructs the object (an instance of the class) or returns an already constructed object.

{% highlight JavaScript %}
var Archy = (function(){

    function cat (obj){
        var nyan = obj.nyan,
        x = obj.x;
        this.speak = function(){
            alert(nyan[x]);
        };
        this.transform = function(){
            x = (x+1===2)? 0 : 1;
        };
    }

    var instance;
    var _static = {
        name: "Archy",
        get_cat: function(obj){
        if(instance === undefined){
            instance = new cat(obj);
        }else{
            console.log("instance already created. nyannannn.");
        }
        return instance;
        }
    }
    return _static;
})();

var nyancat = Archy.get_cat({nyan: ["meow","I am a cat"], x: 0}); //it creats an instance
nyancat.speak(); //alerts "meow";
nyancat.transform();
nyancat.speak(); //alerts "I am a cat";
var mycat = Archy.get_cat(); //"instance already created. nyannannn."
mycat.speak(); //alerts "I am a cat";
{% endhighlight %}


Basically, in the Singleton Pattern, we restrict instantiation of a class to a single object.

(From the example above:)

{% highlight JavaScript %}
var instance;
var _static = {
        name: "Archy",
        get_cat: function(obj){
        if(instance === undefined){
            instance = new cat(obj);
        }else{
            console.log("instance already created. nyannannn.");
        }
        return instance;
        }
    }
{% endhighlight %}


Here we can see that nothing will happen to the variable <code>instance</code>. And it would be returned if <code>instance</code> is not <code>undefined</code>.

Conclusion: in The Singleton Pattern, the object/instance can only be accessed using the <code>Archy.get_cat()</code> function. So Archy is acting like the agent of the cat. There is no other way to get the cat unless you ask  <a target="_blank" class="default_anchor" href="http://0ar.ch/">Archy</a>. And Archy would create the cat for you the first time you ask for the cat. After that Archy would just keep giving you the same old cat.

Thrrp.

<blockquote>If you'd like to learn more about JavaScript's design patterns, here is <a target="_blank" href="http://addyosmani.com/resources/essentialjsdesignpatterns/book/">a great book written by Addy Osmani</a>.</blockquote>
