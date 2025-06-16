.localvar 2 arguments
.localvar 6706 d 6654

:[0]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 7
pop.v.i self.con
push.s "sneo"@9289
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_fountain_sideb_slash_Step_0_gml_7_0"@14830
conv.s.v
push.s "* NOT!!!/%"@14403
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 1
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[5]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [16]

:[9]
pushi.e 8
pop.v.i self.con
push.v 21.x
pop.v.v 82.x
push.v 21.y
pop.v.v 82.y
pushi.e 697
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sneo
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.myself
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.facing
push.v self.shortened
conv.v.b
bf [11]

:[10]
pushi.e 0
conv.i.v
b [12]

:[11]
pushi.e 4
conv.i.v

:[12]
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.shortened
conv.v.b
bf [14]

:[13]
pushi.e 0
conv.i.v
b [15]

:[14]
pushi.e 1
conv.i.v

:[15]
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.shadow_amount
pushi.e 30
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[16]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [24]

:[17]
push.v self.sneo
pushi.e -4
cmp.i.v NEQ
bf [24]

:[18]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v 21.y
pushi.e 100
sub.i.v
cmp.v.v GTE
bf [24]

:[19]
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sneo
pushi.e -9
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[21]
popenv [20]
pushi.e 0
pop.v.b self.draw_kris
pushi.e 82
pushenv [23]

:[22]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.fun
pushi.e 540
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -18
pop.v.i self.hspeed
push.d 0.6
pop.v.d self.friction

:[23]
popenv [22]

:[24]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [29]

:[25]
push.v self.sneo
pushi.e -9
pushenv [27]

:[26]
pushi.e -2
pop.v.i self.gravity

:[27]
popenv [26]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [29]

:[28]
pushi.e 11
pop.v.i self.con
pushi.e 0
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 460
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.x
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.y

:[29]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [34]

:[30]
pushi.e 4
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v 21.y
pushi.e 100
sub.i.v
cmp.v.v GTE
bf [34]

:[31]
pushi.e 12
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.sneo
pushi.e -9
pushenv [33]

:[32]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[33]
popenv [32]
pushi.e 33
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "shadow_amount"@14404
conv.s.v
push.v self.sneo
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v

:[34]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [end]

:[35]
pushi.e 14
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_fountain_sideb_slash_Step_0_gml_112_0"@14831
conv.s.v
push.s "* HOLY [[Cungadero]] DO I FEEL GOOD .../%"@14832
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[end]