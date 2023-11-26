theta <- seq(0, 2 * pi, length = 200)
circ <- function(radius, x=0, y=0, label="", ...) {
    lines(x = radius * cos(theta) + x, y = radius * sin(theta) + y)
    text(x, y, label, ...)
}

plot((-1:1)*1.1, (-1:1)/1.9, type="n", ann = FALSE, axes=FALSE)
rect(-1.1,-1/1.9,1.1,1/1.9)

circ(0.5,x=-0.4, label="A")
circ(0.3,x=0.2, label="B")
