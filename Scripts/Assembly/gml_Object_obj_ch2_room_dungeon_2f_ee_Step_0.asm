.localvar 2 arguments
.localvar 15466 xpos 17343
.localvar 14550 ypos 17344

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [4]

:[1]
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
pushi.e 98
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
pushi.e 182
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 768
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.ki
pushi.e 893
conv.i.v
push.v 98.y
push.v 98.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ki_actor
push.s "rouxls"@6221
conv.s.v
push.v self.ki_actor
push.v self.ki
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
push.v 98.sprite_index
push.v self.ki_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.i 500100
push.v self.ki_actor
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 500100
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
push.v self.actor_count
pushi.e 4
add.i.v
pop.v.v self.ro
pushi.e 893
conv.i.v
pushi.e 182
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ro_actor
push.s "rouxls"@6221
conv.s.v
push.v self.ro_actor
push.v self.ro
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1161
push.v self.ro_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 210
conv.i.v
pushi.e 1150
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 204
conv.i.v
pushi.e 1190
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 220
conv.i.v
pushi.e 1238
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_59_0"@35877
conv.s.v
push.s "\\E0* You may have bested me. But.../"@35878
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_60_0"@35879
conv.s.v
push.s "\\E7* You'll soon face someone..^1. More fearsome.../"@35880
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_61_0"@35881
conv.s.v
push.s "\\E4* More tyrannical than you could EVER imagine./"@35882
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_63_0"@35883
conv.s.v
push.s "\\E1* Queen? We already met her./%"@35884
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_71_0"@35885
conv.s.v
push.s "\\E6* WHAT!?/%"@35886
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 182
conv.i.v
pushi.e 1020
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_96_0"@35887
conv.s.v
push.s "\\E1* Wow Nice Hamster Wheel/%"@35888
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_104_0"@35889
conv.s.v
push.s "\\E5* So you^1, too^1, have come to humiliate me.../"@35890
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 24
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_106_0"@35891
conv.s.v
push.s "\\EO* No I Am Serious It's Cool/%"@35892
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 182
conv.i.v
pushi.e 1263
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_137_0"@35893
conv.s.v
push.s "\\EB* That Water Bottle However/%"@35894
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1219
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "king_drink"@35874
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_150_0"@35895
conv.s.v
push.s "\\EA* DO NOT SPEAK ILL OF THE ROYAL WATER BOTTLE!/%"@35896
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "king_drink"@35874
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 777
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_163_0"@35897
conv.s.v
push.s "\\EO* It's Nothing Compared To The One At My Mansion/%"@35898
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_171_0"@35899
conv.s.v
push.s "\\E5* Hmph. Materialistic as always./%"@35900
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_180_0"@35901
conv.s.v
push.s "\\E0* Materialism Evaluation Denied/"@35902
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_181_0"@35903
conv.s.v
push.s "\\EC* I Simply Give Myself: The Treatment I Deserve/%"@35904
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_191_0"@35905
conv.s.v
push.s "\\ED* You Slept Curled Up On A Dirty Throne Every Day/%"@35906
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1220
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_206_0"@35907
conv.s.v
push.s "\\EA* ENOUGH^1, WENCH!!!/%"@35908
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_224_0"@35909
conv.s.v
push.s "\\EB* What purpose have you here... Queenie Beanie./"@35910
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 13
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_226_0"@35911
conv.s.v
push.s "\\ED* Just Thought I Would Send A Message^1, Kingy Wingy/"@35912
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_227_0"@35913
conv.s.v
push.s "\\E0* That You Don't Have To Worry About Lancer/%"@35914
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 182
conv.i.v
pushi.e 1305
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_235_0"@35915
conv.s.v
push.s "\\E1* I Will Be Looking After Him From Now On/"@35916
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_236_0"@35917
conv.s.v
push.s "\\E5* After All..^1. I Am.../%"@35918
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_244_0"@35919
conv.s.v
push.s "\\E0* His Mother/%"@35920
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 1220
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_255_0"@35921
conv.s.v
push.s "\\E9* When was that decided!?/%"@35922
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_263_0"@35923
conv.s.v
push.s "\\ED* Arbitrarily Right Now/%"@35924
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_271_0"@35925
conv.s.v
push.s "\\E5* ...^1. hmph./"@35926
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_272_0"@35927
conv.s.v
push.s "\\E5* Do what you please with the boy./"@35928
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_273_0"@35929
conv.s.v
push.s "\\E5* But if he cries.../"@35930
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_274_0"@35931
conv.s.v
push.s "\\E8* ..^1. Bounce him on the ground like a ball./%"@35932
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_285_0"@35933
conv.s.v
push.s "\\ED* I Think It Is Time To Abort This Conversation/"@35934
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "B"@3500
conv.s.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_287_0"@35935
conv.s.v
push.s "\\EB* ..^1. As you wish./%"@35936
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.ro_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 1118
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_295_0"@35937
conv.s.v
push.s "\\E0* Oho^1, quite sorry^1, mine Kinge.../"@35938
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_296_0"@35939
conv.s.v
push.s "\\E3* Queene hath a nyew Man about Towne now!!/%"@35940
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_303_0"@35941
conv.s.v
push.s "\\E5* Who?/%"@35942
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_311_0"@35943
conv.s.v
push.s "\\EI* Yeah Who/%"@35944
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
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_320_0"@35945
conv.s.v
push.s "\\E6* Er/%"@35946
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ro
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_327_0"@35947
conv.s.v
push.s "\\E1* I think I/%"@35948
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_333_0"@35949
conv.s.v
push.s "\\E6* Left my puzzle on/%"@35950
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 15
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_341_0"@35951
conv.s.v
push.s "\\E5* POSTHASTE!!!/%"@35952
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_352_0"@35953
conv.s.v
push.s "\\EL* Who Was That??/%"@35954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1217
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_360_0"@35955
conv.s.v
push.s "\\E5* Sigh..^1. That was my son's..../%"@35956
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_368_0"@35957
conv.s.v
push.s "\\EC* LESSER father./%"@35958
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_378_0"@35959
conv.s.v
push.s "\\EN* Cannot Calculate Someone Less Than You/%"@35960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1220
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_390_0"@35961
conv.s.v
push.s "\\EA* BEGONE!!!!/"@35962
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_392_0"@35963
conv.s.v
push.s "\\E0* Bye Bye Kingy Wingy/%"@35964
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ki
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1216
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v self.qu
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
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_413_0"@35965
conv.s.v
push.s "\\ED* By The Way Did You Want Anything From The Store/"@35966
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "king"@3479
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_415_0"@35967
conv.s.v
push.s "\\E8* ..^1. cashews./"@35968
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_417_0"@35969
conv.s.v
push.s "\\E1* Order Processed/%"@35970
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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

