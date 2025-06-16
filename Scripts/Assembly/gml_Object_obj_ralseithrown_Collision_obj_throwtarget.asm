.localvar 2 arguments

:[0]
push.v self.collided
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.good
pushi.e 1
cmp.i.v EQ
bf [9]

:[2]
pushi.e 399
pushenv [4]

:[3]
push.v self.crown
pushi.e 35
add.i.v
pop.v.v self.crown

:[4]
popenv [3]
push.i 231251
setowner.e
push.s "obj_ralseithrown_slash_Collision_ac806612_bd9d_43f5_86b2_61306f514c9f_gml_6_0"@22763
conv.s.v
push.s "* The crown greatly loosened!/%"@22764
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
pushenv [8]

:[5]
push.v self.offing
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e -8
pop.v.i self.vspeed
b [8]

:[7]
pushi.e 5
pop.v.i self.con

:[8]
popenv [5]
b [14]

:[9]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [11]

:[10]
pushi.e 7
pop.v.i self.con

:[11]
popenv [10]
pushi.e 399
pushenv [13]

:[12]
push.v self.crown
pushi.e 20
add.i.v
pop.v.v self.crown

:[13]
popenv [12]
push.i 231251
setowner.e
push.s "obj_ralseithrown_slash_Collision_ac806612_bd9d_43f5_86b2_61306f514c9f_gml_29_0"@22765
conv.s.v
push.s "* The crown loosened a little!/%"@22766
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

:[14]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.collided

:[end]