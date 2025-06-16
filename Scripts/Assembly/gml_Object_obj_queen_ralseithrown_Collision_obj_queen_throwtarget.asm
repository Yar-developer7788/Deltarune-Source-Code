.localvar 2 arguments

:[0]
push.v other.collided
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1249
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.slash
push.v self.image_angle
pushi.e 45
add.i.v
push.v self.slash
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v other.depth
pushi.e 1
sub.i.v
push.v self.slash
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.slash
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.slash
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 574.wirescut
push.e 1
add.i.v
pop.v.v 574.wirescut
pushi.e 1
pop.v.i other.stopmoving
pushi.e 1732
pop.v.i other.sprite_index
pushi.e 0
pop.v.i other.image_index
push.d 0.5
pop.v.d other.image_speed
push.v 574.phase
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 572.bardlymercy
push.d 12.5
add.d.v
pop.v.v 572.bardlymercy

:[3]
push.v 574.phase
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.v 572.bardlymercy
push.d 8.333333333333334
add.d.v
pop.v.v 572.bardlymercy

:[5]
push.v 574.phase
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v 572.bardlymercy
push.d 6.25
add.d.v
pop.v.v 572.bardlymercy

:[7]
push.v 574.phase
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.v 572.bardlymercy
pushi.e 5
add.i.v
pop.v.v 572.bardlymercy

:[9]
push.v other.good
pushi.e 1
cmp.i.v EQ
bf [15]

:[10]
push.i 231251
setowner.e
push.s "obj_queen_ralseithrown_slash_Collision_22f849ff_cd13_405b_a486_5468f83d4033_gml_23_0"@24882
conv.s.v
push.s "* The wire was cut!/%"@24879
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 149
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [14]

:[11]
push.v self.offing
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.con
b [14]

:[13]
pushi.e 5
pop.v.i self.con

:[14]
popenv [11]
b [18]

:[15]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [17]

:[16]
pushi.e 7
pop.v.i self.con

:[17]
popenv [16]
push.i 231251
setowner.e
push.s "obj_queen_ralseithrown_slash_Collision_22f849ff_cd13_405b_a486_5468f83d4033_gml_42_0"@24883
conv.s.v
push.s "* The wire was cut!/%"@24879
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -12
pop.v.i self.hspeed
pushi.e -4
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 2
pop.v.i self.con

:[18]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i other.collided
pushi.e 1
pop.v.i self.collided

:[end]