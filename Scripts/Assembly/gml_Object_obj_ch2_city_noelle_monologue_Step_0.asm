.localvar 2 arguments
.localvar 35499 exit_forcefield 17272
.localvar 35521 max_timer 17274

:[0]
push.v self.init_forcefields
conv.v.b
not.b
bf [6]

:[1]
pushi.e 1
pop.v.b self.init_forcefields
pushi.e 1129
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[2]
pushi.e 1129
pushenv [5]

:[3]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [5]

:[4]
pushi.e 1
pop.v.i self.stayVisible

:[5]
popenv [3]

:[6]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [11]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 1127
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [10]

:[9]
push.i 173930
setowner.e
push.v self.i
pushi.e 1127
conv.i.v
call.i instance_find(argc=2)
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buttonX
push.i 173931
setowner.e
push.v self.i
pushi.e 1127
conv.i.v
call.i instance_find(argc=2)
pushi.e -9
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.buttonY
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
pushi.e 1
conv.b.v
push.v self.buttonX
call.i gml_Script_scr_array_sort(argc=2)
pop.v.v self.buttonX
pushi.e 1
conv.b.v
push.v self.buttonY
call.i gml_Script_scr_array_sort(argc=2)
pop.v.v self.buttonY
pushi.e 1
pop.v.i self.init

:[11]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v 82.x
pushi.e 150
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1303
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_silhouette
push.v self.no_actor
push.v self.no_silhouette
pushi.e -9
pop.v.v [stacktop]self.target_char
pushi.e 287
conv.i.v
pushi.e 240
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.exit_forcefield
pushloc.v local.exit_forcefield
pushi.e -9
pushenv [17]

:[16]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[17]
popenv [16]

:[18]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [22]

:[19]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 1
pop.v.i 63.zurasu

:[21]
pushi.e 10
pop.v.i self.con
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_32_0"@35500
conv.s.v
push.s "\\E2* Gosh^1, that was close^1, wasn't it^1, Kris...?/%"@35501
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 216
conv.i.v
pushi.e 270
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_delaywalkdirect(argc=4)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 45
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_49_0"@35502
conv.s.v
push.s "\\E1* This..^1. Strange world..^1. this big city.../"@35503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_50_0"@35504
conv.s.v
push.s "\\E9* It's so wild..^1. It kind of makes my head spin./%"@35505
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 729
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_59_0"@35506
conv.s.v
push.s "\\E9* ...?/%"@35507
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
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_71_0"@35508
conv.s.v
push.s "\\E2* Looks like another puzzle.../%"@35509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_noelle_monologue_slash_Step_0_gml_78_0"@35510
conv.s.v
push.s "\\E9* Maybe if I go..^1. down..^1. here?/%"@35511
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
pushi.e 2
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
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
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.buttonY
pushi.e 270
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.buttonY
pushi.e -1
pushi.e 0
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 741
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[22]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [25]

:[23]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [25]

:[24]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 11
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[28]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [30]

:[29]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 14
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.buttonY
pushi.e -1
pushi.e 1
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 161
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 160
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.buttonY
pushi.e 1355
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[33]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 16
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.buttonY
pushi.e 1700
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.buttonY
pushi.e 1700
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 741
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 2
push.v [array]self.buttonY
pushi.e -1
pushi.e 2
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 2
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[38]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [40]

:[39]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 19
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 3
push.v [array]self.buttonY
pushi.e -1
pushi.e 3
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 3
push.v [array]self.buttonY
pushi.e 2780
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.buttonY
pushi.e 2780
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 741
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.buttonY
pushi.e 2970
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[43]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [45]

:[44]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 21
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 130
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.buttonY
pushi.e -1
pushi.e 4
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 6
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.buttonY
pushi.e 4330
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[48]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [51]

:[49]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [51]

:[50]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 23
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.buttonY
pushi.e 4610
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 5
push.v [array]self.buttonY
pushi.e 4610
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 741
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 5
push.v [array]self.buttonY
pushi.e -1
pushi.e 5
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "young_noelle"@35490
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 81
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 5
push.v [array]self.buttonY
pushi.e 5327
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 8
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[54]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [56]

