.localvar 2 arguments

:[0]
push.v self.throwcon
pushi.e 1
cmp.i.v EQ
bf [29]

:[1]
push.v self.throwready
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.angle
push.v self.anglespeed
add.v.v
pop.v.v self.angle

:[3]
push.v self.angle
pushi.e 30
cmp.i.v GTE
bf [5]

:[4]
pushi.e -2
pop.v.i self.anglespeed

:[5]
push.v self.angle
pushi.e -15
cmp.i.v LTE
bf [7]

:[6]
pushi.e 2
pop.v.i self.anglespeed

:[7]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [10]

:[8]
push.v self.throwalpha
push.d 0.9
cmp.d.v GTE
bf [10]

:[9]
push.v self.throwready
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 1
pop.v.i self.activatethrow
pushi.e 64
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[15]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [17]

:[16]
push.v self.throwready
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
pushi.e 1
pop.v.i self.throwready
pushi.e 64
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
push.i 231251
setowner.e
push.s "obj_throwralsei_slash_Step_0_gml_26_0"@22780
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to determine the POWER!"@22781
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[22]
push.v self.activatethrow
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.activatethrow
pushi.e 0
pop.v.i self.throwready
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 1451
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.angledraw
pushi.e 2
pop.v.i self.throwcon
pushi.e 158
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 402
conv.i.v
push.v self.ry
push.v self.rx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ral
push.v self.mypower
push.v self.ral
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.mypower
push.v self.ral
pushi.e -9
pop.v.v [stacktop]self.mypower
pushi.e 2
push.v self.ral
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ral
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.angle
push.v self.ral
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.angle
push.v self.ral
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.ralgrav
push.v self.ral
pushi.e -9
pop.v.v [stacktop]self.gravity

:[24]
push.v self.throwready
pushi.e 1
cmp.i.v EQ
bf [29]

:[25]
push.v self.mypower
push.v self.powerdir
push.v self.powerspeed
mul.v.v
add.v.v
pop.v.v self.mypower
push.v self.mypower
push.v self.maxpower
cmp.v.v GTE
bf [27]

:[26]
pushi.e -1
pop.v.i self.powerdir

:[27]
push.v self.mypower
push.v self.minpower
cmp.v.v LTE
bf [29]

:[28]
pushi.e 1
pop.v.i self.powerdir

:[29]
push.v self.throwcon
pushi.e 2
cmp.i.v EQ
bf [32]

:[30]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [32]

:[31]
pushi.e 0
pop.v.i self.image_speed

:[32]
push.v self.angledraw
pushi.e 1
cmp.i.v EQ
bf [end]

:[33]
push.v self.angle
push.v self.mypower
call.i lengthdir_x(argc=2)
pop.v.v self.lx
push.v self.angle
push.v self.mypower
call.i lengthdir_y(argc=2)
pop.v.v self.ly
pushi.e 0
pop.v.i self.i

:[34]
push.v self.i
pushi.e 42
cmp.i.v LT
bf [end]

:[35]
push.v self.ralgrav
push.v self.ralgrav
push.v self.i
mul.v.v
add.v.v
pop.v.v self.ralyadd
push.v self.i
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.i 170083
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.ralyoff
push.v self.ralyadd
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ralyoff
b [38]

:[37]
push.i 170083
setowner.e
push.v self.ralyadd
pushi.e -1
pushi.e 0
pop.v.v [array]self.ralyoff

:[38]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [34]

:[end]