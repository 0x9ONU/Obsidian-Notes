Date: 21st February 2024
Date Modified: 21st February 2024
File Folder: Week 5
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Identity Uniqueness
- Cancellation
- Inverse Uniqueness
- Multiplcaiton Groups
- Laws of Exponents
- Subgroup

```

```ad-important
Slides Link:

https://www.overleaf.com/read/nhybbdkvnsqm#e2f44d
```

# Groups

## Identity Existance

```ad-summary
title: Theorem
There exists *only one* identity in group $G$
```

### Proof

Assume that $e_1, e_2$ are both identity on $G$

$e_1 = e_1 e_2 \ne e_1$ **UNLESS** both $e_1$ and $e_2$ are the same identity.

## Cancellation

```ad-summary
title: Theorem
Right and left cancellation holds in a gorup. This is why, in a Cayley table, each element occurs exactly once in each row and column.
```

**Right Cancelation**
$$a \cdot b = a \cdot c \Rightarrow b = c$$

$$a^{-1}(a \cdot b) = a^{-1}(a \cdot c)$$
$$(a^{-1} a)b = (a^{-1}a)c$$
$$eb = ec$$
$$b=c$$

**Left Cancelation

$$b \cdot a = c\cdot a \Rightarrow b = c$$

## Unique Inverse

```ad-summary
title: Defintion
Every element $a$ in a gorup $G$ has a unique inverse in $G$. The implciaiton of this result is that, the equations $ax =b$ and $xa = b$ have unique solutions respectively $x= a^{-1} b$ and $x = ba^{-1}$
```

$$ba = e = ca$$
$$ba = ca$$
$$b=c$$

## Multiplication Group Defined

```ad-summary
title: Defintion
Let $G$ be a group with multiplication as the operation. Let $n \in \mathbb{N}$ and $g \in G$:
$$g^0 = e, \space \space \space g^n = g \cdot g \cdot ... \cdot g, \space \space \space g^{-n} = (g^{-1})^n$$
```

## Laws of Exponents

```ad-summary
title: Theorem
Let $m, n \in \mathbb{Z}$. Then,
1. $g^m g^n = g^{m+n}$
2. $(g^m)^n = g^{mn}$
3. The law $(ab)^n = a^n b^n$ works **only if** multiplcition is communative group.
4. (Non-commuative OR communative group) $(a \cdot b)^{-1} = b^{-1} \cdot a^{-1}$, (Communative group ONLY) $(a \cdot b)^{-1} = a^{-1} \cdot b^{-1}$
```

## Determining If a Set is a Group

```ad-question
Dtermine if each of the following set is a gorup with the given operation.
- The set $S$ with postivie irrational numbers with 1 under multiplicaiton (closed?).
```

Even though in this example the multiplication is associative, has an identity (1), and every irrational number has an inverse, it is not closed under the set. When two irrational numbers are multiplied, some of them result in a rational number. 
- ex. $\sqrt{2} \cdot \sqrt{2} = 2$
  
## Translating Multiplicative Expressions to Additive

$$a^{-3} \cdot b^2 \Rightarrow -3a + 2b$$

## Subgroup

```ad-summary
title: Definition
Let $G$ be a gorup and $H$ be a subset of $G$. If $H$ is itself a gorup under the operation induced by $G$, then we say that $H$ is a subgropu of $G$ and write $H \le G$.
$$\space$$
$H$ is a proper subgroup of $G$ if $H$ is a subgroup of $G$ and $H \ne G$ and we indicate this by writing $H < G$
$$\space$$
The subgroups $G$ and $\{ e \}$ are trivial subroups of $G$
$$\space$$
A subgroup that is not equal to $\{ e \}$ or $G$ is called a nontrivial subtorup of $G$
```

$(\mathbb{Z}, +)$ is a proper subgroup of $(\mathbb{Q}, +)$

$\{ 0 \}$ is a trivial subgroup of $(\mathbb{Q}, +)$

```ad-example
- $(n \mathbb{Z}, +)$ is a subgroup of $(\mathbb{Z}, +)$
- $SL_2(\mathbb{R})$ is a subgroup of $GL_2(\mathbb{R})$
- $(\mathbb{Z}, +) \le (\mathbb{Q}, +) \le (\mathbb{R}, +) \le (\mathbb{C}, +)$
- $(\mathbb{Q}^\star, \cdot) \le (\mathbb{Z}^\star, \cdot) \le (\mathbb{C}^\star, \cdot).$

```ad-note
$\mathbb{C}^\star$ means the entire set NOT INCLUDING ZERO
```

### Proof Examples

```ad-question
Let $G$ be an Abelian group with identity $e$. Then prove that $H = \{x \in G | x^2 = e \}$ is a subgroup of $G$
```

We first show that $H$ is closed under the operation of $G$

$$x, y \in H \Rightarrow xy \in H$$
$$(xy)^2 = xy \cdot xy = xxyy = x^2y^2 =e \cdot e = e \Rightarrow xy \in H$$

Associativity clearly holds for elements of $H$ since $H$ is a subset of $G$ where associativity holds true.

$e \in H$ since $e^2 = e$. SO $H$ contains the identity

If $x \in H$, then $(x^{-1})^2 = (x^{-2}) = (x^2)^{-1}$ and so $x^{-1} \in H$. Thus, the inverse of any element $x$ of $H$ exists within $H$

$\therefore$ $H$ is a subgroup of $G$

```ad-question
If $K = \{ x \in \mathbb{R}^\star | x \ge 1 \}$, then K is not a subgroup of $(\mathbb{R}^\star, \cdot)$
```

It is closed under associativity, as it is multiplication, and the identity of $1$ is in the set $K$, BUT an inverse does not exist for every element $\frac{1}{2} \notin K$

```ad-question
Is $\mathbb{Z}_n$ a subgroup of $\mathbb{Z}$
```

The addition in $\mathbb{Z}_n$ is different from the standard addition in $\mathbb{Z}$ because it is in terms of $\mod n$. This means that it is NOT a subgroup of $\mathbb{Z}$









