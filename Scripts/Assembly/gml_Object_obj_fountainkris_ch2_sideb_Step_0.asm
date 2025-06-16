.localvar 2 arguments
.localvar 6706 d 6207
.localvar 10437 _n 6212

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.shortened
conv.v.b
not.b
bf [3]

:[2]
pushi.e 0
pop.v.i self.JA_XOFF
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [4]

:[3]
pushi.e 9
pop.v.i self.con
push.v self.y
pushi.e 220
sub.i.v
pop.v.v self.y

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
push.v self.imageanimator
pop.v.v self.image_index
push.v self.imageanimator
push.d 0.1
add.d.v
pop.v.v self.imageanimator
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 5
pop.v.i self.con
pushi.e 42
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_36_0"@14400
conv.s.v
push.s "(It was as if your very SOUL was glowing...)/%"@14401
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 80
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v

:[10]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [17]

:[16]
pushi.e 9
pop.v.i self.con
push.s "sneo"@9289
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_53_0"@14402
conv.s.v
push.s "* NOT!!!/%"@14403
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v local.d
pushi.e 0
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.side

:[17]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e 10
pop.v.i self.con
push.v self.x
pop.v.v 82.x
push.v self.y
pop.v.v 82.y
push.v self.sneo
pushi.e -4
cmp.i.v EQ
bf [23]

:[22]
pushi.e 697
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
pushi.e 255
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.sneo
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.myself
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.facing
pushi.e 4
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.shadow_amount
pushi.e 30
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[23]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [30]

:[24]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v self.y
pushi.e 140
sub.i.v
cmp.v.v GTE
bf [30]

:[25]
pushi.e 12
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sneo
pushi.e -9
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[27]
popenv [26]
pushi.e 0
pop.v.b self.draw_kris
pushi.e 82
pushenv [29]

:[28]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.fun
pushi.e 540
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -20
pop.v.i self.hspeed
push.d 0.8
pop.v.d self.friction

:[29]
popenv [28]
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[30]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [40]

:[31]
push.v self.shortened
conv.v.b
not.b
bf [39]

:[32]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.gravity
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[34]
push.v self.sneo
pushi.e -9
pushenv [36]

:[35]
pushi.e -2
pop.v.i self.gravity

:[36]
popenv [35]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [38]

:[37]
pushi.e 14
pop.v.i self.con
pushi.e 0
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 460
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.x
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.y

:[38]
b [40]

:[39]
pushi.e 15
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 33
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
push.s "out"@14331
conv.s.v
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
pushi.e 200
add.i.v
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
push.s "x"@50
conv.s.v
push.v self.sneo
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v

:[40]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [48]

:[41]
pushi.e 4
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.gravity
push.v self.sneo_fall_sfx
conv.v.b
not.b
bf [44]

:[42]
push.v self.sneo_fall_timer
push.e 1
add.i.v
pop.v.v self.sneo_fall_timer
push.v self.sneo_fall_timer
pushi.e 15
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.b self.sneo_fall_sfx
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[44]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
push.v self.y
pushi.e 140
sub.i.v
cmp.v.v GTE
bf [48]

:[45]
pushi.e 15
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sneo
pushi.e -9
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[47]
popenv [46]
pushi.e 33
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[48]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [56]

:[49]
pushi.e 17
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "spamton_neo_meeting.ogg"@14408
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "shadow_amount"@14404
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.shortened
conv.v.b
not.b
bf [51]

:[50]
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_193_0"@14410
conv.s.v
push.s "* LET ME SAY/"@14411
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_194_0"@14412
conv.s.v
push.s "* LET ME SAY [Thanks ]/"@14413
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_195_0"@14414
conv.s.v
push.s "* THANKS TO YOUR [Total Jackass stunts] I HAVE [Becomed] NEO./"@14415
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_196_0"@14416
conv.s.v
push.s "* AND NOW IT'S MY [Mansion]^1! MY [City]^1! MY [World]!/%"@14417
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 22
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_205_0"@14418
conv.s.v
push.s "* SO WHY ARE YOU [Stealing] THE [Fountain]!?/"@14419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_206_0"@14420
conv.s.v
push.s "* TO [$!$!] ME OVER RIGHT AT THE [Good part]!? WHAT ARE YOU^1, A [Gameshow Host]!?/%"@14421
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_215_0"@14422
conv.s.v
push.s "* AH^1, KID^1, FORGET IT. I'M AN [HonestMan]./"@14423
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_216_0"@14424
conv.s.v
push.s "* I'LL LET YOU [Pay] YOUR WAY OUT OF THIS ONE!!/%"@14425
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_225_0"@14426
conv.s.v
push.s "* [Pay].../%"@14427
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "sneo"@9289
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_fountainkris_ch2_sideb_slash_Step_0_gml_238_0"@14428
conv.s.v
push.s "* WITH YOUR [Rapidly-Shrinking] LIFE!!!/%"@14429
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[51]
push.v self.shortened
conv.v.b
bf [53]

:[52]
pushi.e 3
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "headforceframe"@14409
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v

:[53]
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 41
conv.i.v
push.s "partmode"@14405
conv.s.v
push.v self.sneo
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 249
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
pop.v.i local._n
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [55]

:[54]
pushi.e 0
conv.i.v
push.d 1.3
pushloc.v local._n
pushi.e 15
conv.i.d
div.d.v
add.v.d
push.s "pitch"@9842
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [54]

:[55]
popz.i
push.s "free"@9835
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[56]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [58]

:[57]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [77]

:[60]
pushi.e 19
pop.v.i self.con
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 82
pushenv [62]

:[61]
pushi.e 0
pop.v.i self.visible

:[62]
popenv [61]
push.v 82.x
pop.v.v self.savekrisx
push.v 82.y
pop.v.v self.savekrisy
pushi.e 0
pop.v.b self.draw_fountain
pushi.e 232
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [66]

:[63]
pushi.e 232
pushenv [65]

:[64]
pushi.e 3
pop.v.i self.adjust

:[65]
popenv [64]

:[66]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [68]

:[67]
push.v self.debug_skip_battle
pushi.e 1
cmp.b.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 21
pop.v.i self.con
exit.i

:[71]
pushi.e -5
pushi.e 34
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.tempflag

:[73]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "spamton_neo_mix_ex_wip.ogg"@14431
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
push.i 231204
setowner.e
pushi.e 571
conv.i.v
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.sneo
pushi.e 1
conv.i.v
pushi.e 61
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v
push.v self.shortened
conv.v.b
bf [74]

:[74]
pushi.e 868
pushenv [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
popenv [75]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag

:[77]
push.v self.con
pushi.e 21
cmp.i.v EQ
bt [82]

:[78]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [80]

:[79]
push.v self.forcend
pushi.e 1
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
b [83]

:[82]
push.e 1

:[83]
bf [92]

:[84]
pushi.e 22
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 231204
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 456
pop.v.v [array]self.flag
pushi.e 371
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
pushi.e 232
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v
push.v 82.x
pop.v.v self.savekrisx
push.v 82.y
pop.v.v self.savekrisy
pushi.e 697
pushenv [88]

:[87]
pushi.e 9999
pop.v.i self.x

:[88]
popenv [87]
pushi.e 21
conv.i.v
call.i gml_Script_scr_weaponget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 468
pop.v.v [array]self.flag

:[90]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemget(argc=1)
popz.v

:[92]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [94]

:[93]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [95]

:[94]
push.e 0

:[95]
bf [end]

:[96]
pushi.e 99
pop.v.i self.con
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 233
conv.i.v
push.v self.y
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self._event
push.v self.blackall
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self._event
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]