# 1 Predicate Logic

--------------

## 1.1 Inductive Definitions

----------------

### Binary relations and partially ordered sets

Let $E$ be a set.  A **binary relation** on $E$ is a subset of $E\times E$.

If $\leq$ is a binary relation on $E$ that satisfies properties 1--3 below, 
then we call $\leq$ a *partial order* and we call the pair
$\langle E, \leq \rangle$ a *partially ordered set* or *poset*.


1. $(\forall x) \, (x\in E \, \longrightarrow \, x\leq x)$;
2. $(\forall x, y)\, %(\forall y) \,
   (x\in E\; \Meet \; y\in E \; \Meet \; x\leq y \; \Meet \; y \leq x \,
   \longrightarrow\, x=y)$
3. $(\forall x, y, z)\, %(\forall y)\, (\forall z) \, 
   (x\in E\; \Meet \; y\in E \; \Meet \; z\in E \; \Meet \; x\leq y \; \Meet \; y \leq z \,
   \longrightarrow\, x\leq z)$

When 1. holds we say ``$\leq$ is reflexive''; 

when 2. holds we say ``$\leq$ is antisymmetric''; 

when 3. holds we say ``$\leq$ is transitive''. 

---------------------------

### Weakly complete orderings and increasing functions

+ An ordering relation ≤ is said to be **weakly complete** if each 
  increasing sequence has a limit. 

+ Let $\leq$ be an ordering relation over a set $E$ and $f$ a function from 
  $E$ to $E$. The function $f$ is **increasing** if $x \leq y \Rightarrow f x \leq fy$.

+ Let $\leq$ be a weakly complete ordering relation over the set $E$, 
  and $f$ an increasing function from $E$ to $E$. The function $f$ is
  **continuous** if for any increasing sequence $\lim_i (f u_i ) = f (\lim_i u_i )$.

-------------------------------

### Important Basic Definitions

A partial order relation $\leq$ on a set $E$ is said to be 
**weakly complete** if each increasing sequence has a limit.

In this case, we call the pair $\<E, \leq\>$ a **weakly complete poset**.

Let $\<E, \leq\>$ be a poset and $f$ a function from $E$ to $E$. 
The function $f$ is **increasing** if $x \leq y \Rightarrow f x \leq fy$.

Let $\<E, \leq\>$ be a weakly complete poset and $f$ an increasing function from $E$ to $E$. 
The function $f$ is **continuous** if for every increasing sequence $(u_i)_i$
we have  $\lim_i (f u_i ) = f (\lim_i u_i )$.

-------------------------------

### The First Fixed Point Theorem

**Theorem 1** Let $\<E,\leq\>$ be a weakly complete poset that has a least element $m$. 
Let $f$ be a function from $E$ to $E$. If $f$ is continuous then 
$p = \lim_i (f^i m)$ is the least fixed point of $f$.

----------------------------------

### More Important Definitions

A partial order $\leq$ on a set $E$ is **strongly complete** if every subset $A$ of
$E$ has a least upper bound, denoted by $\sup A$.

In this case, we call the pair $\<E, \leq\>$ a **strongly complete poset**.

note: Note that his definition does not require $E$ have a least element and also does not require $E$ have a least element and also does not require $A$ be nonempty.  This is not a problem. In fact, it is implicit in this definition that $E$ contain a least element---namely, $\sup \emptyset$---as well as a greatest element---namely, $\sup E$.

-----------------------

### Questions

Is every strongly complete partial order also weakly complete?


Is the poset shown below weakly complete? Is it strongly complete?  


    b       c
     \     /
      \   /
       \ /
        a