:[55]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 25
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i global.fc
pushi.e -1
conv.i.v
push.s "young_noelle"@35490
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "wait_ready"@35512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 130
conv.i.v
pushi.e -1
pushi.e 6
push.v [array]self.buttonY
pushi.e -1
pushi.e 6
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 10
conv.i.v
push.s "text_con"@35496
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 6
push.v [array]self.buttonY
pushi.e 6500
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "wait_ready"@35512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[59]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [62]

:[60]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [62]

:[61]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i global.fc
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "wait_ready"@35512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 7
push.v [array]self.buttonY
pushi.e -1
pushi.e 7
push.v [array]self.buttonX
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.b.v
push.s "pause_kris"@35497
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "wait_ready"@35512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[65]
push.v self.pause_kris
conv.v.b
bf [67]

:[66]
pushi.e 0
pop.v.b self.pause_kris
pushi.e 1
pop.v.i global.interact

:[67]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [71]

:[68]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [71]

:[69]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.v self.wait_ready
conv.v.b
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 34
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.b 82.visible
pushi.e 1
push.v self.kr_actor
pushi.e -9
pop.v.b [stacktop]self.visible
push.v 82.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[74]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [77]

:[75]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [77]

:[76]
push.v self.wait_ready
conv.v.b
b [78]

:[77]
push.e 0

:[78]
bf [83]

:[79]
pushi.e 35
pop.v.i self.con
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 0
conv.b.v
push.s "wait_ready"@35512
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "auto_continue"@35491
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 5
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 20
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
pushi.e 6796
conv.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 6796
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_scr_directOverTime(argc=3)
pushi.e 4
cmp.i.v LTE
bf [81]

:[80]
pushi.e 4
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
b [82]

:[81]
pushi.e 4
conv.i.v
pushi.e 6796
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_scr_directOverTime(argc=3)
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v

:[82]
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_348_0"@35513
conv.s.v
push.s "\\E6* (Sigh...)/%"@35514
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_352_0"@35515
conv.s.v
push.s "\\E4* (Kris is the only one who knows how weird I am.)/"@35516
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_353_0"@35517
conv.s.v
push.s "\\E8* (It's not fair^1, y'know!?)/%"@35518
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_360_0"@35519
conv.s.v
push.s "\\E4* (Everyone knows how weird YOU are. Fahahaha.)/%"@35520
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
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[83]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [85]

:[84]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 94
pop.v.i global.plot

:[88]
push.v self.auto_continue
conv.v.b
bf [107]

:[89]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [91]

:[90]
pushi.e 1
pop.v.i 63.zurasu
pushi.e 0
pop.v.i 63.side

:[91]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [107]

:[92]
pushi.e 0
pop.v.i 64.skippable
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [106]

:[93]
push.v self.msgtimer
push.e 1
add.i.v
pop.v.v self.msgtimer
pushi.e 60
pop.v.i local.max_timer
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [101]

:[94]
push.v self.text_con
pushi.e 3
cmp.i.v EQ
bt [96]

:[95]
push.v self.text_con
pushi.e 5
cmp.i.v EQ
b [97]

:[96]
push.e 1

:[97]
bf [99]

:[98]
pushi.e 120
pop.v.i local.max_timer

:[99]
push.v self.text_con
pushi.e 9
cmp.i.v EQ
bf [101]

:[100]
pushi.e 90
pop.v.i local.max_timer

:[101]
push.v self.msgtimer
pushloc.v local.max_timer
cmp.v.v GTE
bf [105]

:[102]
pushi.e 64
pushenv [104]

:[103]
pushi.e 1
pop.v.i self.forcebutton1

:[104]
popenv [103]
pushi.e 0
pop.v.i self.msgtimer

:[105]
b [107]

:[106]
pushi.e 0
pop.v.i self.msgtimer

