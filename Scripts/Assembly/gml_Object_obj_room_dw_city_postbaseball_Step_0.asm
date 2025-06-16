.localvar 2 arguments
.localvar 21383 makeballoons 9466
.localvar 21384 bx 9467
.localvar 21385 by 9468
.localvar 6113 small_text 9469
.localvar 21409 checkchar 9471
.localvar 6685 remx 9472
.localvar 6686 remy 9473
.localvar 21417 nox 9475
.localvar 21451 failstate 9484
.localvar 21452 howmanymice 9485
.localvar 19940 done 9487
.localvar 6531 remtarget 9488

:[0]
pushi.e 0
pop.v.i local.makeballoons
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [6]

:[1]
pushi.e 10
pop.v.i self.balloonthreshold
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v 82.y
pushbltn.v builtin.room_height
pushi.e 320
sub.i.v
cmp.v.v LTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i local.makeballoons

:[6]
pushloc.v local.makeballoons
conv.v.b
bf [11]

:[7]
push.v self.balloontimer
push.e 1
add.i.v
pop.v.v self.balloontimer
push.v self.balloontimer
push.v self.balloonthreshold
cmp.v.v GTE
bf [11]

:[8]
pushi.e 0
pop.v.i self.balloontimer
pushi.e 0
pop.v.i local.bx
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
pop.v.v local.by
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [10]

:[9]
pushi.e 340
pushi.e 420
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 40
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 40
mul.i.v
pop.v.v local.bx

:[10]
pushi.e 318
conv.i.v
pushloc.v local.by
pushloc.v local.bx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.balloon
push.d -0.1
push.v self.balloon
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e -1
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.balloon
pushi.e -9
pop.v.v [stacktop]self.vspeed
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
push.v self.balloon
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.d 0.04
push.v self.balloon
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 1100000
push.v self.balloon
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.balloon
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.balloon
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.balloon
pushi.e -9
pop.v.i [stacktop]self.mode

:[11]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [93]

:[12]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [22]

:[16]
push.v 82.x
pushi.e 300
cmp.i.v LTE
bf [19]

:[17]
push.v 82.y
pushi.e 460
cmp.i.v GTE
bf [19]

:[18]
push.v 82.y
pushi.e 600
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2
pop.v.i self.con
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_68_0"@21386
conv.s.v
push.s "\\E3* Wait^1, I know^1! Umm^1, to turn off that force field.../%"@21387
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
pushi.e 30
conv.i.v
pushi.e 460
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
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
pushi.e 13
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "switchcon"@21353
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_86_0"@21388
conv.s.v
push.s "\\E2* You just stay standing on this switch!/"@21389
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_88_0"@21390
conv.s.v
push.s "\\E0* Huh./%"@21391
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
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
pushi.e 15
conv.i.v
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.x
pushi.e 4
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 24
conv.i.v
push.s "target"@6352
conv.s.v
push.v self.caterpillarral
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_105_0"@21392
conv.s.v
push.s "\\E2* Well^1, see ya later. \\f0 /%"@21393
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_106_0"@21394
conv.s.v
push.s "(W-wait, what did I volunteer for?)"@21395
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottommid"@6227
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 15
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 103
conv.i.v
call.i gml_Script_c_actortoobject(argc=1)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[24]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [32]

:[25]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [32]

:[26]
pushi.e 276
pushenv [29]

:[27]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [29]

:[28]
pushi.e 36
pop.v.i self.target
pushi.e 0
pop.v.i self.image_alpha

:[29]
popenv [27]
pushi.e 82
pushenv [31]

:[30]
pushi.e 1
pop.v.i self.visible

:[31]
popenv [30]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 287
conv.i.v
pushi.e 2200
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.entranceforcefield
pushi.e 6
push.v self.entranceforcefield
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.entranceforcefield
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e -4
pop.v.i self.rodeteacup

:[32]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [41]

:[33]
push.v 82.y
pushi.e 450
cmp.i.v GTE
bf [35]

:[34]
push.v 82.y
pushi.e 460
cmp.i.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [41]

:[37]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [41]

:[38]
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 103
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
call.i gml_Script_camerax(argc=0)
pushi.e 50
sub.i.v
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 470
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.y

:[41]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [46]

:[42]
pushi.e 12
pop.v.i self.con
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 460
conv.i.v
push.v 82.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.rodeteacup
pushi.e 3
cmp.i.v LT
bf [44]

:[43]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_161_0"@21397
conv.s.v
push.s "\\E8* (W..^1. wait for me!)/%"@21398
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
b [45]

