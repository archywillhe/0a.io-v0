---
layout: post
title: "A set-theoretical approach to DTM vs NDTM"
coverPainting: "Cataract 3, 1967, Bridget Riley"
extract: |
  From a set-theorical point of view, non-deterministic Turing machines (NDTM) and deterministic Turing machines (DTM) are pretty similar objects. Actually, all deterministic Turing machines are non-deterministic Turing machines, since all functions are relations, and the only difference between these two objects lies in that a deterministic Turing machine is defined in terms of a function, while a non-deterministic Turing machine is defined in terms of a relation.
containsMaths: 1
---

From a set-theoretical point of view, non-deterministic Turing machines (NDTM) and deterministic Turing machines (DTM) are pretty similar objects. Actually, all DTMs are NDTMs: all functions are relations, and the only difference between these two objects lies in that one is defined in terms of a function, while the other is defined in terms of a relation. To be more precise, a DTM can be represented by some 3-tuple $(\Sigma, Q, f)$ where $f$ is a function mapping from $Q \times \Sigma^k$ into $Q \times \Sigma^{k-1} \times \{-1,0,1\}^k$ (for some $k \geq 2$), while a NDTM can be represented by some 3-tuple $(\Sigma, Q, r)$ where $r$ is a relation between $Q \times \Sigma^k$ and $Q \times \Sigma^{k-1} \times \{-1,0,1\}^k$.

Consider the following variant of the P vs NP question: for every finite subset of any language decidable by a NDTM in a polynomial number of state transitions proportional to the size of the input, does there exist a DTM that too decides this subset of the language in a polynomial number of state transitions? Unlike the P vs NP question, this is asking about a finite subset of a language, rather than the language itself which has a cardinality of $\aleph_0$, and is to be answered in the affirmative.

> For any finite subset of some language decidable by a polynomial-time NDTM, there always exists a polynomial-time DTM that decides on this subset of the language, where its set of states is the superset of the Cartesian product of this subset of the language and the set of states of the NDTM, and its transition function is a superset of the union of the transition functions of DTMs each deciding only a singleton subset of the subset (with its set of states $Q$ changed to $\{ (S,q) : q \in Q \}$ where $S$ is the input string that encodes the element in the singleton), to be constructed based on how the NDTM would halt on the element. It decides the subset of the language by first reading the input string and, in a few state transitions, arriving at the corresponding initial state of the DTM that decides a singleton whose element is encoded in the input, or a rejecting state if none of the DTMs it is composed of accepts the input.

The idea is that so long as it is about deciding a finite subset of a language, we can always derive a DTM from a NDTM theoretically.

Now consider another variant of the question about the existence of a DTM whose set of states has a cardinality less than or equal to $\aleph_0$, rather than a DTM with a finite set of states (as how it is defined in Turing's model). Similar to how there always exists a DTM for deciding a finite subset of a language as demonstrated above, there always exists an infinite-states DTM (so long as the axioms of our set theory allow it) for deciding a language in polynomial time, for every language decidable by a polynomial-time NDTM. And similar to the corresponding finite-states DTM for a subset of the language, the construction of such infinite-states DTM relies on the "knowledge" about how the NDTM would decide each element in the language. Therefore, once again, there is no practical way for constructing such DTM correspondence if we do not have set-theoretical access to a NDTM at the first place.

So here is a question: "*for every language decidable by such infinite-states DTM, does there exist a finite-states DTM that too decides it in polynomial-time?*"

And that is one way of viewing the P vs NP question.
