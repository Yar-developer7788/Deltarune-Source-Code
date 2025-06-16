.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.image_alpha
push.d 0.031
add.d.v
pop.v.v self.image_alpha

:[end]