:[44]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_167_0"@21399
conv.s.v
push.s "\\EH* So^1, umm..^1. why were you all..^1. riding a teacup together?/"@21400
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_169_0"@21401
conv.s.v
push.s "\\E0* Ugh. Balloons./"@21402
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_171_0"@21403
conv.s.v
push.s "\\E2* Balloons?/"@21404
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_173_0"@21405
conv.s.v
push.s "\\E1* Trust me..^1. you dodged a bullet./"@21406
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_175_0"@21407
conv.s.v
push.s "\\E2* Umm... okay!/%"@21408
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[45]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.y
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[46]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [68]

:[47]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [68]

:[48]
pushi.e 13
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [54]

:[49]
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [54]

:[51]
push.v self.i
pushi.e 276
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.checkchar
pushloc.v local.checkchar
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [53]

:[52]
pushloc.v local.checkchar
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[53]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [50]

:[54]
push.v self.caterpillarnoe
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [58]

:[55]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarnoe
pushi.e 24
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [57]

:[56]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[57]
b [59]

:[58]
pushi.e 1
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 24
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 1
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[59]
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.remx
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.remy
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.x
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 36
push.v self.caterpillarral
pushi.e -9
pop.v.i [stacktop]self.target
pushloc.v local.remx
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local.remy
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 893
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 82
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.visible

:[63]
popenv [62]
pushi.e 276
pushenv [65]

:[64]
pushi.e 1
pop.v.i self.visible

