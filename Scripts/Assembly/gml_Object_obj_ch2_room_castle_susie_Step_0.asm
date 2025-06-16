.localvar 2 arguments

:[0]
push.v 82.y
push.v self.y
cmp.v.v LT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 82
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e 276
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 500
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 654
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 826
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.ra
pushi.e 893
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ra_actor
push.s "ralsei"@72
conv.s.v
push.v self.ra_actor
push.v self.ra
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 799
push.v self.ra_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 36
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 12
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
pushi.e 37
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 50
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 12
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 51
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 63
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 81
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 82
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_49_0"@35816
conv.s.v
push.s "\\E2* And Susie^1, this is your room!/"@35817
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_50_0"@35818
conv.s.v
push.s "\\E1* Umm^1, I tried to make it something you'd like^1, but.../"@35819
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_51_0"@35820
conv.s.v
push.s "\\E2* You can put anything else you want in here^1, too!/"@35821
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_52_0"@35822
conv.s.v
push.s "\\EH* I really hope you like it!/%"@35823
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 32
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_74_0"@35824
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_75_0"@35825
conv.s.v
push.s "\\ED* ..^1. My own room^1, huh./%"@35826
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_82_0"@35827
conv.s.v
push.s "\\EA* I..^1. guess that's pretty cool?/"@35828
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_83_0"@35829
conv.s.v
push.s "\\EA* My own room..^1. like this./%"@35830
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
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
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_89_0"@35831
conv.s.v
push.s "\\EK* ..^1. how long did it^1, uh^1, take you to do this?/%"@35832
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_95_0"@35833
conv.s.v
push.s "\\E1* Well^1, er^1, since I last saw you two^1, I.../%"@35834
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
pushi.e 10
conv.i.v
pushi.e 198
conv.i.v
pushi.e 325
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 835
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 824
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_125_0"@35835
conv.s.v
push.s "\\E2* Man^1, you're a real weenie^1, y'know that?/"@35836
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_126_0"@35837
conv.s.v
push.s "\\E9* Heheheh.../%"@35838
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 4
pop.v.i self.con
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_139_0"@35839
conv.s.v
push.s "\\E2* (I think she likes it^1, Kris!)/"@35840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_susie_slash_Step_0_gml_141_0"@35841
conv.s.v
push.s "\\E2* (Haha^1, jealous I got the COOL room? LOOK^1, Kris!)/%"@35842
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [end]

:[20]
pushi.e 15
pop.v.i global.plot
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]