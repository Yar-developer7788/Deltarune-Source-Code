.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.extra_mode
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.image_xscale

:[3]
push.v self.extra_mode
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.d 0.6
pop.v.d self.image_xscale

:[5]
push.v self.y
push.v self.yy
push.v self.sprite_height
add.v.v
cmp.v.v LTE
bf [7]

:[6]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
b [8]

:[7]
push.v self.yy
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[9]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 120
mul.i.v
add.v.v
pop.v.v self.x
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [13]

:[10]
pushi.e 2
pop.v.i self.con
pushi.e 20
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.friction
pushi.e 766
pushenv [12]

:[11]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[12]
popenv [11]
pushi.e 92
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [21]

:[14]
push.v self.y
push.v self.yy
pushi.e 240
add.i.v
cmp.v.v GTE
bf [16]

:[15]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[16]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [21]

:[17]
pushi.e 3
pop.v.i self.con
pushi.e 766
pushenv [20]

:[18]
push.v self.captured
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 2
pop.v.i self.con

:[20]
popenv [18]
call.i instance_destroy(argc=0)
popz.v

:[21]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [end]

:[22]
push.v self.y
push.v self.yy
pushi.e 100
sub.i.v
cmp.v.v LTE
bf [end]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[end]