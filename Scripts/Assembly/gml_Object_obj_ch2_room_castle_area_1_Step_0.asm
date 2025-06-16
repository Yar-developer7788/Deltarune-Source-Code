.localvar 2 arguments
.localvar 36185 recruited_all 17590
.localvar 36186 recruited_none 17591

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
pop.v.b local.recruited_all
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 0
cmp.i.v EQ
pop.v.b local.recruited_none
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 286
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 767
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.actor_count
pushi.e 3
add.i.v
pop.v.v self.tr
pushi.e 893
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 463
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tr_actor
push.s "trashy"@36189
conv.s.v
push.v self.tr_actor
push.v self.tr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 1267
push.v self.tr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_c_var(argc=2)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 286
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[6]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 225
conv.i.v
pushi.e 370
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
pushi.e 207
conv.i.v
pushi.e 225
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_59_0"@36190
conv.s.v
push.s "\\E1* So This Is Your \"Castle Town\"/"@36191
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_60_0"@36192
conv.s.v
push.s "\\ED* It's/%"@36193
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushloc.v local.recruited_all
conv.v.b
bf [8]

:[7]
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_70_0"@36194
conv.s.v
push.s "\\EO* Not Bad/"@36195
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_71_0"@36196
conv.s.v
push.s "\\E1* Kris^1, Susie.../"@36197
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_72_0"@36198
conv.s.v
push.s "\\ED* On Behalf Of Everyone I Oppressed/"@36199
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_73_0"@36200
conv.s.v
push.s "\\EB* Thank You/%"@36201
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_81_0"@36202
conv.s.v
push.s "\\EC* I Am Going To Be Your Wacky Roommate Now/%"@36203
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 14
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[8]
pushloc.v local.recruited_all
conv.v.b
not.b
bf [10]

:[9]
pushloc.v local.recruited_none
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_97_0"@36204
conv.s.v
push.s "\\EF* Wait/%"@36205
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_104_0"@36206
conv.s.v
push.s "\\EE* Where's Nubert/%"@36207
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_111_0"@36208
conv.s.v
push.s "\\E5* Nubert..^1. Nuby..^1. Where Are You/%"@36209
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.tr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
pushi.e 463
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_126_0"@36210
conv.s.v
push.s "* He said he wouldn't come unless everybody else did.../%"@36211
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.tr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 10
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
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_142_0"@36212
conv.s.v
push.s "\\E4* Nubert/"@36213
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_143_0"@36214
conv.s.v
push.s "\\EB* A Hero Until The End/%"@36215
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_150_0"@36216
conv.s.v
push.s "\\EE* Kris.../"@36217
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_151_0"@36218
conv.s.v
push.s "\\EB* You Truced Your Best I Know/%"@36219
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 12
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
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
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_161_0"@36220
conv.s.v
push.s "\\EA* Oh Well/"@36221
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_162_0"@36222
conv.s.v
push.s "\\E1* It Seems Like A Wonderful Town/%"@36223
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 6
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v

:[13]
pushloc.v local.recruited_none
conv.v.b
bf [15]

:[14]
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_176_0"@36224
conv.s.v
push.s "\\E1* Magnificent/"@36225
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_177_0"@36226
conv.s.v
push.s "\\ED* The Population Density Is So Wonderfully Low/%"@36227
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_185_0"@36228
conv.s.v
push.s "\\EC* I Bet The Swatchlings Will Love This/%"@36229
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_196_0"@36230
conv.s.v
push.s "\\ED* Where Are The Swatchlings Anyhow/%"@36231
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_203_0"@36232
conv.s.v
push.s "\\EE* Or Tasque Manager/%"@36233
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_210_0"@36234
conv.s.v
push.s "\\E5* Or Even Regular Tasque/%"@36235
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_220_0"@36236
conv.s.v
push.s "\\E2* Hey Kris Where Is Everyone Else/%"@36237
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.tr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
pushi.e 463
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_235_0"@36238
conv.s.v
push.s "* Don't worry^1, Queen^1! I'm here!/"@36239
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_236_0"@36240
conv.s.v
push.s "* Me^1, and only me!/%"@36241
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.tr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_246_0"@36242
conv.s.v
push.s "\\E5* .../%"@35466
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_254_0"@36243
conv.s.v
push.s "\\EB* Well I Guess I'll/"@36244
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_255_0"@36245
conv.s.v
push.s "\\EB* \"Go To My Room\"/"@36246
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_256_0"@36247
conv.s.v
push.s "\\E5* Ha Ha/%"@36248
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v

:[15]
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
pushi.e 99
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 387
pop.v.v [array]self.flag
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [22]

:[21]
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v

:[22]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact

:[23]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [27]

:[24]
pushglb.v global.plot
pushi.e 7
cmp.i.v LTE
bf [27]

:[25]
pushi.e -5
pushi.e 433
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.con
pushi.e 10
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [35]

:[29]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [35]

:[30]
push.v 82.y
pushi.e 40
cmp.i.v LTE
bf [32]

:[31]
push.v 82.runcounter
pushi.e 5
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 11
pop.v.i self.con
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 433
pop.v.v [array]self.flag
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_298_0"@36249
conv.s.v
push.s "\\E0* Hey Kris^1, uh^1, you really gonna walk everywhere so slowly?/"@36250
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_299_0"@36251
conv.s.v
push.s "\\EK* I know you're kinda^1, uh^1, taking it in^1, but you can run^1, y'know?/"@36252
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_area_1_slash_Step_0_gml_301_0"@36253
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* (You remembered something about the ~1 button.)/%"@36254
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
call.i gml_Script_d_make(argc=0)
pop.v.v self.d

:[35]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [37]

:[36]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [38]

:[37]
push.e 0

:[38]
bf [end]

:[39]
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]