:[65]
popenv [64]
pushi.e 240
pushenv [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
popenv [66]

:[68]
push.v self.switchcon
pushi.e 1
cmp.i.v EQ
bf [72]

:[69]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.forcefieldtopright
pushi.e -9
pushenv [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
popenv [70]
pushi.e 0
pop.v.i self.switchcon

:[72]
push.v self.switch2con
pushi.e 1
cmp.i.v EQ
bf [77]

:[73]
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.forcefieldright
pushi.e -9
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 448
pop.v.v [array]self.flag
pushi.e 2
pop.v.i self.switch2con
push.v self.con
pushi.e 10
cmp.i.v LT
bf [77]

:[76]
pushi.e 10
pop.v.i self.con

:[77]
push.v self.rodeteacup
pushi.e -3
cmp.i.v EQ
bf [79]

:[78]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e -2
pop.v.i self.rodeteacup

:[82]
push.v self.rodeteacup
pushi.e -2
cmp.i.v EQ
bf [84]

:[83]
call.i gml_Script_scr_cutscene_make(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_257_0"@21410
conv.s.v
push.s "* (You all jumped into one teacup.)/"@21411
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_258_0"@21412
conv.s.v
push.s "* (You heard a clicking sound.)/%"@21413
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait_box(argc=1)
popz.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 449
pop.v.v [array]self.flag
pushi.e -1
pop.v.i self.rodeteacup

:[84]
push.v self.rodeteacup
pushi.e -1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 1
pop.v.i self.rodeteacup
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[89]
push.v self.rodeteacup
pushi.e 1
cmp.i.v EQ
bf [93]

:[90]
push.v self.forcefieldtopleft
pushi.e -9
pushenv [92]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[92]
popenv [91]
pushi.e 2
pop.v.i self.rodeteacup

:[93]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [208]

:[94]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [97]

:[95]
push.v 82.x
pushi.e 640
cmp.i.v GTE
bf [97]

:[96]
pushi.e -5
pushi.e 447
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [102]

:[99]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.fireworkshotcon
pushi.e 224
pushenv [101]

:[100]
pushi.e 0
pop.v.i self.is_active

:[101]
popenv [100]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield
pushi.e 268
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bulletarea
pushi.e 66
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 4
push.v self.bulletarea
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.timer

:[102]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [107]

:[103]
pushi.e 276
pushenv [105]

:[104]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[105]
popenv [104]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 55
cmp.i.v GTE
bf [107]

:[106]
pushi.e 2
pop.v.i self.con
pushi.e 0
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 36
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 24
push.v self.caterpillarral
pushi.e -9
pop.v.i [stacktop]self.target

:[107]
push.v self.fireworkshotcon
pushi.e 1
cmp.i.v EQ
bf [110]

:[108]
push.v self.fireworktimer
push.e 1
add.i.v
pop.v.v self.fireworktimer
push.v self.fireworktimer
pushi.e 30
cmp.i.v GTE
bf [110]

:[109]
pushi.e 274
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 380
add.i.v
pushi.e 60
conv.i.v
call.i random(argc=1)
sub.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pushi.e 320
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_right_h(argc=0)
pushi.e 400
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.fireworktimer

:[110]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [121]

:[111]
pushi.e 276
pushenv [113]

:[112]
pushi.e 0
pop.v.b self.visible

:[113]
popenv [112]
push.v 82.x
pushi.e 2460
cmp.i.v GTE
bf [121]

:[114]
pushi.e 276
pushenv [116]

:[115]
pushi.e 1
pop.v.b self.visible

:[116]
popenv [115]
pushi.e 268
pushenv [118]

:[117]
call.i instance_destroy(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 277
pushenv [120]

:[119]
pushi.e 0
pop.v.i self.charcon

:[120]
popenv [119]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.fireworkshotcon

:[121]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [129]

:[122]
pushi.e 276
pushenv [125]

:[123]
push.v self.name
push.s "noelle"@74
cmp.s.v NEQ
bf [125]

:[124]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[125]
popenv [123]
pushi.e 255
pushenv [127]

:[126]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[127]
popenv [126]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
pushi.e 4
pop.v.i self.con

:[129]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [135]

:[130]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
pushi.e 1
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[135]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [139]

:[136]
pushi.e 1
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 103
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
call.i gml_Script_camerax(argc=0)
pushi.e 50
sub.i.v
push.v self.no_actor
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 266
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.y

:[139]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [141]

:[140]
pushi.e 12
pop.v.i self.con
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_380_0"@21415
conv.s.v
push.s "\\EK* Wait a sec..^1. Where's Noelle?/%"@21416
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
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
call.i min(argc=3)
pushi.e 60
sub.i.v
pop.v.v local.nox
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushloc.v local.nox
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_399_0"@21418
conv.s.v
push.s "\\E2* S-sorry^1, I..^1. I'd just never seen fireworks up close before.../"@21419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 34
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_401_0"@21420
conv.s.v
push.s "\\EY* Those bullets? What^1, you scared?/"@21421
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_403_0"@21422
conv.s.v
push.s "\\E3* Uh..^1. umm..^1. I guess so.../"@21423
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_404_0"@21424
conv.s.v
push.s "\\E4* (Maybe that's..^1. why I couldn't stop watching...?)/%"@21425
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.y
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[141]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [163]

:[142]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [163]

:[143]
pushi.e 13
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [149]

:[144]
pushi.e 0
pop.v.i self.i

:[145]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [149]

:[146]
push.v self.i
pushi.e 276
conv.i.v
call.i instance_find(argc=2)
pop.v.v local.checkchar
pushloc.v local.checkchar
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [148]

:[147]
pushloc.v local.checkchar
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[148]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [145]

:[149]
push.v self.caterpillarnoe
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [153]

:[150]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarnoe
pushi.e 24
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.target
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [152]

:[151]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[152]
b [154]

:[153]
pushi.e 1
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 24
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 1
push.v self.caterpillarnoe
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[154]
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.remx
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.remy
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.x
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 36
push.v self.caterpillarral
pushi.e -9
pop.v.i [stacktop]self.target
pushloc.v local.remx
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local.remy
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 893
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 82
pushenv [158]

:[157]
pushi.e 1
pop.v.i self.visible

:[158]
popenv [157]
pushi.e 276
pushenv [160]

:[159]
pushi.e 1
pop.v.i self.visible

:[160]
popenv [159]
pushi.e 240
pushenv [162]

:[161]
call.i instance_destroy(argc=0)
popz.v

:[162]
popenv [161]

:[163]
push.v self.switch1con
pushi.e 0
cmp.i.v GTE
bf [178]

:[164]
pushi.e 318
pushenv [166]

:[165]
pushi.e 1
pop.v.i self.breakable

:[166]
popenv [165]
push.v self.switch1con
pushi.e 1
cmp.i.v EQ
bf [174]

:[167]
push.v self.forcefield1
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [169]

:[168]
pushi.e 287
conv.i.v
pushi.e 160
conv.i.v
pushi.e 2860
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield1
pushi.e 10
push.v self.forcefield1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.forcefield1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.forcefield1
pushi.e -9
pop.v.i [stacktop]self.stayVisible
pushi.e 1
push.v self.forcefield1
pushi.e -9
pop.v.i [stacktop]self.ignorealpha
push.d 0.2
push.v self.forcefield1
pushi.e -9
pop.v.d [stacktop]self.image_alpha
b [173]

:[169]
push.v self.forcefield1
pushi.e -9
pushenv [172]

:[170]
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [172]

:[171]
push.v self.image_alpha
push.d 0.5
add.d.v
pop.v.v self.image_alpha

:[172]
popenv [170]

:[173]
b [178]

:[174]
push.v self.forcefield1
pushi.e -9
pushenv [177]

:[175]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [177]

:[176]
call.i instance_destroy(argc=0)
popz.v

:[177]
popenv [175]

:[178]
push.v self.switch2con
pushi.e 0
cmp.i.v GTE
bf [193]

:[179]
pushi.e 318
pushenv [181]

:[180]
pushi.e 1
pop.v.i self.breakable

:[181]
popenv [180]
push.v self.switch2con
pushi.e 1
cmp.i.v EQ
bf [189]

:[182]
push.v self.forcefield2
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [184]

:[183]
pushi.e 287
conv.i.v
pushi.e 160
conv.i.v
pushi.e 3120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.forcefield2
pushi.e 10
push.v self.forcefield2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.forcefield2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.forcefield2
pushi.e -9
pop.v.i [stacktop]self.stayVisible
pushi.e 1
push.v self.forcefield2
pushi.e -9
pop.v.i [stacktop]self.ignorealpha
b [188]

:[184]
push.v self.forcefield2
pushi.e -9
pushenv [187]

:[185]
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [187]

:[186]
push.v self.image_alpha
push.d 0.5
add.d.v
pop.v.v self.image_alpha

:[187]
popenv [185]

:[188]
b [193]

:[189]
push.v self.forcefield2
pushi.e -9
pushenv [192]

:[190]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [192]

:[191]
call.i instance_destroy(argc=0)
popz.v

:[192]
popenv [190]

:[193]
push.v self.switch3con
pushi.e 0
cmp.i.v GTE
bf [208]

:[194]
pushi.e 318
pushenv [196]

:[195]
pushi.e 1
pop.v.i self.breakable

:[196]
popenv [195]
push.v self.switch3con
pushi.e 1
cmp.i.v EQ
bf [204]

:[197]
push.v self.forcefield3
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [199]

:[198]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 120
conv.i.v
pushi.e 3600
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield3
pushi.e 1
push.v self.forcefield3
pushi.e -9
pop.v.i [stacktop]self.ignorealpha
b [203]

:[199]
push.v self.forcefield3
pushi.e -9
pushenv [202]

:[200]
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [202]

:[201]
push.v self.image_alpha
push.d 0.5
add.d.v
pop.v.v self.image_alpha

:[202]
popenv [200]

:[203]
b [208]

:[204]
push.v self.forcefield3
pushi.e -9
pushenv [207]

:[205]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [207]

:[206]
call.i instance_destroy(argc=0)
popz.v

:[207]
popenv [205]

:[208]
pushbltn.v builtin.room
pushi.e 145
cmp.i.v EQ
bf [end]

:[209]
push.v 82.x
pushi.e 420
cmp.i.v GT
bf [211]

:[210]
push.v self.blockleft
pushi.e 0
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [214]

:[213]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
pushi.e 280
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
popz.v
pushi.e 1
pop.v.i self.blockleft

:[214]
pushi.e -1
pushi.e 0
push.v [array]self.balloondestroyed
conv.v.b
bf [220]

:[215]
pushi.e -1
pushi.e 0
push.v [array]self.balloon
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [219]

:[216]
push.i 169605
setowner.e
pushi.e 318
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 120
sub.i.v
pushi.e -1
pushi.e 0
push.v [array]self.ballremx
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.balloon
push.i 235047
setowner.e
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.balloon
pushi.e -9
pop.v.i [stacktop]self.balloonid
pushi.e -1
pushi.e 0
push.v [array]self.balloon
pushi.e -9
pushenv [218]

:[217]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
call.i @@Other@@(argc=0)
pushi.e -9
pushi.e 0
push.v [array]self.ballremy
push.v self.y
push.s "y"@52
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v

:[218]
popenv [217]
push.i 169608
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.balloondestroyed
b [220]

:[219]
push.i 169608
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.balloondestroyed

:[220]
push.v self.switch1con
pushi.e 0
cmp.i.v GTE
bf [235]

:[221]
pushi.e 318
pushenv [223]

:[222]
pushi.e 1
pop.v.i self.breakable

:[223]
popenv [222]
push.v self.switch1con
pushi.e 1
cmp.i.v EQ
bf [231]

:[224]
push.v self.forcefield1
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [226]

:[225]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 80
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield1
pushi.e 1
push.v self.forcefield1
pushi.e -9
pop.v.i [stacktop]self.ignorealpha
b [230]

:[226]
push.v self.forcefield1
pushi.e -9
pushenv [229]

:[227]
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [229]

:[228]
push.v self.image_alpha
push.d 0.5
add.d.v
pop.v.v self.image_alpha

:[229]
popenv [227]

:[230]
b [235]

:[231]
push.v self.forcefield1
pushi.e -9
pushenv [234]

:[232]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [234]

:[233]
call.i instance_destroy(argc=0)
popz.v

:[234]
popenv [232]

:[235]
push.v self.switch2con
pushi.e 0
cmp.i.v GTE
bf [250]

:[236]
pushi.e 318
pushenv [238]

:[237]
pushi.e 1
pop.v.i self.breakable

:[238]
popenv [237]
push.v self.switch2con
pushi.e 1
cmp.i.v EQ
bf [246]

:[239]
push.v self.forcefield2
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [241]

:[240]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 16
conv.i.v
pushi.e 40
conv.i.v
pushi.e 980
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield2
pushi.e 1
push.v self.forcefield2
pushi.e -9
pop.v.i [stacktop]self.ignorealpha
b [245]

:[241]
push.v self.forcefield2
pushi.e -9
pushenv [244]

:[242]
push.v self.image_alpha
pushi.e 3
cmp.i.v LT
bf [244]

:[243]
push.v self.image_alpha
push.d 0.5
add.d.v
pop.v.v self.image_alpha

:[244]
popenv [242]

:[245]
b [250]

:[246]
push.v self.forcefield2
pushi.e -9
pushenv [249]

:[247]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [249]

:[248]
call.i instance_destroy(argc=0)
popz.v

:[249]
popenv [247]

:[250]
push.v self.blockforcefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [253]

:[251]
push.v self.pillar1
pushi.e -9
push.v [stacktop]self.completed
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
push.v self.blockforcefield
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TILE_BLOCKLAYER1"@21379
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[253]
push.v self.blockforcefield2
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [256]

:[254]
push.v self.pillar2
pushi.e -9
push.v [stacktop]self.completed
pushi.e 1
cmp.i.v EQ
bf [256]

:[255]
push.v self.blockforcefield2
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TILE_BLOCKLAYER2"@21380
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[256]
push.v self.blockforcefield3
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [259]

:[257]
push.v self.pillar3
pushi.e -9
push.v [stacktop]self.completed
pushi.e 1
cmp.i.v EQ
bf [259]

:[258]
push.v self.blockforcefield3
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TILE_BLOCKLAYER3"@21381
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[259]
push.v self.blockforcefield4
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [262]

:[260]
push.v self.bucketpillar
pushi.e -9
push.v [stacktop]self.completed
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
push.v self.blockforcefield4
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "TILE_BLOCKLAYER4"@21382
conv.s.v
call.i layer_set_visible(argc=2)
popz.v

:[262]
push.v self.minigamestartcon
pushi.e 0
cmp.i.v EQ
bf [265]

:[263]
push.v self.blockforcefield2
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [265]

:[264]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.timer
push.d 0.5
pop.v.d self.minigamestartcon

:[265]
push.v self.minigamestartcon
push.d 0.5
cmp.d.v EQ
bf [268]

:[266]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i global.interact
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [268]

:[267]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 1
pop.v.i self.minigamestartcon

:[268]
push.v self.minigamestartcon
pushi.e 1
cmp.i.v EQ
bf [270]

:[269]
pushi.e -999
pop.v.i self.minigamestartcon
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
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
pushi.e 12
conv.i.v
pushi.e 263
conv.i.v
pushi.e 1460
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 14
conv.i.v
pushi.e 264
conv.i.v
pushi.e 1416
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 16
conv.i.v
pushi.e 258
conv.i.v
pushi.e 1374
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 17
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
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
pushi.e 23
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_708_0"@21427
conv.s.v
push.s "\\E5* 20 more!? Damn^1, we're gonna be here forever!/"@21428
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_710_0"@21429
conv.s.v
push.s "\\E2* M..^1. maybe if we..^1. um^1, split up the work?/"@21430
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_712_0"@21431
conv.s.v
push.s "\\EK* Huh?/%"@21432
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_fadeout(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 275
conv.i.v
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
pushi.e 280
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "minigame"@15225
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[270]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [272]

:[271]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
b [273]

:[272]
push.e 0

:[273]
bf [275]

:[274]
push.v self.pillar3
pushi.e -9
push.v [stacktop]self.micerequired
pushi.e 2
sub.i.v
pop.v.v 74.miceheld

:[275]
push.v self.minigame
pushi.e 1
cmp.i.v EQ
bf [350]

:[276]
push.v self.minigamecon
pushi.e 0
cmp.i.v EQ
bf [288]

:[277]
pushi.e 1
pop.v.i global.interact
pushi.e 276
pushenv [279]

:[278]
call.i instance_destroy(argc=0)
popz.v

:[279]
popenv [278]
pushi.e 0
pop.v.i self.minigametimer
pushi.e 0
pop.v.i self.noelletimer
pushi.e 20
pop.v.i self.switchtimer
pushi.e 893
conv.i.v
pushi.e 260
conv.i.v
pushi.e 1380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susieactor
pushi.e 822
push.v self.susieactor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.susieactor
pushi.e -9
pushenv [281]

:[280]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[281]
popenv [280]
pushi.e 893
conv.i.v
pushi.e 260
conv.i.v
pushi.e 1290
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ralseiactor
pushi.e 795
push.v self.ralseiactor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.ralseiactor
pushi.e -9
pushenv [283]

:[282]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[283]
popenv [282]
pushi.e 893
conv.i.v
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelleactor
pushi.e 724
push.v self.noelleactor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.noelleactor
pushi.e -9
pushenv [285]

:[284]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v

:[285]
popenv [284]
pushi.e 893
pushenv [287]

:[286]
pushi.e 105
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mysolid
push.v self.sprite_index
push.v self.mysolid
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.mysolid
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.mysolid
call.i gml_Script_scr_darksize(argc=1)
popz.v

:[287]
popenv [286]
pushi.e 1
pop.v.i 82.cutscene
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v
pushi.e 190
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_fadein(argc=1)
popz.v
push.d 0.1
pop.v.d self.minigamecon

:[288]
push.v self.minigamecon
push.d 0.1
cmp.d.v EQ
bf [290]

:[289]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_781_0"@21440
conv.s.v
push.s "\\E0* I'll release the mice.../"@21441
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_782_0"@21442
conv.s.v
push.s "\\E4* Susie will break the balloons when they reach the top.../"@21443
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_783_0"@21444
conv.s.v
push.s "\\E8* And Kris^1, you catch them^1! Umm^1, if that's ok./"@21445
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_784_0"@21446
conv.s.v
push.s "\\E0* Ready...?/"@21447
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_785_0"@21448
conv.s.v
push.s "\\E4* Go!/%"@21449
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.d 0.2
pop.v.d self.minigamecon

:[290]
push.v self.minigamecon
push.d 0.2
cmp.d.v EQ
bf [292]

:[291]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [293]

:[292]
push.e 0

:[293]
bf [295]

:[294]
pushi.e 0
pop.v.i global.interact
push.i 231459
setowner.e
push.s "boxing_game.ogg"@21450
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 1.2
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 1
pop.v.i self.minigamecon

:[295]
push.v self.minigamecon
pushi.e 1
cmp.i.v EQ
bf [350]

:[296]
pushi.e 0
pop.v.i local.failstate
pushi.e 0
pop.v.i local.howmanymice
push.v 74.miceheld
pushi.e 318
conv.i.v
call.i instance_number(argc=1)
add.v.v
pop.v.v local.howmanymice
push.v 74.mousefailcon
pushi.e 0
cmp.i.v NEQ
bf [298]

:[297]
pushi.e 1
pop.v.i local.failstate

:[298]
push.v self.noelletimer
push.e 1
add.i.v
pop.v.v self.noelletimer
push.v self.noelletimer
pushi.e 15
cmp.i.v LT
bf [306]

:[299]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [301]

:[300]
pushi.e -6
pop.v.i self.noelletimer

:[301]
pushloc.v local.howmanymice
push.v self.pillar3
pushi.e -9
push.v [stacktop]self.micerequired
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [304]

:[302]
pushi.e -6
pop.v.i self.noelletimer
pushloc.v local.howmanymice
push.v self.pillar3
pushi.e -9
push.v [stacktop]self.micerequired
cmp.v.v GTE
bf [304]

:[303]
pushi.e 723
push.v self.noelleactor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[304]
pushloc.v local.failstate
conv.v.b
bf [306]

:[305]
pushi.e -6
pop.v.i self.noelletimer
pushi.e 717
push.v self.noelleactor
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[306]
push.v self.noelletimer
pushi.e 15
cmp.i.v EQ
bf [310]

:[307]
push.s "u"@6708
conv.s.v
push.v self.noelleactor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
push.v self.noelleactor
pushi.e -9
pushenv [309]

:[308]
pushi.e 16
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_jump_in_place(argc=2)
popz.v

:[309]
popenv [308]

:[310]
push.v self.noelletimer
pushi.e 23
cmp.i.v EQ
bf [313]

:[311]
pushloc.v local.failstate
pushi.e 0
cmp.i.v EQ
bf [313]

:[312]
pushi.e 1
pop.v.i 1321.ballooncon

:[313]
push.v self.noelletimer
pushi.e 32
cmp.i.v EQ
bf [315]

:[314]
push.s "r"@6696
conv.s.v
push.v self.noelleactor
call.i gml_Script_scr_actor_facing(argc=2)
popz.v
pushi.e -6
pop.v.i self.noelletimer

:[315]
push.v self.switchtimer
push.e 1
add.i.v
pop.v.v self.switchtimer
pushi.e 0
pop.v.i local.done
push.v 74.miceheld
push.v self.pillar3
pushi.e -9
push.v [stacktop]self.micerequired
cmp.v.v EQ
bf [317]

:[316]
pushi.e 1
pop.v.i local.done

:[317]
push.v self.switchtimer
pushi.e 59
cmp.i.v EQ
bf [319]

:[318]
pushloc.v local.done
conv.v.b
b [320]

:[319]
push.e 0

:[320]
bt [325]

:[321]
push.v self.switchtimer
pushi.e 106
cmp.i.v EQ
bf [323]

:[322]
pushloc.v local.done
conv.v.b
b [324]

:[323]
push.e 0

:[324]
b [326]

:[325]
push.e 1

:[326]
bf [328]

:[327]
pushi.e 0
pop.v.i self.switchtimer
pushi.e 2
pop.v.i self.minigame

:[328]
push.v self.switchtimer
pushi.e 60
cmp.i.v EQ
bf [330]

:[329]
pushloc.v local.done
pushi.e 0
cmp.i.v EQ
b [331]

:[330]
push.e 0

:[331]
bf [335]

:[332]
push.v self.susieactor
pushi.e -9
pushenv [334]

:[333]
pushi.e 14
conv.i.v
pushi.e 12
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 40
sub.i.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[334]
popenv [333]

:[335]
push.v self.switchtimer
pushi.e 90
cmp.i.v EQ
bf [339]

:[336]
push.v self.susieactor
pushi.e -9
pushenv [338]

:[337]
pushi.e 0
pop.v.i self.auto_facing
pushi.e 15
conv.i.v
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[338]
popenv [337]

:[339]
push.v self.switchtimer
pushi.e 100
cmp.i.v EQ
bf [341]

:[340]
pushloc.v local.done
pushi.e 0
cmp.i.v EQ
b [342]

:[341]
push.e 0

:[342]
bf [346]

:[343]
push.v self.ralseiactor
pushi.e -9
pushenv [345]

:[344]
pushi.e 14
conv.i.v
pushi.e 12
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 40
add.i.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[345]
popenv [344]

:[346]
push.v self.switchtimer
pushi.e 130
cmp.i.v GTE
bf [350]

:[347]
push.v self.ralseiactor
pushi.e -9
pushenv [349]

:[348]
pushi.e 0
pop.v.i self.auto_facing
pushi.e 15
conv.i.v
push.v self.ystart
push.v self.xstart
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[349]
popenv [348]
pushi.e 50
pop.v.i self.switchtimer

:[350]
push.v self.minigame
pushi.e 2
cmp.i.v EQ
bf [352]

:[351]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_fadeout(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.minigame

:[352]
push.v self.minigame
pushi.e 3
cmp.i.v EQ
bf [361]

:[353]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [361]

:[354]
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
pushi.e 280
add.i.v
pop.v.v 82.x
pushi.e 0
pop.v.i 82.cutscene
pushi.e 276
pushenv [356]

:[355]
call.i instance_destroy(argc=0)
popz.v

:[356]
popenv [355]
pushi.e 893
pushenv [358]

:[357]
call.i instance_destroy(argc=0)
popz.v

:[358]
popenv [357]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 60
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarsus
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 12
sub.i.v
pushi.e 2
sub.i.v
push.v 82.x
pushi.e 180
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarral
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 4
sub.i.v
pushi.e 120
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarnoe
pushi.e 276
pushenv [360]

:[359]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[360]
popenv [359]
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.minigame
pushi.e 1
pop.v.i global.interact

:[361]
push.v self.minigame
pushi.e 4
cmp.i.v EQ
bf [364]

:[362]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [364]

:[363]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.minigame
push.e 1
add.i.v
pop.v.v self.minigame

:[364]
push.v self.minigame
pushi.e 5
cmp.i.v EQ
bf [366]

:[365]
pushi.e -999
pop.v.i self.minigame
pushi.e 15
conv.i.v
call.i gml_Script_c_fadein(argc=1)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 833
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_936_0"@21454
conv.s.v
push.s "\\E5* Hell yeah^1! Take that^1, you stupid mice!/%"@21455
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
pushi.e 813
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_944_0"@21456
conv.s.v
push.s "\\E2* It's nice seeing you enjoy a puzzle^1, Susie./%"@21457
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
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_957_0"@21458
conv.s.v
push.s "\\EK* Well. Maybe they aren't awful if you do 'em like that./%"@21459
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_966_0"@21460
conv.s.v
push.s "\\EL* ..^1. not bad^1, Noelle. That was kinda smart./%"@21461
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
pushi.e 738
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_972_0"@21462
conv.s.v
push.s "\\EM* H-Huh? Th..^1. thanks.../%"@21463
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
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_977_0"@21464
conv.s.v
push.s "\\EY* Heh^1, maybe next time I'll let you do my homework./%"@21465
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
pushi.e 847
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 66
conv.i.v
call.i gml_Script_c_soundplay_wait(argc=1)
popz.v
call.i gml_Script_c_halt(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_992_0"@21466
conv.s.v
push.s "\\E6* (Can I?)/%"@21467
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 6
conv.i.v
push.s "minigame"@15225
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "timer"@5833
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
pushi.e 1
conv.i.v
push.s "makecaters"@21360
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[366]
push.v self.makecaters
pushi.e 1
cmp.i.v EQ
bf [377]

:[367]
pushi.e 276
pushenv [369]

:[368]
call.i instance_destroy(argc=0)
popz.v

:[369]
popenv [368]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 60
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarsus
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 12
sub.i.v
pushi.e 2
sub.i.v
push.v 82.x
pushi.e 180
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarral
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 4
sub.i.v
pushi.e 120
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
pop.v.v self.caterpillarnoe
pushi.e 69
pushenv [372]

:[370]
push.v self.visible
pushi.e 0
cmp.i.v EQ
bf [372]

:[371]
call.i instance_destroy(argc=0)
popz.v

:[372]
popenv [370]
pushi.e 893
pushenv [374]

:[373]
call.i instance_destroy(argc=0)
popz.v

:[374]
popenv [373]
push.v self.caterpillarral
pushi.e -9
push.v [stacktop]self.target
pop.v.v local.remtarget
push.v self.caterpillarnoe
pushi.e -9
push.v [stacktop]self.target
push.v self.caterpillarral
pushi.e -9
pop.v.v [stacktop]self.target
pushloc.v local.remtarget
push.v self.caterpillarnoe
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 276
pushenv [376]

:[375]
pushi.e 1
pop.v.b self.visible
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[376]
popenv [375]
push.s "cybercity.ogg"@19764
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.97
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i self.makecaters

:[377]
push.v self.minigame
pushi.e 6
cmp.i.v EQ
bf [380]

:[378]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [380]

:[379]
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
push.v self.minigame
push.e 1
add.i.v
pop.v.v self.minigame

:[380]
push.v self.minigame
pushi.e 7
cmp.i.v EQ
bf [388]

:[381]
push.v 82.x
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
add.i.v
cmp.v.v LT
bf [386]

:[382]
push.v 74.miceheld
pushi.e 0
cmp.i.v EQ
bf [384]

:[383]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_1047_0"@21468
conv.s.v
push.s "\\E8* I think we're done with the mice for now^1, Kris./%"@21469
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [385]

:[384]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_1052_0"@21470
conv.s.v
push.s "\\EK* Hey^1, the hell are you doing with our mice?!/"@21471
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_1053_0"@21472
conv.s.v
push.s "\\EK* We worked on getting those together!/%"@21473
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[385]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 8
pop.v.i self.minigame

:[386]
push.v self.bucketpillar
pushi.e -9
push.v [stacktop]self.completed
pushi.e 1
cmp.i.v EQ
bf [388]

:[387]
pushi.e 9
pop.v.i self.minigame

:[388]
push.v self.minigame
pushi.e 8
cmp.i.v EQ
bf [390]

:[389]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [391]

:[390]
push.e 0

:[391]
bf [393]

:[392]
push.v self.pillaremerge
pushi.e -9
push.v [stacktop]self.x
pushi.e 82
add.i.v
pop.v.v 82.x
pushi.e 0
pop.v.i global.interact
pushi.e 7
pop.v.i self.minigame

:[393]
push.v self.minigame
pushi.e 9
cmp.i.v EQ
bf [396]

:[394]
push.v 82.x
push.v self.bucketpillar
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
sub.i.v
cmp.v.v LT
bf [396]

:[395]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_room_dw_city_postbaseball_slash_Step_0_gml_1076_0"@21474
conv.s.v
push.s "\\EK* What are you doing? The path is open!/%"@21475
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 10
pop.v.i self.minigame

:[396]
push.v self.minigame
pushi.e 10
cmp.i.v EQ
bf [398]

:[397]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [399]

:[398]
push.e 0

:[399]
bf [end]

:[400]
push.v self.bucketpillar
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
sub.i.v
pushi.e 2
add.i.v
pop.v.v 82.x
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.minigame

:[end]