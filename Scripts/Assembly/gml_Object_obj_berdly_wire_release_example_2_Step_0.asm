.localvar 2 arguments

:[0]
push.v self.initialize
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.i 100000
pop.v.i self.depth
pushi.e 1
pop.v.i self.initialize
pushi.e 1
pop.v.i self.floatcon
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer

:[2]
push.v self.floatcon
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[4]
push.v self.floatcon
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 3
pop.v.i self.floatcon

:[6]
push.v self.floatcon
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.remx
push.v self.shakeamount
push.v self.shakeamount
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.remy
push.v self.shakeamount
push.v self.shakeamount
neg.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y

:[8]
push.v self.tornadocon
pushi.e 1
cmp.i.v EQ
bf [21]

:[9]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pop.v.i self.floatcon

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bt [14]

:[12]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bt [14]

:[13]
push.v self.timer
pushi.e 25
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [19]

:[16]
pushi.e 1
pop.v.i self.floatcon
push.v self.remx
pop.v.v self.x
push.v self.remy
pop.v.v self.y
call.i gml_Script_scr_oflash(argc=0)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [19]

:[18]
pushi.e 1855
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.tornado
push.d -0.5
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.d
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.gravity
push.d 0.2
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.friction
push.d 0.25
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.depth
pushi.e 10
sub.i.v
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 60
conv.i.v
push.v self.tornado
call.i gml_Script_scr_doom(argc=2)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.tornadocon

:[21]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.floatcon
call.i gml_Script_scr_shakeobj(argc=0)
popz.v
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 241
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.con

:[23]
push.v self.con
pushi.e 5
cmp.i.v EQ
bt [25]

:[24]
push.v self.con
pushi.e 10
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [31]

:[27]
pushi.e 238
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
push.v self.floatcon
pushi.e 2
cmp.i.v LT
bf [29]

:[28]
pushi.e 2
pop.v.i self.floatcon

:[29]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornado
pushi.e 1033
push.v self.tornado
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d -0.3
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.d
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.gravity
push.d 0.3
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.friction
push.d 0.25
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.depth
pushi.e 10
sub.i.v
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 60
conv.i.v
push.v self.tornado
call.i gml_Script_scr_doom(argc=2)
popz.v

:[31]
push.v self.con
pushi.e 15
cmp.i.v EQ
bt [33]

:[32]
push.v self.con
pushi.e 20
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 352
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tornado
pushi.e 2717
push.v self.tornado
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.tornado
pushi.e -9
pop.v.i [stacktop]self.gravity
push.d 0.1
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.friction
push.d 0.25
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.d 0.5
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 0.5
push.v self.tornado
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e -10
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.depth
pushi.e 10
sub.i.v
push.v self.tornado
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 60
conv.i.v
push.v self.tornado
call.i gml_Script_scr_doom(argc=2)
popz.v

:[36]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[37]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[38]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.con
b [end]

:[40]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushi.e 5
pop.v.i self.con
b [end]

:[42]
pushi.e 0
pop.v.i self.con

:[end]