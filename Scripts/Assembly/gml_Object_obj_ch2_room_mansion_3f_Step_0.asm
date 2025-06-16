.localvar 2 arguments
.localvar 32533 savepoint 17526
.localvar 15416 shadow 17527
.localvar 36119 exit_collider 17528

:[0]
push.v 82.x
pushi.e 415
cmp.i.v GTE
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
push.v self.berdly_marker
pushi.e -9
push.v [stacktop]self.y
push.v self.berdly_marker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 670
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.berdly_marker
pushi.e -9
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 18
conv.i.v
pushi.e 170
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 18
conv.i.v
pushi.e 198
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 19
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 170
conv.i.v
pushi.e 384
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 198
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 18
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_50_0"@36121
conv.s.v
push.s "\\EE* Kris^1, Susan..^1. Glad to see you arrive unwounded./"@36122
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_51_0"@36123
conv.s.v
push.s "\\E6* Now^1, let us hasten!/%"@36124
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "hide_entrance"@36117
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.bookcase
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_77_0"@36125
conv.s.v
push.s "\\E7* Through here is a secret passageway to the roof!/"@36126
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_78_0"@36127
conv.s.v
push.s "\\E4* There^1, we can enrescue-fy Lady Noelle./"@36128
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_80_0"@36129
conv.s.v
push.s "\\E0* Uhh^1, okay./%"@36130
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
pushi.e 118
conv.i.v
pushi.e 384
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 118
conv.i.v
pushi.e 545
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_91_0"@36131
conv.s.v
push.s "\\E1* Let's go^1, Kris./%"@36132
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_105_0"@36133
conv.s.v
push.s "\\E3* Oh^1, Kris. Kris is.../%"@36134
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_115_0"@36135
conv.s.v
push.s "\\E4* Kris^1! You and your \\cYlackey\\cW distract Queen!/%"@36136
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_122_0"@36137
conv.s.v
push.s "\\E6* Let's go^1, Susie^1! Just the two of us^1! Haha!/"@36138
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_mansion_3f_slash_Step_0_gml_124_0"@36139
conv.s.v
push.s "\\EK* Fine^1, whatever!/%"@36140
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 102
conv.i.v
pushi.e 607
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "berdly_exit"@36105
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 91
conv.i.v
pushi.e 606
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.b.v
push.s "susie_exit"@36107
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
push.v self.bookcase
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
push.s "x"@50
conv.s.v
push.v self.bookcase
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1167
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [13]

:[11]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [13]

:[12]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 51
pop.v.i self.con
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]

:[18]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [20]

:[19]
pushi.e 60
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[20]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [22]

:[21]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [29]

:[24]
pushi.e 276
pushenv [26]

:[25]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 99
pop.v.i self.con
pushi.e 125
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 127
conv.i.v
pushi.e 300
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
pushloc.v local.savepoint
pushi.e -9
pushenv [28]

:[27]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[28]
popenv [27]

:[29]
push.v self.berdly_exit
conv.v.b
bf [34]

:[30]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.berdly_shadow
push.d 0.2
add.d.v
call.i clamp(argc=3)
pop.v.v self.berdly_shadow
push.v self.berdly_shadow
pop.v.v local.shadow
push.v self.be_actor
pushi.e -9
pushenv [32]

:[31]
pushloc.v local.shadow
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.color_blend

:[32]
popenv [31]
push.v self.berdly_shadow
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
pushi.e 0
pop.v.b self.berdly_exit

:[34]
push.v self.susie_exit
conv.v.b
bf [39]

:[35]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.susie_shadow
push.d 0.2
add.d.v
call.i clamp(argc=3)
pop.v.v self.susie_shadow
push.v self.susie_shadow
pop.v.v local.shadow
push.v self.su_actor
pushi.e -9
pushenv [37]

:[36]
pushloc.v local.shadow
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.color_blend

:[37]
popenv [36]
push.v self.susie_shadow
pushi.e 1
cmp.i.v GTE
bf [39]

:[38]
pushi.e 0
pop.v.b self.susie_exit

:[39]
push.v self.hide_entrance
conv.v.b
bf [end]

:[40]
pushi.e 0
pop.v.b self.hide_entrance
pushi.e 1
conv.i.v
push.s "Tiles_ExitBlock"@36118
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1144
conv.i.v
pushi.e 360
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.exit_collider
pushi.e 2
pushloc.v local.exit_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[end]