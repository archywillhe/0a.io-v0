---
layout: post
title: "to \\aleph 1 and beyond"
containsMaths: true
containsCode: true
coverPainting: "L'Ora X Clock, 1945, Bruno Munari"
---

Today's lecture was on code abstraction. In one part Professor Danvy gave an example on how recursion can be viewed from a more mathematical point of view through demonstrating the $\mathbb{N}$-bijective nature of some set of procedures. Here is the idea:

```scheme
(define f0
    (lambda (a)
        (errorf 'f "is not defined for ~s" a)))
(define f1
    (lambda (a)
        (if (zero? a)
            1
            (* a (f0 (- a 1))))))
(define f2
    (lambda (a)
        (if (zero? a)
            1
            (* a (f1 (- a 1))))))
(define f3
    (lambda (a)
        (if (zero? a)
            1
            (* a (f2 (- a 1))))))
```

as more procedures are enumerated in this a manner, we would be able to do factorial on a larger subset of the natural numbers. There isn't really recursion going on since there is no self-referencing. And this can continue to infinity. But as anyone with a common sense would know, this goes as far as $\aleph_0$ by virtue to the fact that it is bijective to $\mathbb{N}$.

So a curious question arises: let $F_{\mathbb{N}}$ be some set of procedures that can be enumerated like above, is it possible to construct a set of procedures, $F_{\mathbb{R}}$, similar to $F_{\mathbb{N}}$ (the notation of it being similar to $F_{\mathbb{N}}$ is rather tricky here: let's just say it is similar in that it is related to recursion, or that it is a generalization of $F_{\mathbb{N}}$), that has a cardinality equal or greater than $\aleph_1$? Since such set of procedures cannot be enumerated as George Cantor had demonstrated more than a century ago (O! the whirligig of time), it would need to be constructed in a different manner.

The same question can be asked regarding Turing machine: can we formulate a model of computation, similar to that of Turing's (or more of a generalization of it), such that there exists a single object, U, that can (similar to how every Turing machine can be simulated by a Universal Turing machine) simulate every object in this model, wherein every $r \in \mathbb{R}$ can be used to encode a distinct object? Perhaps in such model, there exists some object that can solve a subset of the Halting problem previously unsolvable (i.e. those which halt in a set of steps with a cardinality less than $\aleph_1$ (and now we have successfully drawn the [continuum hypothesis](http://plato.stanford.edu/entries/continuum-hypothesis/) into the discussion)).
