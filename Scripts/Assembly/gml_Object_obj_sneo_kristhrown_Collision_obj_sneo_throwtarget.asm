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
pushi.e 1
pop.v.i other.stopmoving
pushi.e 2010
pop.v.i other.sprite_index
pushi.e 0
pop.v.i other.image_index
push.d 0.5
pop.v.d other.image_speed
pushi.e 688
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.vine
pushi.e 691
push.v other.vineid
conv.v.i
push.v [array]self.x1
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x1
pushi.e 691
push.v other.vineid
conv.v.i
push.v [array]self.x2
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x2
pushi.e 691
push.v other.vineid
conv.v.i
push.v [array]self.y1
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y1
pushi.e 691
push.v other.vineid
conv.v.i
push.v [array]self.y2
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y2
push.v self.vine
pushi.e -9
push.v [stacktop]self.x2
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x4
push.v self.vine
pushi.e -9
push.v [stacktop]self.y2
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y4
push.v other.x
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x2
push.v other.y
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y2
push.v other.x
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.x3
push.v other.y
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.y3
push.v 697.depth
pushi.e 1
add.i.v
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.vine
pushi.e -9
pop.v.i [stacktop]self.type
push.v other.vineid
push.v self.vine
pushi.e -9
pop.v.v [stacktop]self.vineid
push.i 236525
setowner.e
pushi.e 0
conv.i.v
pushi.e 691
push.v other.vineid
conv.v.i
pop.v.v [array]self.visiblevine
push.v other.good
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
push.i 231251
setowner.e
push.s "obj_sneo_kristhrown_slash_Collision_62cd1353_c3fa_4ba1_acea_aa0a3fa3dd95_gml_35_0"@25810
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
pushenv [6]

:[3]
push.v self.offing
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
b [6]

:[5]
pushi.e 5
pop.v.i self.con

:[6]
popenv [3]
b [10]

:[7]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [9]

:[8]
pushi.e 7
pop.v.i self.con

:[9]
popenv [8]
push.i 231251
setowner.e
push.s "obj_sneo_kristhrown_slash_Collision_62cd1353_c3fa_4ba1_acea_aa0a3fa3dd95_gml_55_0"@25811
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

:[10]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i other.collided
pushi.e 1
pop.v.i self.collided

:[end]