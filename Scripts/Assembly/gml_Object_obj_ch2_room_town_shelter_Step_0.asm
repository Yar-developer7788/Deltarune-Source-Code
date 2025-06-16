.localvar 2 arguments
.localvar 341 facing 17301

:[0]
push.v self.con
pushi.e -1
cmp.i.v GT
bf [9]

:[1]
push.v self.snowy
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
push.v self.snowy
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v self.monsterkid
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[6]
push.v self.monsterkid
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]

:[9]
push.v 82.y
pushi.e 1130
cmp.i.v GTE
bf [15]

:[10]
push.v 82.x
pushi.e 80
cmp.i.v GT
bf [12]

:[11]
push.v 82.x
pushi.e 230
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [24]

:[17]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
push.v self.snowy
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.monsterkid
pushi.e -9
pop.v.i [stacktop]self.visible
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v 82.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [19]

:[18]
push.v 82.x
pushi.e 30
sub.i.v
b [20]

:[19]
push.v 82.x
pushi.e 30
add.i.v

:[20]
pop.v.v self.susiegox
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v 82.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [22]

:[21]
push.s "l"@6707
conv.s.v
b [23]

:[22]
push.s "r"@6696
conv.s.v

:[23]
pop.v.v local.facing
pushloc.v local.facing
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.sux
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.suy
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushloc.v local.facing
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 2
pop.v.i self.sn
pushi.e 893
conv.i.v
pushi.e 1130
conv.i.v
pushi.e 135
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sn_actor
push.s "snowy"@35617
conv.s.v
push.v self.sn_actor
push.v self.sn
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 952
push.v self.sn_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 3
pop.v.i self.mk
pushi.e 893
conv.i.v
pushi.e 1130
conv.i.v
pushi.e 170
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mk_actor
push.s "monster_kid"@35625
conv.s.v
push.v self.mk_actor
push.v self.mk
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 957
push.v self.mk_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v

:[24]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [40]

:[25]
pushi.e 2
pop.v.i self.con
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_61_0"@35626
conv.s.v
push.s "* You think it's true? You really think there's..../%"@35627
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_68_0"@35628
conv.s.v
push.s "* What^1, you chicken? Haha^1, you gotta beak and wings? Like a chicken?/%"@35629
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_75_0"@35630
conv.s.v
push.s "* ..^1. no..^1. just.../%"@35631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_82_0"@35632
conv.s.v
push.s "* I ain't afraid^1! Only kids believe that stuff!/%"@35633
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_89_0"@35634
conv.s.v
push.s "* ..^1. b-but Kris.../%"@35635
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_96_0"@35636
conv.s.v
push.s "* You gonna be a weenie like Kris!?/%"@35637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.sux
pushi.e 160
cmp.i.v LT
bf [32]

:[26]
push.v self.sux
pushi.e 50
cmp.i.v GT
bf [28]

:[27]
push.v self.suy
pushi.e 1116
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 16
conv.i.v
push.v self.suy
pushi.e 33
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 33
pop.v.i self.sux

:[31]
b [37]

:[32]
push.v self.sux
pushi.e 260
cmp.i.v LT
bf [34]

:[33]
push.v self.suy
pushi.e 1116
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 16
conv.i.v
push.v self.suy
pushi.e 265
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 265
pop.v.i self.sux

:[37]
push.v self.suy
pushi.e 1148
cmp.i.v LT
bf [39]

:[38]
pushi.e 16
conv.i.v
pushi.e 1152
conv.i.v
push.v self.sux
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v

