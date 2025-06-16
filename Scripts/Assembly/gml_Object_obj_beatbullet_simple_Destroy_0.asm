.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 10
cmp.i.v GT
bf [8]

:[1]
pushi.e 1100
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create_depth(argc=4)
pushi.e -9
pushenv [7]

:[2]
push.v other.dir
push.s "left"@5994
cmp.s.v EQ
bf [4]

:[3]
pushi.e 270
pop.v.i self.image_angle

:[4]
push.v other.dir
push.s "right"@4637
cmp.s.v EQ
bf [6]

:[5]
pushi.e 90
pop.v.i self.image_angle

:[6]
push.v other.sprite_width
pop.v.v self.image_xscale
pushi.e 1
conv.i.d
push.v self.sprite_height
div.v.d
pushi.e 300
mul.i.v
pop.v.v self.image_yscale

:[7]
popenv [2]

:[8]
push.v self.glow
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[9]
push.v self.glow
pushi.e -9
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[end]