.localvar 2 arguments

:[0]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [3]

:[1]
pushi.e 1
pop.v.b self.buffering
push.i 8421504
pop.v.i self.image_blend
call.i draw_self(argc=0)
popz.v
exit.i

:[2]
b [8]

:[3]
push.v self.buffering
conv.v.b
bf [5]

:[4]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.b self.buffering
push.i 16777215
pop.v.i self.image_blend

:[8]
push.v self.scale
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
push.v self.scale
push.d 0.1
add.d.v
pop.v.v self.scale
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale
push.v self.scale
pushi.e 360
mul.i.v
pop.v.v self.image_angle
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v self.af
push.d 0.5
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[10]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [end]

:[11]
call.i draw_self(argc=0)
popz.v

:[end]