:[39]
pushi.e 45
conv.i.v
pushi.e 1152
conv.i.v
pushi.e 152
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 25
conv.i.v
pushi.e 1148
conv.i.v
pushi.e 152
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_109_0"@35638
conv.s.v
push.s "\\EV* You wanna say that again?/%"@35639
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 954
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 959
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_126_0"@35640
conv.s.v
push.s "* Susie. Didn't see ya there./%"@35641
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 25
conv.i.v
push.d 0.25
conv.d.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_138_0"@35642
conv.s.v
push.s "\\EW* Wow^1, really something SCARY in there^1, huh?/%"@35643
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_145_0"@35644
conv.s.v
push.s "* Uhh--/%"@35645
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 25
conv.i.v
push.d 0.25
conv.d.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_157_0"@35646
conv.s.v
push.s "\\EW* Sounds to me like you'd better worry.../%"@35647
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 25
conv.i.v
push.d 0.25
conv.d.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.v self.sn
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.mk
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 4
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
pushi.e 856
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.3
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_188_0"@35648
conv.s.v
push.s "\\EX* About what's OUT HERE^1, first./%"@35649
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_192_0"@35650
conv.s.v
push.s "* AHHHHHHHHHHH!!!!!!!!/%"@35651
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[40]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
pushi.e 5
pop.v.i self.con
push.v self.sn_actor
pushi.e -9
pushenv [46]

:[45]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i path_start(argc=4)
popz.v

:[46]
popenv [45]
push.v self.mk_actor
pushi.e -9
pushenv [48]

:[47]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i path_start(argc=4)
popz.v

:[48]
popenv [47]

:[49]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [96]

:[50]
push.v self.sn_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [70]

:[51]
push.v self.sn_actor
pushi.e -9
pushenv [69]

:[52]
push.v self.direction
pushi.e 136
cmp.i.v GTE
bf [54]

:[53]
push.v self.direction
pushi.e 225
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 955
pop.v.i self.sprite_index

:[57]
push.v self.direction
pushi.e 46
cmp.i.v GTE
bf [59]

:[58]
push.v self.direction
pushi.e 135
cmp.i.v LTE
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 952
pop.v.i self.sprite_index

:[62]
push.v self.direction
pushi.e 306
cmp.i.v GTE
bt [64]

:[63]
push.v self.direction
pushi.e 45
cmp.i.v LTE
b [65]

:[64]
push.e 1

:[65]
bf [67]

:[66]
pushi.e 956
pop.v.i self.sprite_index

:[67]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
cmp.v.v LTE
bf [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
popenv [52]

:[70]
push.v self.mk_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [90]

:[71]
push.v self.mk_actor
pushi.e -9
pushenv [89]

:[72]
push.v self.direction
pushi.e 136
cmp.i.v GTE
bf [74]

:[73]
push.v self.direction
pushi.e 225
cmp.i.v LTE
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 961
pop.v.i self.sprite_index

:[77]
push.v self.direction
pushi.e 46
cmp.i.v GTE
bf [79]

:[78]
push.v self.direction
pushi.e 135
cmp.i.v LTE
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 957
pop.v.i self.sprite_index

:[82]
push.v self.direction
pushi.e 306
cmp.i.v GTE
bt [84]

:[83]
push.v self.direction
pushi.e 45
cmp.i.v LTE
b [85]

:[84]
push.e 1

:[85]
bf [87]

:[86]
pushi.e 960
pop.v.i self.sprite_index

:[87]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
cmp.v.v LTE
bf [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [72]

:[90]
push.v self.sn_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [93]

:[91]
push.v self.mk_actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [93]

:[92]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[96]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [98]

:[97]
pushi.e 50
pop.v.i self.con
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_278_0"@35652
conv.s.v
push.s "\\EV* .../"@3840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_279_0"@35653
conv.s.v
push.s "\\E1* You OK^1, Kris?/%"@35654
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_284_0"@35655
conv.s.v
push.s "\\E0* ...What's...the deal with this place?/%"@35656
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_shelter_slash_Step_0_gml_293_0"@35657
conv.s.v
push.s "\\E2* Well^1, you don't gotta talk about it./%"@35658
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
push.v 82.y
pushi.e 6
sub.i.v
push.v self.susiegox
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[98]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [100]

:[99]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [101]

:[100]
push.e 0

:[101]
bf [end]

:[102]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 315
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.con

:[end]