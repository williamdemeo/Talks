## Part II

### Lambda Calculus

---

#### Intro and Quick Review

+ <a class="highlight-blue">$\lambda$-calculus</a> 
  is a small language based on some common mathematical idioms.  

+ It was invented by <a class="highlight-blue">**Alonzo Church**</a> in 1936, 
  but his version was *untyped*, making the connection with mathematics rather problematic.  

+ In this course we'll be looking at a *typed* version.

---

#### The Impact of $\lambda$-Calculus

<!-- $\lambda$-calculus has had an impact throughout computer science and logic. -->
<!-- For example,  -->
<a class="highlight-blue">$\lambda$-calculus...</a>

- <p class="fragment fade-left">the basis of 
  <span class="fragment highlight-blue">functional programming</span> 
  languages  
  (e.g. Haskell, SML, OCaml, Lisp, Erlang, Scala, etc)</p>

- <p class="fragment fade-left">used to give 
  <span class="fragment highlight-blue">semantics</span> 
  for programming languages; 
  (1965) Peter Landin describes semantics of Algol-60
  using $\lambda$-calculus.</p>
  
- <p class="fragment fade-left">
  closely corresponds to a special logic, called 
  <span class="fragment highlight-blue">intuitionistic logic</span>,
  <span class="fragment fade-left">via the
  <span class="fragment highlight-green">*Curry-Howard isomorphism*</span>.
  </p>
  <!-- The influence in the opposite direction has been even greater. -->

---

### Notation for Sets

+ <p class="fragment fade-left">**natural numbers** $\mathbb{N} = \\{0,1, 2,\dots\\}$</p>
+ <p class="fragment fade-left">**integers** $\mathbb{Z} = \\{\dots, -1, 0, 1,2,\dots\\}$</p>
+ <p class="fragment fade-left">**booleans** 
  $\mathsf{Bool} =\\{\mathsf{true},\mathsf{false}\\}$</p>
+ <p class="fragment fade-left"> <!-- If $R$ and $S$ are sets...    -->
  **cartesian product** 
  $$R \times S = \\{(x,y)\mid x \in R, y \in S \\}$$</p>
+ <p class="fragment fade-left"> <!-- If $R$ and $S$ are sets...    -->
  **disjoint union** 
  $$R + S = 
  \\{ \mathsf{inl}\, x \mid x \in  R \\}  \cup \\{ \mathsf{inr}\, y \mid y \in  S \\}$$</p> 
  <p class="fragment fade-left">Here $\mathsf{inl}$ and $\mathsf{inr}$ are "tags";
  if you prefer, let
  $\mathsf{inl}\, x = \langle 0,x \rangle$ and $\mathsf{inr}\, y = \langle 1,y \rangle$</p>

---

### More Notation

+ <p class="fragment fade-left">**function space** <!-- If $R$ and $S$ are sets,  -->
  $R \rightarrow S =$ functions from $R$ to $S$ (often denoted $S^R$)</p>
+ <p class="fragment fade-left">**unit** $1 =$ the set containing
  the empty tuple $\langle\,\rangle$.</p>
+ <p class="fragment fade-left">**empty set** $=0$.</p>

<p class="fragment fade-left">These operations on sets correspond to familiar operations on natural numbers.</p>

---

### Some ways to describe integers

<p class="fragment fade-left"> 
- **Arithmetic**. Here's an integer 
$$3+(7 \times 2)$$
</p>
<p class="fragment fade-left"> 
- **Conditionals.** Here's another
  $$\mathsf{case}\ (7>5)\ \mathsf{of}\,  \\{\mathsf{true.}\ 20+3, \mathsf{false.}\ 53 \\}$$
  (an "if ... then ... else" construction)
</p>
<p class="fragment fade-left"> 
- **Local definitions.** Another integer:
  $$\mathsf{let}\ y\ \mathsf{be}\ (2\times 18)+(3 \times 102)\ \mathsf{in}\ (y+17\times y)$$
  This is shorthand for $y+17 \times y$, with $y$ set to $(2\times 18)+(3 \times 102)$.
</p>

---

### Exercise 1.

What integer is...

<p class="fragment fade-left">
1. $(2+5) \times 8$
</p>
<p class="fragment fade-left">
2. $\mathsf{case}\ (\mathsf{case}\ 1>8\ \mathsf{of}\ \\{\mathsf{true.}\ 5>2+4, \mathsf{false.}\ 3>2\\})$
   $\;\;\; \mathsf{of}\ \\{\mathsf{true.}\ 3 \times 7, \mathsf{false.}\ 100 \\}$
</p>
<p class="fragment fade-left">
3. $\mathsf{let}\  y\ \mathsf{be}\ (\mathsf{let}\ x\ \mathsf{be}\ 3+2.\ x \times (x+3)).\ y+15$
</p>
<p class="fragment fade-left">
4. $\mathsf{let}\  x\ \mathsf{be}\ (5+7).\ \mathsf{case}\ x>3\ \mathsf{of}\ \\{ \mathsf{true.}\ 12, \mathsf{false.}\ 3+3 \\}$
</p>

