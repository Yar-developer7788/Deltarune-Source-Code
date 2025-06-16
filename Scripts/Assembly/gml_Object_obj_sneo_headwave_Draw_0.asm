.localvar 2 arguments

:[0]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[2]
push.v self.flash
conv.v.b
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[4]
call.i draw_self(argc=0)
popz.v
push.v self.flash
conv.v.b
bf [end]

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
pushi.e 0
pop.v.i self.flash

:[end]