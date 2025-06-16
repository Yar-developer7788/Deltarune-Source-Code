.localvar 2 arguments

:[0]
push.v self.x
push.v self.sprite_width
add.v.v
call.i gml_Script_camerax(argc=0)
cmp.v.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.active

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_alpha
push.d 0.7
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.01
cmp.d.v LT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]