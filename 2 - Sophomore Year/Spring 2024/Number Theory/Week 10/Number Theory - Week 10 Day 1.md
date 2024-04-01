Date: 1st April 2024
Date Modified: 1st April 2024
File Folder: Week 10
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Slides Link:

https://www.overleaf.com/read/mpbbxcrfxsgz#7ae27e
https://www.overleaf.com/read/qhcrdntngpqz#0304bo
```

# Computational Complexity

## Big-O

```ad-summary
title: Definition
$g(n)$ is a funciton that is an asymptotic upper bound for $f(n)$ if there exists numbers $C$ and $n_o$ such that:
$$|f(n)| \le C|g(n)|, \forall n \ge n_o$$
```

The size of $f(n)$ is eventually smaller than the size of $g(n)$.

If $g(n)$ is an asymptotic upper bound for $f(n)$, we also say that $f(n)$ is **Big-O** of $g(n)$

$$f(n) = O(g(n)) \rightarrow f(n) <<g(n)$$
## Big-Omega

```ad-summary
title: Defintion
If there exist numbers $C$ and $n_o$ such that:
$$|f(n)| \ge C g(n), \forall n \ge n_o$$
```

Then, we say that $f$ is big $\Omega$ of g and write 
$$f(n) = \Omega(g(n)) \rightarrow f(n) >> g(n)$$
## Big-Theta

If $f$ is both big-O and big-$\Omega$ of $g$, then we say that $f$ is big-$\Theta$ of $g$ and write: 
$$f(n) = \Theta(g(n))\rightarrow f(n) >><<g(n)$$


## Example

$$f(n) = n^3 +81 \space \& \space g(n) = n^3$$
$$f(n) \ge (1)g(n), \forall n \ge 1$$
$$f(n) \le 2g(n), \forall n \ge 5$$
$$\therefore f=\Theta(n)$$

## Limits Regarding Big O

```ad-important
If the $\lim_{n \to \infty} \frac{f(n)}{g(n)}$ exists (aka is finite), then $f = O(g)$
```

### Informal Proof

$$\frac{f(n)}{g(n)} \rightarrow L \mbox{ as } n \rightarrow \infty$$
Then, eventually:
$$|\frac{f(n)}{g(n)} - L | \rightarrow 0 \mbox{ as } n \rightarrow \infty$$
$$|\frac{f(n)}{g(n)}-L| < 1, \space \forall n \ge n_o$$
$$-1 < | \frac{f(n)}{g(n)} - L |< 1, \space \forall n \ge n_o$$
$$-1 + L < \frac{f(n)}{g(n)} < 1 + L, \space \forall n \ge n_o$$
$$f(n) < (1+L)(g(n)$$
### Example 1

$$f(n) = -2n^3 + 3n^2 + 77 \Rightarrow g(n) = n^3$$
$$\lim_{n \rightarrow \infty}\frac{f(n)}{g(n)}$$
$$\lim_{n \rightarrow \infty} = \frac{-2n^3}{n^3} + \frac{3n^2}{n^3} + \frac{77}{n^3}$$
$$\lim_{n\rightarrow \infty} = -2+ \frac{3}{n}+ \frac{77}{n^3}$$
```ad-note
Both the $n^{-1}$ and $n^{-3}$ terms go to zero as $n$ approaches infinity
```

$$\lim_{n \rightarrow \infty} \frac{f(n)}{g(n)} =-2 $$
### Example 2

$$x^3 = O(2^x)$$
$$\lim_{x \rightarrow \infty} \frac{f(x)}{g(x)} = \frac{(x^3)}{(2^x)}$$
```ad-important
Take L'Hop. Rule
```

$$= \frac{3x^2}{2^x \ln2}$$
$$= \frac{6x}{2^x(\ln2)^2}$$
$$= \frac{6}{2^x(\ln2)^3} = \frac{6}{\infty}$$
$$\therefore \lim_{x\rightarrow \infty} \frac = $$