:[6]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [8]

:[7]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 320
pop.v.v [array]self.flag
pushi.e 98
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.visible

:[12]
popenv [11]
call.i instance_destroy(argc=0)
popz.v

:[13]
push.v self.ki_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[14]
push.v self.king_drink
conv.v.b
bf [24]

:[15]
push.v self.ki_actor
pushi.e -9
pushenv [23]

:[16]
push.v self.x
pushi.e 1380
cmp.i.v LT
bf [22]

:[17]
push.v self.hspeed
pushi.e 3
cmp.i.v LT
bf [19]

:[18]
pushi.e 3
pop.v.i self.hspeed

:[19]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed
push.v self.y
push.v self.ystart
pushi.e 60
sub.i.v
cmp.v.v GTE
bf [21]

:[20]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[21]
b [23]

:[22]
pushi.e 0
pop.v.i self.hspeed

:[23]
popenv [16]
b [end]

:[24]
push.v 98.xstart
pop.v.v local.xpos
push.v 98.ystart
pop.v.v local.ypos
push.v self.ki_actor
pushi.e -9
pushenv [30]

:[25]
push.v self.x
pushloc.v local.xpos
cmp.v.v GT
bf [29]

:[26]
push.v self.y
pushloc.v local.ypos
cmp.v.v LTE
bf [28]

:[27]
pushloc.v local.ypos
pushi.e 0
conv.i.v
push.v self.y
pushi.e 4
add.i.v
call.i clamp(argc=3)
pop.v.v self.y

:[28]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
b [30]

:[29]
pushi.e 0
pop.v.i self.hspeed
pushloc.v local.xpos
pop.v.v self.x

:[30]
popenv [25]

:[end]