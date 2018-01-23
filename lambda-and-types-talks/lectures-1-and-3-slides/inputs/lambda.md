### The $\lambda$-Calculus

<a class="highlight-blue">**Syntax**</a>
<div>$e = x \mid \lambda x.e \mid e(e)$</div><!-- .element: class="fragment fade-left" -->

<a class="highlight-blue">**Computation**</a>
<div>repeat single rule called $\beta$-reduction:
$\lambda x.[\dots x \dots x \dots] (e_2 ) \Rightarrow [\dots e_2 \dots e_2 \dots]$
</div><!-- .element: class="fragment fade-left" -->

<a class="highlight-blue">**Finished** </a>
<div> when no expressions of the form $e(e)$</div><!-- .element: class="fragment fade-left" -->



