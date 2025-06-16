.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.bonk
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [8]

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.bonk
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self.direction
pop.v.v self.image_angle

:[11]
push.v self.x
push.v self.xx
pushi.e 700
add.i.v
cmp.v.v GT
bt [13]

:[12]
push.v self.y
push.v self.yy
pushi.e 40
sub.i.v
cmp.v.v LT
b [14]

:[13]
push.e 1

:[14]
bf [17]

:[15]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
push.v 374.y
pop.v.v self.y
pushi.e 1512
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[17]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [32]

:[18]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
push.v 372.x
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [32]

:[19]
push.v self.collided
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.i 231251
setowner.e
push.s "obj_queen_ralseithrown_slash_Step_0_gml_23_0"@24881
conv.s.v
push.s "* Missed!/%"@22762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[21]
pushi.e 372
pushenv [23]

:[22]
pushi.e 1
pop.v.i self.visible

:[23]
popenv [22]
pushi.e 373
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.visible

:[25]
popenv [24]
pushi.e 374
pushenv [27]

:[26]
pushi.e 1
pop.v.i self.visible

:[27]
popenv [26]
pushi.e 0
pop.v.i self.visible
pushi.e 569
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 568
pushenv [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
popenv [30]
pushi.e 11
pop.v.i self.con

:[32]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [34]

:[33]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 35
pop.v.i 574.actcon
call.i instance_destroy(argc=0)
popz.v

:[37]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [43]

:[38]
push.v self.x
push.v self.xx
pushi.e 40
sub.i.v
cmp.v.v LT
bt [40]

:[39]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 380
add.i.v
cmp.v.v GT
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
push.v 374.y
pop.v.v self.y
pushi.e 1512
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[43]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[44]
push.v self.x
push.v 577.x
pushi.e 60
sub.i.v
cmp.v.v GT
bf [46]

:[45]
push.v self.bonk
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [55]

:[48]
pushi.e 834
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 0
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 90
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 180
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 60
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block_star
pushi.e 270
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.block_star
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 834
pushenv [50]

:[49]
push.v 577.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[50]
popenv [49]
push.v 574.shieldhp
pushi.e 20
sub.i.v
pop.v.v 574.shieldhp
pushi.e 577
pushenv [52]

:[51]
pushi.e 1
pop.v.i self.con

:[52]
popenv [51]
pushi.e 577
pushenv [54]

:[53]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[54]
popenv [53]
pushi.e 1
pop.v.i self.bonk
pushi.e 2
pop.v.i self.con
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.speed
push.d -0.2
mul.d.v
pop.v.v self.speed
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x
pushi.e 4
pop.v.i 577.shaketimer

:[55]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
cmp.v.v GT
bf [end]

:[56]
push.v 372.depth
pushi.e 1000
add.i.v
pop.v.v self.depth

:[end]