:[107]
push.v self.custom_delay
pushi.e 0
cmp.i.v GT
bf [109]

:[108]
pushi.e 1
pop.v.i self.customcon
push.i 68097
setowner.e
push.v self.custom_delay
pushi.e -1
pushi.e 9
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.custom_delay

:[109]
push.v self.allow_move
conv.v.b
bf [112]

:[110]
pushi.e 0
pop.v.b self.allow_move
pushglb.v global.interact
conv.v.b
not.b
pop.v.b global.interact
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
pushi.e 0
pop.v.b 82.visible
pushi.e 1
push.v self.kr_actor
pushi.e -9
pop.v.b [stacktop]self.visible
push.v 82.x
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.x
push.v 82.y
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.y

:[112]
push.v self.young_noelle
pushi.e 0
cmp.i.v NEQ
bf [114]

:[113]
push.v self.young_noelle
pushi.e 0
cmp.i.v LT
push.v self.no_silhouette
pushi.e -9
pop.v.b [stacktop]self.copy_sprite
pushi.e 0
pop.v.i self.young_noelle

:[114]
push.v self.text_con
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1
pop.v.i self.text_con
pushi.e 1
pop.v.b self.auto_continue
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_470_0"@35523
conv.s.v
push.s "* ...when I said this city makes my head spin.../"@35524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_471_0"@35525
conv.s.v
push.s "* I didn't mean in a bad way... you know?/"@35526
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_472_0"@35527
conv.s.v
push.s "* I always wanted to go someplace new^1, you know?/%"@35528
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[116]
push.v self.text_con
pushi.e 2
cmp.i.v EQ
bf [118]

:[117]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 3
pop.v.i self.text_con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_486_0"@35529
conv.s.v
push.s "* ..^1. And Dess..^1. always told me she'd take me./"@35530
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_487_0"@35531
conv.s.v
push.s "* Somewhere like this./"@35532
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_488_0"@35533
conv.s.v
push.s "* Somewhere with shining lights./%"@35534
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[121]
push.v self.text_con
pushi.e 4
cmp.i.v EQ
bf [123]

:[122]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [124]

:[123]
push.e 0

:[124]
bf [126]

:[125]
pushi.e 5
pop.v.i self.text_con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_502_0"@35535
conv.s.v
push.s "* ... don't you miss exploring, Kris?/"@35536
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_503_0"@35537
conv.s.v
push.s "* Back when the four of us were kids?/"@35538
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_504_0"@35539
conv.s.v
push.s "* Gosh, remember that night we explored the forest behind the graveyard?/%"@35540
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[126]
push.v self.text_con
pushi.e 6
cmp.i.v EQ
bf [128]

:[127]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
pushi.e 7
pop.v.i self.text_con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_518_0"@35541
conv.s.v
push.s "* Ha, I know we never found anything interesting back there.../"@35542
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_519_0"@35543
conv.s.v
push.s "* I mostly remember... Crying because I was scared./%"@35544
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[131]
push.v self.text_con
pushi.e 8
cmp.i.v EQ
bf [133]

:[132]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
pushi.e 9
pop.v.i self.text_con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_533_0"@35545
conv.s.v
push.s "* But for some reason I feel..^1. nostalgic thinking about it./"@35546
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_534_0"@35547
conv.s.v
push.s "* Dess wiping away my tears with Azzy's jacket.../"@35548
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_535_0"@35549
conv.s.v
push.s "* With warm sleeves that smelled like cinnamon./%"@35550
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[136]
push.v self.text_con
pushi.e 10
cmp.i.v EQ
bf [138]

:[137]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [139]

:[138]
push.e 0

:[139]
bf [end]

:[140]
pushi.e 11
pop.v.i self.text_con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_549_0"@35551
conv.s.v
push.s "* I guess I didn't mind being scared if it meant.../"@35552
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_noelle_monologue_slash_Step_0_gml_550_0"@35553
conv.s.v
push.s "* Someone would comfort me./%"@35554
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.zurasu
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[end]