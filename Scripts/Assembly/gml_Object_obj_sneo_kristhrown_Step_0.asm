.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v self.direction
pop.v.v self.image_angle

:[5]
push.v self.x
push.v self.xx
pushi.e 700
add.i.v
cmp.v.v GT
bt [7]

:[6]
push.v self.y
push.v self.yy
pushi.e 40
sub.i.v
cmp.v.v LT
b [8]

:[7]
push.e 1

:[8]
bf [11]

:[9]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed
push.v self.xx
pushi.e 40
sub.i.v
pop.v.v self.x
push.v 372.y
pop.v.v self.y
pushi.e 1422
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[11]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [24]

:[12]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.x
push.v 372.x
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [24]

:[13]
push.v self.collided
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.i 231251
setowner.e
push.s "obj_sneo_kristhrown_slash_Step_0_gml_23_0"@25806
conv.s.v
push.s "* Missed!/%"@22762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[15]
pushi.e 372
pushenv [17]

:[16]
pushi.e 1
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 373
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.visible

:[19]
popenv [18]
pushi.e 0
pop.v.i self.visible
pushi.e 686
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 685
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 11
pop.v.i self.con

:[24]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [26]

:[25]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 15
pop.v.i 697.actcon
call.i instance_destroy(argc=0)
popz.v

:[29]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[30]
push.v self.x
push.v self.xx
pushi.e 40
sub.i.v
cmp.v.v LT
bt [32]

:[31]
push.v self.y
push.v self.yy
pushi.e 520
add.i.v
cmp.v.v GT
b [33]

:[32]
push.e 1

:[33]
bf [end]

:[34]
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
push.v 372.y
pop.v.v self.y
pushi.e 1422
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_angle
pushi.e 20
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con

:[end]