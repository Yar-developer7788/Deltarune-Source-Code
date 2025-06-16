.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 500
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 1260
conv.i.v
pushi.e 113
conv.i.v
pushi.e 355
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_kknpc
push.v self.kknpc
pushi.e -9
push.v [stacktop]self.image_index
push.v self.nise_kknpc
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.kknpc
pushi.e -9
push.v [stacktop]self.image_speed
push.v self.nise_kknpc
pushi.e -9
pop.v.v [stacktop]self.image_speed
push.v self.nise_kknpc
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
push.v self.kknpc
call.i instance_deactivate_object(argc=1)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fadeout
pushi.e 100
push.v self.fadeout
pushi.e -9
pop.v.i [stacktop]self.depth

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[5]
push.v self.fade_timer
push.e 1
add.i.v
pop.v.v self.fade_timer
push.v self.fade_timer
pushi.e 30
cmp.i.v EQ
bf [7]

:[6]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_musical_door_slash_Step_0_gml_30_0"@18120
conv.s.v
push.s "* (You were crushed under the weight of 400 bagels and defeated instantly...)/%"@18121
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 299
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[7]
push.v self.fade_timer
pushi.e 120
cmp.i.v GTE
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 3
pop.v.i self.con

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[15]
pushi.e 6
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.fadeout
pushi.e -9
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 500
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_musical_door_slash_Step_0_gml_56_0"@18122
conv.s.v
push.s "* (Not really.)/"@18123
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_musical_door_slash_Step_0_gml_57_0"@18124
conv.s.v
push.s "* (You just can't carry that many.)/%"@18125
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [end]

:[22]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.fade_timer
push.v self.nise_kknpc
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
push.v self.kknpc
call.i instance_activate_object(argc=1)
popz.v

:[end]