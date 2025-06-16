.localvar 2 arguments

:[0]
push.v self.southcon
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -1
pop.v.i self.southcon
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.southcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.southcollider
call.i instance_destroy(argc=1)
popz.v

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.weird
pushi.e 1
cmp.b.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [9]

:[7]
pushi.e 191
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
pushi.e 82
pushenv [13]

:[11]
pushi.e 1151
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[12]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[13]
popenv [11]

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[17]
pushi.e -9999
pop.v.i self.con
push.s "save"@9887
conv.s.v
call.i gml_Script_c_saveload(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 538
conv.i.v
pushi.e 202
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 542
conv.i.v
pushi.e 263
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 33
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_46_0"@35995
conv.s.v
push.s "* Huh...? Isn't this.../%"@35996
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_51_0"@35997
conv.s.v
push.s "* Uhh^1, that guy from before?/%"@35998
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_57_0"@35999
conv.s.v
push.s "* Why is there a statue of him?/"@36000
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_59_0"@36001
conv.s.v
push.s "* It's..^1. not a statue^1, Susie./"@36002
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_61_0"@36003
conv.s.v
push.s "* Huh?/%"@1312
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_336_0"@31736
conv.s.v
push.s "\\E4* You see^1, each Dark Fountain creates a different \"world.\"/"@31737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_337_0"@31738
conv.s.v
push.s "\\E4* A \"world\" whose Darkners reflect the will of its fountain./"@31739
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [19]

:[18]
push.s "obj_ch2_scene20_slash_Step_0_gml_375_0_b"@31740
conv.s.v
push.s "\\E4＊ その世界を生み出した&　 「闇の泉」の意志を&　 受け継いだ者たちなんだよ。/"@31741
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v

:[19]
push.s "obj_ch2_scene20_slash_Step_0_gml_338_0"@31742
conv.s.v
push.s "\\E4* But^1, though those Darkners can exist in their own worlds.../"@31743
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene20_slash_Step_0_gml_339_0"@31744
conv.s.v
push.s "\\E4* They might not \"belong\" if they go to another one./%"@31745
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_73_0"@36004
conv.s.v
push.s "* Huh.../%"@36005
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_78_0"@36006
conv.s.v
push.s "* So if we just bring him back to the castle town.../"@36007
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_79_0"@36008
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_85_0"@36009
conv.s.v
push.s "* Do we^1, uh^1, have to do that?/"@36010
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_87_0"@36011
conv.s.v
push.s "* Umm^1, yes./"@36012
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_entrance_slash_Step_0_gml_89_0"@36013
conv.s.v
push.s "* Whatever./%"@36014
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 28
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 28
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 28
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[20]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[21]
pushi.e 276
pushenv [23]

:[22]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]