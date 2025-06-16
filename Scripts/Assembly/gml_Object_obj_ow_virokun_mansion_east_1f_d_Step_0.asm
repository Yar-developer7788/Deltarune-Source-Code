.localvar 2 arguments

:[0]
push.v self.gentimer
pushi.e 1
add.i.v
pop.v.v self.gentimer
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.y
pushi.e 16
add.i.v
pop.v.v self.y
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 128
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[4]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [6]

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v LTE
bf [11]

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[14]
push.v self.timer
push.v self.timermax
cmp.v.v GTE
bf [28]

:[15]
push.v self.shotcount
pushi.e 1
add.i.v
pop.v.v self.shotcount
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=3)
pop.v.v self.hspeed
pushi.e 7
conv.i.v
pushi.e -7
conv.i.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v 82.x
push.v self.x
cmp.v.v LT
bf [17]

:[16]
push.v self.hspeed
pushi.e -1
push.v self.multiplier
mul.v.i
mul.v.v
pop.v.v self.hspeed

:[17]
pushi.e 265
conv.i.v
push.v self.y
pushi.e 65
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.hspeed
pushi.e 4
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.spear
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[18]
push.v 82.x
push.v 82.xprevious
cmp.v.v NEQ
bf [21]

:[19]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[20]
push.v self.spear
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.v 82.x
push.v 82.xprevious
sub.v.v
pushi.e 8
conv.i.d
div.d.v
add.v.v
pop.i.v [stacktop]self.hspeed

:[21]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[22]
push.v self.spear
pushi.e -9
dup.i 4
push.v [stacktop]self.direction
pushi.e 15
conv.i.v
call.i random(argc=1)
pushi.e 15
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.i.v [stacktop]self.direction

:[23]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[24]
push.v self.spear
pushi.e -9
push.v [stacktop]self.direction
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[25]
push.v self.spear
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [27]

:[26]
push.v self.depth
pushi.e 20
sub.i.v
push.v self.spear
pushi.e -9
pop.v.v [stacktop]self.depth

:[27]
pushi.e 0
pop.v.i self.timer
pushi.e 26
conv.i.v
pushi.e 22
conv.i.v
pushi.e 16
conv.i.v
call.i choose(argc=3)
pop.v.v self.timermax
push.v self.gentimer
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.vspeed

:[28]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.newtimer
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[30]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [34]

:[31]
push.v self.newtimer
push.e 1
add.i.v
pop.v.v self.newtimer
push.v self.newtimer
pushi.e 45
cmp.i.v EQ
bf [33]

:[32]
pushi.e 3
pop.v.i self.con

:[33]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_depth(argc=0)
popz.v

:[34]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[35]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1799
pop.v.i self.sprite_index
pushi.e 12
conv.i.v
pushi.e -128
conv.i.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
call.i move_towards_point(argc=3)
popz.v
push.v self.y
pushi.e -128
cmp.i.v LTE
bf [end]

:[36]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 354
pop.v.v [array]self.flag
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]