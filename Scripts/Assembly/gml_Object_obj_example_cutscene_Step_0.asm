.localvar 2 arguments

:[0]
push.v self.bon
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v 82.x
push.v self.x
pushi.e 100
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.bon

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
push.v 82.x
push.v self.x
cmp.v.v GTE
bf [9]

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[13]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 653
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 82
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.visible

:[15]
popenv [14]
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 300
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 983
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232203
setowner.e
pushi.e 21
conv.i.v
push.v self.su_actor
pushi.e -9
pushi.e 6
pop.v.v [array]self.specialsprite
push.v self.kr_actor
pushi.e -9
pushenv [17]

:[16]
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_scr_emote(argc=2)
popz.v

:[17]
popenv [16]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_34_0"@29666
conv.s.v
push.s "* Pee pee town./"@29667
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_35_0"@29668
conv.s.v
push.s " * Box 1/"@29669
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_36_0_b"@29670
conv.s.v
push.s " * Box 2/"@29671
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_37_0"@29672
conv.s.v
push.s " * Box 3/"@29673
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_36_0"@29674
conv.s.v
push.s "* Funny./%"@29675
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 3
conv.i.v
push.i [function]gml_Script_scr_afterimage
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_script_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_lerp_instance(argc=6)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.i [function]gml_Script_scr_afterimage
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_script_instance_stop(argc=2)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.kr_actor
call.i gml_Script_c_var_lerp_instance(argc=7)
popz.v
call.i gml_Script_c_wait_talk(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.5
push.d 1.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 57
conv.i.v
pushi.e 25
conv.i.v
push.i [function]gml_Script_snd_play_pitch
conv.i.v
push.v self.id
call.i gml_Script_c_script_instance(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 25
conv.i.v
pushi.e 15
conv.i.v
pushi.e -4
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_c_shakestep_x(argc=6)
popz.v
pushi.e 150
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.i [function]gml_Script_snd_play_pitch
conv.i.v
push.v self.id
call.i gml_Script_c_script_instance_stop(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e -15
conv.i.v
call.i gml_Script_c_shakestep(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "y"@52
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
push.d 2.9
conv.d.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 180
conv.i.v
push.s "init"@9838
conv.s.v
push.s "image_angle"@278
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 70
conv.i.v
pushi.e 182
conv.i.v
pushi.e 968
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_angle"@278
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "init"@9838
conv.s.v
push.s "image_xscale"@279
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_55_0"@29676
conv.s.v
push.s "\\E3* ..^1. Man^1, it got late^1, didn't it...?/%"@29677
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "honkcon"@29664
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_60_0"@29678
conv.s.v
push.s "\\E0* Well. Guess you should go home^1, huh?/%"@29679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_64_0"@29680
conv.s.v
push.s "\\EQ* Alright^1, you don't have to say it./%"@29681
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_68_0"@29682
conv.s.v
push.s "\\E2* Don't wanna walk home by yourself^1, huh?/%"@29683
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_72_0"@29684
conv.s.v
push.s "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%"@29685
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_76_0"@29686
conv.s.v
push.s "\\E9* Let's go./%"@29687
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.i 16777215
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_fadeout_color(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 43.75
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 39.25
conv.d.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_example_cutscene_slash_Step_0_gml_95_0"@29688
conv.s.v
push.s "* I'm going home/%"@29689
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 50
conv.i.v
pushi.e 142
conv.i.v
pushi.e 1446
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_specialsprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [21]

:[19]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[21]
push.v self.honkcon
pushi.e 1
cmp.i.v EQ
bf [end]

:[22]
push.v self.honkcount
push.e 1
add.i.v
pop.v.v self.honkcount
push.v self.honkcount
pushi.e 30
cmp.i.v GTE
bf [24]

:[23]
pushi.e 2
pop.v.i self.honkcon
b [25]

:[24]
pushi.e 152
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[25]
push.v self.su_actor
pushi.e -9
pushenv [27]

:[26]
push.s "y"@52
conv.s.v
push.s "x"@50
conv.s.v
call.i choose(argc=2)
call.i gml_Script_scr_flip(argc=1)
popz.v

:[27]
popenv [26]

:[end]