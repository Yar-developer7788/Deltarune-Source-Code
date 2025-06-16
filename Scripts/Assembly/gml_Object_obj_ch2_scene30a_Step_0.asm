.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 140
cmp.i.v GT
bf [5]

:[1]
push.v 82.x
pushi.e 200
cmp.i.v LT
bf [5]

:[2]
push.v 82.y
push.v self.y
cmp.v.v LT
bf [5]

:[3]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [5]

:[4]
push.v self.cantrigger
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.b self.cantrigger
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.y
pushi.e 1
add.i.v
pop.v.v 82.y
pushi.e 1059
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 10
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3
pop.v.i self.to
pushi.e 893
conv.i.v
pushi.e -200
conv.i.v
pushi.e -200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.to_actor
push.s "toriel"@544
conv.s.v
push.v self.to_actor
push.v self.to
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 891
push.v self.to_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v

:[10]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_41_0"@33699
conv.s.v
push.s "\\E0* Alright..../%"@33700
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 200
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 195
conv.i.v
pushi.e 179
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_56_0"@33701
conv.s.v
push.s "\\E1* Then..^1. guess it's goodbye for today./%"@33702
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_64_0"@33703
conv.s.v
push.s "\\EL* See ya tomorrow^1, Kris.../%"@33704
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 64
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.torieldoor
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 142
conv.i.v
pushi.e 157
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_82_0"@33705
conv.s.v
push.s "* Kris^1! How was studying with your.../%"@33706
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 404
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_103_0"@33707
conv.s.v
push.s "\\E4* Why^1, Kris^1, is that your friend?/%"@33708
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_109_0"@33709
conv.s.v
push.s "\\E0* Why don't you invite her inside?/%"@33710
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 30
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 45
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_119_0"@33711
conv.s.v
push.s "\\EG* U-uhh^1, I mean^1, I..^1. uh.../%"@33712
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_130_0"@33713
conv.s.v
push.s "\\EK* (Kris^1, I should^1, um^1, probably get going^1, and...)/%"@33714
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_138_0"@33715
conv.s.v
push.s "\\E4* I was going to bake a pie..^1. Did you want any?/%"@33716
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_146_0"@33717
conv.s.v
push.s "\\E6* .../%"@31727
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene30a_slash_Step_0_gml_154_0"@33718
conv.s.v
push.s "\\EK* (Guess I can come over for a bit.)/%"@33719
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 110
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.housetop
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 172
conv.i.v
pushi.e 158
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.s "u"@6708
conv.s.v
pushi.e 61
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 172
conv.i.v
pushi.e 153
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 60
conv.i.v
push.d 0.5
conv.d.v
push.s "u"@6708
conv.s.v
pushi.e 81
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.to
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
pushi.e 82
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.visible

:[18]
popenv [17]
pushi.e 31
conv.i.v
call.i room_goto(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[19]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.b self.cantrigger

:[end]