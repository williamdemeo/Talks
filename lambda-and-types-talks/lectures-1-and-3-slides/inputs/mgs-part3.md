### Part 3 
#### A Calculus For Integers and Booleans

---

#### A Calculus of Integers

We want to turn the above notations into a calculus.
Typically, calculi are defined inductively.   

<p class="fragment fade-left">
As an example, here is a little calculus of *integer expressions*:
</p>

+ <div class="fragment fade-left">
  $\underline{n}$ is an *int expr* for every $n \in \mathbb Z$.</div>
  
+ <div class="fragment fade-left">
  If $M$ is an *int expr*, and $N$ is an *int expr*, then $M + N$ is an *int expr*.</div>
  
+ <div class="fragment fade-left">
  If $M$ is an *int expr*, and $N$ is an *int expr*, then $M \times N$ is an *int expr*.</div>

---

Thus an *int expr* is a finite string of symbols.  

<p class="fragment fade-left">
Don't confused *int expr* $\underline{3} + \underline{4}$ 
with *integer* $3+4$ (which is 7)
</p>

<p class="fragment fade-left">
Actually, I lied: an *int expr* isn't really a finite string of symbols, 
it's a finite *tree* of symbols.
</p>

<p class="fragment fade-left">
So $(\underline{3}+\underline{4}) \times \underline{2}$ and $\underline{3} + \underline{4} \times \underline{2}$ represent different expressions.  
</p>

<p class="fragment fade-left">
But $\underline{3}+ \underline{4} \times \underline{2}$ and $\underline{3} + (\underline{4} \times \underline{2})$ are the same expression (i.e. same tree)
</p>

---

This inductive definition describes a <a class="highlight-blue">category</a>, where

+ <div class="fragment fade-left">
  an <a class="highlight-blue">object</a> is an *algebra* consisting of a set $X$ 
  equipped with an element $\underline{n} \in X$, for each $n \in \mathbb{Z}$, 
  and two binary operations $+$ and $\times$.</div>
  
+ <div class="fragment fade-left">
  A <a class="highlight-blue">morphism</a> is an *algebra homomorphism* i.e. 
  a function that commutes with the operations.</div>

<p class="fragment fade-left">
The set of int expressions (trees of symbols) is an *initial algebra*, 
i.e. an <a class="highlight-blue">initial object</a> in this category.</p>

<!-- + <div class="fragment fade-left"> -->
<!--   "Perhaps that category has lots of initial objects?" you may ask.  Indeed it does,  -->
<!--   but there is a unique isomorphism from any initial object to any other, so it  -->
<!--   doesn't matter which initial object we choose.</div> -->

---

Let us write <a class="highlight-blue">$\vdash M : \mathsf{int}$</a> 
to mean "$M$ is an int expr"  

<p class="fragment fade-up">
Then the above inductive definition can be written

<img src="inputs/img/prooftree-p6-1.png" width="95%">
</p>

---

The two expressions above can be written as "proof trees," this time with the root at the bottom (like in botany).

<img src="inputs/img/prooftree-p6-2.png" width="90%">

---

#### Calculus of Integers and Booleans

Next we want to make a calculus of integers and booleans. 
We define the set of types to be $\\{\mathsf{int}, \mathsf{bool}\\}$

<p class="fragment fade-left">
We write <a class="highlight-blue">$\vdash M : A$</a> 
to mean "$M$ has type $A$"
<p>

<p class="fragment fade-up">
To the above rules we add: 

<img src="inputs/img/prooftree-p6-3.png" width="90%">
</p>

<!-- #### Identifiers -->
<!-- In the following I will assume we have an infinite set of *identifiers*.   -->

---

#### Local Definitions

We next want to add local definitions to our calculus, but this presents a problem.
On the one hand 
<a class="fragment highlight-blue">$\mathsf{let}\ x\ \mathsf{be}\ 3\ .\ x+4$</a>
should definitely be an int expr. 
If we type it into the computer, we get `Answer: 7`

<p class="fragment fade-up">
So we want 
<a class="fragment highlight-blue">$\mathsf{let}\ x\ \mathsf{be}\ 3\ .\ x+4 : \mathsf{int}$</a>
</p>

<span class="fragment fade-up">
But $x + 4$ is not a valid int expr. Typing it in yields

<p class="fragment fade-up">
<span class="fragment highlight-red">Error: you haven't defined x</span>
</p>
</span>

---

So we don't want <a class="fragment highlight-blue">$\vdash x + 4 : \mathsf{int}$</a>

How then can we define the calculus?
We have a valid expression with a subterm that is not syntactically valid!
The solution is to write

$$x : \mathsf{int} \vdash x + 4 : \mathsf{int}$$

This means: "once we know $x$ is an \mathsf{int}, then $x + 4$ is an int expr"  

---

#### Exercise 5.

Which of the following would you expect to be correct statements?

1. <p class="fragment fade-left">$x : \mathsf{int} \vdash x+y:\mathsf{int}$</p>
2. <p class="fragment fade-left">$x: \mathsf{int} \vdash \mathsf{let}\ y\ \mathsf{be}\ 3 . x+y : \mathsf{int}$</p>
1. <p class="fragment fade-left">$x:\mathsf{int}, y : \mathsf{int} \vdash x+y : \mathsf{int}$</p>
1. <p class="fragment fade-left">$x:\mathsf{int}, y : \mathsf{int} \vdash x+3 : \mathsf{int}$</p>



