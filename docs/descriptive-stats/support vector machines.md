---
title: "Suppor vector machines"
date: "2021-05-08 19:25:36"
lang: es
featured: false
---

Sea I={1…N} el conjunto de individuos, caracterizados por el conjunto de vectors X={𝐱_i: i∈N}. Los individuos se separan en dos categorías: aprobados y rechazados.

Es decir, el conjunto I se puede escribir como I=A∪B, donde A es el subconjunto de individuos aprobados y B contiene los individuos rechazados. Supongamos en primera instancia que A y B se pueden separar perfectamente por un hiperplano 𝐻(𝐰,b), definido por la ecuación 𝐰ᵀ𝐱+b=0, de modo que  
    𝐰ᵀ𝐱_i+b>0   for all i∈ A  
    𝐰ᵀ𝐱_i+b<0   for all i∈ B

Notemos que este hiperplano no cambia si 𝐰 y b se multiplican por un escalar α>0. Es decir 𝐻(𝐰,b)=𝐻(α𝐰,αb) para cualquier α>0. Usaremos esta propiedad más adelante.

Obviamente puede haber muchas combinaciones de 𝐰 y b que definan hiperplanos que separan ambos conjuntos. Nos gustaría encontrar "el mejor" hiperplano.

En un problema de clasificación nos interesa que el clasificador sea robusto, es decir que la regla de clasificación sea insensible a perturbaciones pequeñas. Para asegurar esto, buscamos un hiperplano que esté lo más lejano posible del conjunto A y del conjunto B, simultáneamente.

Para encontrar "el mejor hiperplano" necesitamos entonces medir la distancia del hiperplano al conjunto A. Sea 𝐱_A∈A el vector en A más cercano al hiperplano 𝐻(𝐰,b). 

<!-- hay que definir cómo se mide la distancia punto-hiperplano -->

Para simplificar la búsqueda, vamos a reducir los grados de libertad imponiendo la condición  
    𝐰ᵀ𝐱_A+b=1

Del mismo modo, si 𝐱_B es el punto en B más cercano a H(w,b), imponemos 𝐰ᵀ𝐱_B+b= -1


## Hiperplanos
Dado un vector $w∈ℝ^d$ fijo, el conjunto H(w,0)={x: x∈ℝ^d, w^Tx=0} está formado por todos los vectores que son ortogonales a w. Es un subespacio de dimensión d-1, que corresponde a un hiperplanto que pasa por el origen.

El hiperplano que pasa por x_0 es H(w,0)+x_0 = {x+x_0: x∈ℝ^d, w^Tx=0}
En otras palabras, tenemos w^T(x-x_0)=0, es decir w^Tx - w^Tx_0=0.
En resumen, $H(w,0)+x_0 = H(w,b)$ donde $b=-W^Tx_0$

En general H(w, b)={x: x∈ℝ^d, w^Tx-b=0} es un hiperplano ortogonal a w que pasa por un punto x_0≠0. Es decir, si b≠0, entonces H(w, b) no pasa por el origen.

Si nos movemos en la dirección de w, el valor de $w^Tx-b$ aumenta.

Se pueden escoger w y b tales que $w^Tx_A-b=1$ y $w^Tx_B-b=-1$. Es facil ver, en ese caso, que 

$$\begin{aligned}
w^Tx_i-b &≥ +1\qquad ∀i∈A\\
w^Tx_A-b &≤ -1\qquad ∀i∈B
\end{aligned}$$

## Etiquetas
Sea $y_i=1$ para todos los individuos $i∈A$, y sea $y_i=-1 ∀i∈B$
<!-- $$y_i=[i∈A]-[i∈B]$$ -->

$$y_i =\begin{cases}
 +1\qquad ∀i∈A\\
 -1\qquad ∀i∈B
\end{cases}$$

Entonces tendremos siempre que
$$y_i(w^Tx_i-b) ≥ 1 \qquad ∀i∈I$$

## distancia
Sabemos como calcular la distancia entre dos puntos. Escribimos
$$\Vert x_i-x_j\Vert=\sqrt{\sum_k (x_{ik}-x_{jk})^2}$$

La distancia entre un punto $x_i$ y el plano $(w^Tx-b)=0$ es la distancia entre $x_i$ y su sombra $Px_i$

$$w^Tx_A-b=1$$
$$w^T Px_A-b=0$$
Therefore
$$w^T(x - Px_A)=1$$
which means that
$$\Vert w\Vert \Vert x_i-Px_i\Vert\cosθ=1$$
where θ is the angle between $w$ and $(x_i-Px_i)$. Since the projection is orthogonal, 
sabemos que ambos vectores son paralelos, es decir θ=0. Concluimos que
$$\Vert x_i-Px_i\Vert = \frac{1}{\Vert w\Vert}$$

## Buscando 𝑤
El ancho de la brecha es $1/\Vert w\Vert$. Hay que maximizar/minimizar $\Vert w\Vert,$ o equivalentemente $w^Tw/2$, sujeto a $y_i(w^T x_i + b)≥1$

El Lagrangiano es
$$ℒ=\frac{w^Tw}{2} + \sum_i λ_i(y_i(w^T x_i + b)-1)$$
cuyas derivadas son 0 cuando encontramos el óptimo.
$$\frac{∂ℒ}{∂w}=w + \sum_i λ_i y_i x_i=0$$
$λ_i≥0$ y $λ_i(y_i(w^T x_i + b)-1)=0 \quad ∀i$