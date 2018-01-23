### Part 2

#### Cartesian Product
#### Disjoint Union
#### Function Space

---

#### Projections

+ If $p = (x,y)$ is an ordered pair  
  - $\pi_\ell p = x$ is the <a class="highlight-blue">**first component**</a> of $p$  
  - $\pi_r p = y$ is the <a class="highlight-blue">**second component**</a> of $p$
  
+ <p class="fragment fade-left">
  For example, here's another int
  $$\mathsf{let}\ x\ \mathsf{be}\ (3, 7+2) . (\pi_\ell x) \times (\pi_r x) + (\pi_r x)$$
  </p>
  
+ <p class="fragment fade-left">
  It's sometimes convenient to let  
  $\mathsf{fst}\ (x,y) = x$ and $\mathsf{snd}\ (x,y) = y$  
  denote the 1st and 2nd components of $(x,y)$.
  </p>

---

#### Pattern-matching 

<p class="fragment fade-left">
We can pattern-match an ordered pair.
$$ \mathsf{let}\ x\ \mathsf{be}\ (3, 7 + 2) . 
\mathsf{case}\ x\ \mathsf{of}\ (y, z) . y \times z + z$$
</p>

<p class="fragment fade-left">
**Pattern-match** is often a more convenient notation than projection.
</p>

---

#### Exercise 2

Identify the following integers

1. <p class="fragment fade-left">
	$\mathsf{let}\ y\ \mathsf{be}\ (7, \mathsf{let}\ x\ \mathsf{be}\ 3 . x + 7) .
	\pi_\ell y + (\mathsf{case}\ y\ \mathsf{of}\ (u, v). u + v)$
   </p>

2. <p class="fragment fade-left">
	$\mathsf{case}\ (\pi_\ell (7, 357 \times 128) > 2)\ \mathsf{of}\ 
	\\{\mathsf{true} . 13, \mathsf{false} . 2\\}$
   </p>

3. <p class="fragment fade-left">
     $\mathsf{let}\ x\ \mathsf{be}\ (5, (2, \mathsf{true})) . 
	 \mathsf{fst}\ x + \mathsf{fst}\ ( \mathsf{case}\ x\ \mathsf{of}\ (y, z) . z)$
   </p>

---

#### Disjoint Union

<p class="fragment fade-left">
Recall that $R + S$ is the set of ordered pairs $\mathsf{inl} x$, 
$x \in \mathbb R$, and ordered pairs $\mathsf{inr} y$, $y \in S$.
</p>

<p class="fragment fade-left">
We can pattern-match an element of $R + S$, e.g. 

$$ \mathsf{let}\ x\ \mathsf{be}\ \mathsf{inl}\ 3 . 
\mathsf{let}\ y\ \mathsf{be}\ 7 . \mathsf{case}\ x\ \mathsf{of} 
\\{\mathsf{inl} z. z + y, \mathsf{inr}\  w. w \times y\\}$$
</p>

<p class="fragment fade-left">
Since $x$ is defined here to be $\mathsf{inl}\ 3$, it matches the pattern 
$\mathsf{inl}\ z$, so in the body $z$ is 3.
</p>

---

#### Exercise 3

Identify the following integers

1. <p class="fragment fade-left">
   $\mathsf{case}\ (\mathsf{case}\ (3 < 7)\ \mathsf{of}\ \\{\mathsf{true} . 
   \mathsf{inr}\  (8 + 1), \mathsf{false} . \mathsf{inl}\ 2\\})$  
   $\; \mathsf{of}\ \\{\mathsf{inl}\ u . u + 8, \mathsf{inr}\  v . v + 3\\}$
   </p>

2. <p class="fragment fade-left">
   $\mathsf{let}\ z\ \mathsf{be}\ (3, \mathsf{inr} (7, \mathsf{true})) . 
   \mathsf{fst}\ z + \mathsf{case}\ \mathsf{snd}\ z$  
   $\; \mathsf{of}\ \\{\mathsf{inl}\ y . y + 2, \mathsf{inr}\  y . \mathsf{let}\ 4 
   \mathsf{be}\ x . ((x + \mathsf{fst}\ y) + \mathsf{fst}\ z)\\}$</p>

---

#### $\lambda$-abstraction

Recall $S^R$ denotes the set of functions from $R to S$.

+ <p class="fragment fade-left">
  **$\lambda$-abstraction**  
  "$\lambda x_R .$" means 
  "the function that takes $x \in R$ to "  
  </p>
  
+ <p class="fragment fade-left">
  **Example** $\lambda x_{\mathbb Z} . (2 \times x + 1)$  
  is the function taking $x : \mathbb Z$ to $2 \times x  + 1$</p>

---

#### application

<p class="fragment fade-left">
Let $f: R \to S$ be a function and $x \in R$, then   
$f x$ means $f$ applied to $x$
</p>
  
<p class="fragment fade-left">
**Example**  
$(\lambda x_{\mathbb Z} . (2 \times x + 1)) 7$
</p>

<p class="fragment fade-left">
**And that completes our notation!**
</p>

---

#### Exercise 4.

Identify the following integers

1. <p class="fragment fade-left">
   $[(\lambda f:\mathbb Z \to \mathbb{Z}\ . \lambda x:\mathbb{Z}\ . (f (f x)))\ \lambda x : \mathbb{Z} . (x+3)]\, 2$
   </p>

2. <p class="fragment fade-left">
   $\mathsf{let}\ f\ \mathsf{be}\ \lambda x:(\mathbb{Z} + \mathbb{B})\ . 
   \mathsf{case}\ x\ \mathsf{of}$  
   $\; \\{ \mathsf{inl}\ y\ .\ y+3, \mathsf{inr}\ y\ . 7 \\} .
   (f \, \mathsf{inl}\ 5) + (f \, \mathsf{inr}\ \mathsf{false})$
   </p>

3. <p class="fragment fade-left">
   $\mathsf{let}\ f\ \mathsf{be}\ \lambda x:(\mathbb Z \times \mathbb Z)\ .
   \mathsf{case}\  x\ \mathsf{of}\ (y,z)\ . (2 \times y + z)\ .$  
   $\; f (\mathsf{let}\ u\ \mathsf{be}\ 4 . u+1, 8)$
   </p>

