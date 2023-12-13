---
layout: "post"
title: "Vectors. Introduction to Linear Algebra"
date: "2016-08-04 9:45"
updated: 2017-06-22 16:00
category: Optics
tags: ideas, book, teaching
enable_mathjax: true
---

<script src="../js/svgeometry.js"></script>

- Idea for a book: Teaching math and classical physics
- Laser pointers, segments of (cylindrical) lenses (maybe made of acrylic)

## A magnifying glass and the sun

Todos tenemos familiaridad con Las Lupas. Sabemos que si ponemos una de ellas bajo el sol La luz se concentrará en un único punto, que se volverá caliente y puede quemar. Sabemos que podemos usar una lupa para ver más grande los objetos cercanos. También sabemos que los objetos lejanos se ven difusos y a veces invertidos. Para poder entender lo que pasa en este caso, vamos a partir con algunas definiciones.

### La luz se concentra en un único punto

we can assume that sun rays are parallel. After crossing the lens all converge in the same _burning_ spot.

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xl="http://www.w3.org/1999/xlink" version="1.1" viewBox="-100 -50 250 100" width="500pt" height="200pt" id="lens">
</svg>

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xl="http://www.w3.org/1999/xlink" version="1.1" viewBox="-100 -50 200 120" width="300pt" height="240pt" id="lens2" font-size="0.75rem">
</g></svg>

<script>
var svg = document.getElementById("lens");
L = new Segment(new Point(-250, 0), new Point(250, 0)).draw(svg, {stroke:"grey"});
A = new Point(0, -50, "A");
B = new Point(0, +50, "B");
AB = new Segment(A,B).draw(svg, {stroke:"grey", 'stroke-width':0.5});
arc_AB = new Arc(200, A, B).draw(svg);
arc_BA = new Arc(200, B, A).draw(svg);
F = new Point(100, 0, "F").draw(svg, {dy:-3, dx:-1});
E = AB.midpoint(0.8);
D = new Point(-250, E.y);
new Segment(D, E).draw(svg);
new Segment(E, F).extend(0.5).draw(svg);
E = AB.midpoint(0.35);
D = new Point(-250, E.y);
new Segment(D, E).draw(svg);
new Segment(E, F).extend(0.5).draw(svg);
E = AB.midpoint(0.65);
D = new Point(-250, E.y);
new Segment(D, E).draw(svg);
new Segment(E, F).extend(0.5).draw(svg);
E = AB.midpoint(0.2);
D = new Point(-250, E.y);
new Segment(D, E).draw(svg);
new Segment(E, F).extend(0.5).draw(svg);

svg = document.getElementById("lens2");
//L.draw(svg, {stroke:"grey"});
AB.draw(svg, {stroke:"grey", 'stroke-width':0.5});
arc_AB.draw(svg, {stroke:"black",'stroke-width':2, fill:'none'});
arc_BA.draw(svg, {stroke:"black",'stroke-width':2, fill:'none'});
ray = function(y, alpha) {
  E = new Point(0,y);
D = new Point(-70, E.y);
DD = new Segment(D, E).extend(1).draw(svg, {stroke:"grey", 'stroke-width':0.5});
D2 = DD.b
C  = new Point(D.x, D.y-alpha, "m").draw(svg, {'text-anchor': "end", dy:alpha/2 , dx:-1});
C2 = new Point(D2.x, D2.y+alpha-y/2, "m'").draw(svg, {dy:-(alpha-y/2)/2, dx:2});
new Segment(C , D ).draw(svg, {stroke:"grey", 'stroke-width':0.5});
new Segment(C2, D2).draw(svg, {stroke:"grey", 'stroke-width':0.5});
new Segment(E, C ).extend(0.4).draw(svg);
new Segment(E, C2).extend(0.4).draw(svg);
}
ray(-35, 15);
ray(0, 15);
ray(35, 15);
</script>

- focus

Let's draw a horizontal line from left to right. This line will be called _axis_.
Rays that are parallel to the axis are bent by the lens and converge in a single point. Therefore rays w

