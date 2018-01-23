## Part 1

### Homily on Constructive Math 

---

+ What is a good language for writing proofs?
  <!-- .element: class="fragment fade-left" -->

+ What kind of math do we want to do? 
  <!-- .element: class="fragment fade-left" -->

+ In principle all math can be formalized in ZFC.
  <!-- .element: class="fragment fade-left" -->

+ Usually a much weaker theory is sufficient  
  (PA suffices for much of Number Theory)   
  (Analysis can be formalized in PA2)
  <!-- .element: class="fragment fade-left" -->

+ In fact, we don't need to commit, as long as our proofs use 
  standard techniques that we believe are formalizable in *some* system.
  <!-- .element: class="fragment fade-left" -->

---

<!-- ------ JPS ------------ -->
<!-- .slide: data-background="inputs/img/jps.jpg" data-background-size="600px" data-state="img-right-dim" -->

<!-- *"Celui qui ne choisit pas n'existe pas."* -->

+ But to do math on a computer  
  *we must make a choice!*
  
+ A computer program must be  
  based on *some* formal system 
  <!-- .element: class="fragment fade-left" -->
  
+ **ZFC** is not the obvious choice
  <!-- .element: class="fragment fade-left" -->

+ **constructive type theory**  
  can be justified on both  
  philosophical and practical grounds 
  <!-- .element: class="fragment fade-left" -->

---

**Question:** Why do math on a computer?

+ <p class="fragment fade-left"> 
  Because computers can check whether proofs are correct?
  <a class="highlight-blue">No, the peer review process works.</a><!-- .element: class="fragment fade-left" -->
  </p>
+ <p class="fragment fade-left"> 
  Because computers can prove many things humans can't?
  <a class="highlight-blue">No, at least not anytime soon.</a><!-- .element: class="fragment fade-left" -->
  </p>
+ <p class="fragment fade-left">
  Because computers are really good at computing?
  <a class="highlight-blue">Yes!!</a><!-- .element: class="fragment fade-left" --></p>

---

<p class="fragment fade-left"> 
Nobody would question the utility of computer programs on the grounds that we 
can write those programs on a piece of paper faster and more easily in pseudo-code.
This would be silly, since <a class="highlight-blue">*programs written on paper cannot be executed*</a>
</p>

<p class="fragment fade-left"> 
The objection that formalizing math on computer
is pointless because we can more easily write it down on a piece of paper can
be disputed on similar grounds.  But...  
</p>
<p class="fragment fade-left"> 
<a class="highlight-blue">*proofs of math theorems cannot be executed*</a>  
</p>
<p class="fragment fade-left"> ...or can they? </p>

---

*Classical* proofs cannot always be executed,   
but *constructive* proofs can, in a sense.

Constructive proofs give algorithms to  
compute all objects claimed to exist and  
decide all properties claimed decidable.
<!-- .element: class="fragment fade-left" -->

<p class="fragment fade-left">
<!-- ------ DVF ------------ -->
<!-- .slide: data-background="inputs/img/Darth-Vader-faith.jpg" data-background-size="500px" data-state="img-right" -->
It may seem strange to think of a proof  
as a program, even stranger that there  
can be different proofs of the same  
result that differ in "efficiency." 
</p>

---

#### A Change of Tack

Instead of discussing ways to formalize math, let's consider 
ways to extend programming languages, e.g. richer data types, 
new paradigms/techniques. 
<!-- .element: class="fragment fade-left" -->

We will consider a high level functional language and see
how it makes programming easier;   
some classical algorithms become easy or obvious;   
previously inconceivable programs are possible.
<!-- .element: class="fragment fade-left" -->

We don't mention logic and math at first.
<!-- .element: class="fragment fade-left" -->

---

#### Curry-Howard Correspondence

<p class="fragment fade-left">
Eventually, we see <a class="highlight-blue">*programs as proofs*</a> 
of theorems and <a class="highlight-blue">**constructive math**</a>
as a subsystem of the programming language.</p>

<p class="fragment fade-left">**The most important advantage:**  
<a class="highlight-blue">*programs are guaranteed correct*</a>   
by virtue of the their inherent logical content!</p>
