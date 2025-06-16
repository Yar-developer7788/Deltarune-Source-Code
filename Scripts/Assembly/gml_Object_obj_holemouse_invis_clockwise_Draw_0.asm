.localvar 2 arguments

:[0]
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.l
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.h
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.l
cmp.v.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
push.v self.h
cmp.v.v LT
bf [5]

:[4]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.j
pushi.e 40
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [3]

:[5]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]