Light will also move from left to right. To model light we will consider independent rays.

## Model

A ray of light can be described by 2 variables: the (perpendicular) distance $d$ to the axis and the slope $s$.
Distance is positive when the ray is over the central axis, and negative when it is below. On it's side the slope is positive if the ray is going up and negative when it goes down.

When moving through empty space, the ray just follows its natural trajectory. After moving an horizontal distance $h$, a ray that started at distance $$d_0$$ will end at distance $d_1 = d_0 + t_0 h$. The slope does not change, so $t_1=t_0$.

## Experiment 1: how convex lenses change the direction of light beams

All lenses are placed with their centers in the axis, with the body of each lens perpendicular to the axis.

```.comment
include figure
```

- We use the laser pointer to project a ray to the convex lens.
- The ray changes its slope: $t_1 \neq t_0$.
- The ray exits the lens at the same distance it entered. $d_1 = d_0$.
- The change of slope depends on the initial distance.
- If the initial slope was 0, after traversing the lens the ray intersect the axis in an unique point.
- This intersection point _does not_ depend on the initial distance $d_0$.
- We call this point the _focal point_.
- It is located on the axis, at a distance $f$ that is called _focal distance_
- The focal distance $f$ summarizes all the properties of a convex lens.

In summary, if a ray with slope $t_0=0$ enters a lens at distance $d_0$, then it will leave the lens at distance $d=1=d_0$ and with slope $t_1=-d_0/f$

What happens if the ray enters the lens with a positive slope?

- The lens is symmetric (verify) so moving the ray back should "undo" the effect
- That is, if the ...

## Experiment 2: concave lenses

- the focal point now is on the opposite side
- we can represent it with a negative $f$
- if $f$ is negative then the formula for concave lenses is the same as the formula for convex lenses

## Composition of lenses

Now we want to follow each ray through the complete set of compound lenses

- ray represented by $d(0)$ and $t(0)$ becomes a new ray, represented by $d(1)$ and $t(1)$, and so on up to the final ray represented by $d(n)$ $t(n)$
- composition formula

## Vectors and matrices

- rays represented by _vectors_: ordered list of values. Written vertically. Fixed size.

## equations represented by matrices

## matrix multiplication

## matrix inversion: definition

# Vectors

## Dot product

- each transformation of every component of the ray has the same shape: $t(i+1)=\alpha d(i) + \beta t(i)$. This is a way to combine two vectors that will be very useful later. It is called _dot product_.
- If $\vec{a}=(a_1,a_2)$ and $\vec{b}=(b_1,b_2)$ then their dot product is the number $\vec{a}\cdot\vec{b} := a_1 b_1 + a_2 b_2$.

```note
verify consistency in the usage of subindices. Maybe use them only for vector components, and use () for time/horizontal position.
```

## Length of a vector

Using Pitagoras theorem we can easily see that the length of a vector $\vec{a}=(a_1,a_2)$ is

$\vec{a}=\sqrt{a_1^2+a_2^2}$

Using the definition of dot product we have $\vec{a}\cdot\vec{a}=a_1^2+a_2^2$ so we have also $\vec{a}= \sqrt{\vec{a}\cdot\vec{a}},$ which can also be written as $\vec{a}^2=\vec{a}\cdot\vec{a}.$

## vectors in polar coordinates

## dot product in polar coordinates

- remember that each vector can also be represented on polar coordinates: $\vec{a}=(a_1,a_2)=(a\cos(\theta),a\sin(\theta))$ and $\vec{b}=(b_1,b_2)=(b\cos(\phi),b\sin(\phi))$ so the dot product is also

$$\vec{a}\cdot\vec{b} =a\cos(\theta)b\cos(\phi) + a\sin(\theta)b\sin(\phi)=a b \cos(\theta-\phi)$$

In other words, the dot product is a number proportional to the length of each vector and to the cosine of the angle between them. If two vectors are perpendicular to each other, their dot product is zero.

## Refraction of light

Snell's law

## linear dependence

not only orthogonal
