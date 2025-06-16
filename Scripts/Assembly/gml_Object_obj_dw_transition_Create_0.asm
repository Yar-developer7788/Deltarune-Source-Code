.localvar 2 arguments

:[0]
pushi.e 944
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 100
pop.v.i self.depth
pushi.e 8
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.index
pushi.e 0
pop.v.i self.sus_v
pushi.e 0
pop.v.i self.sus_f
pushi.e 1
pushglb.v global.darkzone
add.v.i
pop.v.v self.dz
pushi.e 134
call.i gml_Script_camerax(argc=0)
add.v.i
pop.v.v self.kris_x
pushi.e 94
call.i gml_Script_cameray(argc=0)
add.v.i
pop.v.v self.kris_y
pushi.e 162
call.i gml_Script_camerax(argc=0)
add.v.i
pop.v.v self.sus_x
pushi.e 86
call.i gml_Script_cameray(argc=0)
add.v.i
pop.v.v self.sus_y
pushi.e 1
pop.v.i self.sus_draw
pushi.e 0
pop.v.i self.sus_sprite
pushi.e 0
pop.v.i self.sus_index
pushi.e 0
pop.v.i self.kris_only
pushi.e 140
pop.v.i self.finaly
push.d 0.9
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.linecon
pushi.e 0
pop.v.i self.linetimer
pushi.e 0
pop.v.i self.rect_draw
pushi.e 0
pop.v.i self.fake_screenshake
pushi.e 0
pop.v.i self.fake_shakeamount
pushi.e 138
pop.v.i self.rx1
pushi.e 64
pop.v.i self.ry1
pushi.e 182
pop.v.i self.rx2
pushi.e 118
pop.v.i self.ry2
pushi.e 0
pop.v.i self.quick_mode
pushi.e 0
pop.v.i self.soundtimer
pushi.e 0
pop.v.i self.soundcon
pushi.e 0
pop.v.i self.linesfxtimer
pushi.e 70
pop.v.i self.nextroom
pushi.e 0
pop.v.i self.skiprunback
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
bf [end]

:[3]
pushi.e 71
pop.v.i self.nextroom

:[end]