.localvar 2 arguments

:[0]
push.v other.collided
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.good
pushi.e 1
cmp.i.v EQ
bf [11]

:[2]
push.i 231251
setowner.e
push.s "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_10_0"@24092
conv.s.v
push.s "* The wire greatly loosened!/%"@24093
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 175
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 476
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v other.maker
pushi.e -9
pushenv [5]

:[4]
pushi.e 50
pop.v.i self.mercyaccumulated

:[5]
popenv [4]

:[6]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [10]

:[7]
push.v self.offing
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.con
pushi.e -8
pop.v.i self.vspeed
b [10]

:[9]
pushi.e 5
pop.v.i self.con

:[10]
popenv [7]
b [24]

:[11]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [13]

:[12]
pushi.e 7
pop.v.i self.con

:[13]
popenv [12]
pushi.e 476
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[14]
pushi.e 476
pushenv [17]

:[15]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.loosenAmount
push.d 0.25
add.d.v
call.i clamp(argc=3)
pop.v.v self.loosenAmount

:[17]
popenv [15]
b [23]

:[18]
pushi.e 483
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[19]
pushi.e 483
pushenv [22]

:[20]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.loosenAmount
push.d 0.125
add.d.v
call.i clamp(argc=3)
pop.v.v self.loosenAmount

:[22]
popenv [20]

:[23]
push.i 231251
setowner.e
push.s "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_75_0"@24094
conv.s.v
push.s "* The wire loosened a little!/%"@24095
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

:[24]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i other.collided
pushi.e 1
pop.v.i self.collided

:[end]