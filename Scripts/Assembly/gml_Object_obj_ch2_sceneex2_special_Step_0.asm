.localvar 2 arguments
.localvar 15397 heartx 17018
.localvar 15398 hearty 17019
.localvar 34171 goenemy 17022

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact

:[3]
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.input_timer

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[5]
pushi.e 298
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.8
conv.d.v
pushi.e 298
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [8]

:[7]
push.i 173782
setowner.e
pushi.e 603
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 760
add.i.v
pushi.e 60
push.v self.i
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.enemyrow
push.v self.i
conv.v.i
popaf.e
push.i 239319
setowner.e
push.v self.i
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.enemyrow
push.v self.i
conv.v.i
pushaf.e
pushi.e -9
pop.v.v [stacktop]self.mei
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [11]

:[10]
push.i 173782
setowner.e
pushi.e 603
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 180
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 840
add.i.v
pushi.e 40
push.v self.i
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.enemyrow
push.v self.i
conv.v.i
popaf.e
push.i 239319
setowner.e
push.v self.i
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.enemyrow
push.v self.i
conv.v.i
pushaf.e
pushi.e -9
pop.v.v [stacktop]self.mei
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
push.i 173782
setowner.e
pushi.e 603
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 760
add.i.v
pushi.e 60
push.v self.i
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.enemyrow
push.v self.i
conv.v.i
popaf.e
push.i 239319
setowner.e
push.v self.i
pushi.e -1
pushi.e 2
push.v [arraypushaf]self.enemyrow
push.v self.i
conv.v.i
pushaf.e
pushi.e -9
pop.v.v [stacktop]self.mei
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 603
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.destroyable
pushi.e 1
pop.v.i self.cutscene
pushi.e 2
pop.v.i self.image_speed
pushi.e -20
pop.v.i self.hspeed
push.v self.y
pop.v.v self._cutsceneremy

:[16]
popenv [15]
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pushi.e -9
pushenv [18]

:[17]
push.v self.image_xscale
pushi.e 2
mul.i.v
pop.v.v self.image_xscale
push.v self.image_yscale
pushi.e 2
mul.i.v
pop.v.v self.image_yscale
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.bighead

:[18]
popenv [17]
pushi.e 2
pop.v.i self.con

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [36]

:[20]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 570
add.i.v
cmp.v.v LT
bf [26]

:[21]
pushi.e 603
pushenv [25]

:[22]
push.v self.hspeed
pushi.e -2
cmp.i.v LT
bf [24]

:[23]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[24]
push.v self._cutsceneremy
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y

:[25]
popenv [22]

:[26]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 240
add.i.v
cmp.v.v LTE
bf [36]

:[27]
pushi.e 603
pushenv [29]

:[28]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self._cutsceneremy
pop.v.v self.y

:[29]
popenv [28]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 3230
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 70
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 70
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.i 100000
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
pushenv [31]

:[30]
pushi.e 0
pop.v.i self.visible

:[31]
popenv [30]
pushi.e 893
pushenv [33]

:[32]
push.d 0.5
pop.v.d self.image_alpha

:[33]
popenv [32]
pushi.e 999
pushenv [35]

:[34]
pushi.e 0
pop.v.i self.drawtrack

:[35]
popenv [34]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[36]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [40]

:[37]
call.i gml_Script_camerax(argc=0)
pushi.e 88
add.i.v
pop.v.v local.heartx
call.i gml_Script_cameray(argc=0)
pushi.e 95
add.i.v
pop.v.v local.hearty
pushi.e 631
conv.i.v
pushloc.v local.hearty
pushloc.v local.heartx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.heart
pushi.e 1380
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 255
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e -10
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.heart
pushi.e -9
pushenv [39]

:[38]
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[39]
popenv [38]
pushi.e 0
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.canmove
pushi.e 5
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[40]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [42]

:[41]
pushi.e 46
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.tracknoise
push.d 0.9
conv.d.v
push.v self.tracknoise
call.i gml_Script_snd_pitch(argc=2)
popz.v
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
push.s "image_angle"@278
conv.s.v
push.v self.heart
call.i gml_Script_scr_lerpvar_instance(argc=7)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[42]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [44]

:[43]
push.v self.tracknoise
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [51]

:[45]
push.i 65535
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.heart
pushi.e -9
pushenv [50]

:[46]
pushi.e 0
pop.v.i self.i

:[47]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [49]

:[48]
pushi.e 353
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.afterimage
push.v self.sprite_index
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_blend
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.image_angle
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.d 0.2
push.v self.i
mul.v.d
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.xrate
push.d 0.2
push.v self.i
mul.v.d
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.yrate
pushi.e 1
push.v self.i
mul.v.i
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.depth
pushi.e 1
add.i.v
push.v self.afterimage
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [47]

:[49]
pushi.e 1964
pop.v.i self.sprite_index
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.image_angle
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
call.i gml_Script_scr_oflash(argc=0)
popz.v

:[50]
popenv [46]
pushi.e 0
push.v self.heart
pushi.e -9
pop.v.i [stacktop]self.canmove
pushi.e 11
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.d 0.8
conv.d.v
pushi.e 226
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 226
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
push.d 1.5
conv.d.v
pushi.e 236
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[51]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [55]

:[52]
push.d 0.5
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pop.v.v local.goenemy
push.v self.heart
pushi.e -9
pushenv [54]

:[53]
pushi.e 10
conv.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[54]
popenv [53]
pushi.e 13
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[55]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [59]

:[56]
push.v self.heart
pushi.e -9
pushenv [58]

:[57]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[58]
popenv [57]

:[59]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [63]

:[60]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.heart
pushi.e -9
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.color

:[62]
popenv [61]
pushi.e 15
pop.v.i self.con

:[63]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [70]

:[64]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.enemyrow
pushi.e 2
pushaf.e
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [70]

:[65]
pushi.e 16
pop.v.i self.con
push.v self.heart
pushi.e -9
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.color

:[67]
popenv [66]
push.d 0.5
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e -1
pushi.e 2
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pop.v.v local.goenemy
push.v self.heart
pushi.e -9
pushenv [69]

:[68]
pushi.e 10
conv.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[69]
popenv [68]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[70]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [74]

:[71]
push.v self.heart
pushi.e -9
pushenv [73]

:[72]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[73]
popenv [72]

:[74]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [78]

:[75]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.heart
pushi.e -9
pushenv [77]

:[76]
pushi.e 1
pop.v.i self.color

:[77]
popenv [76]
pushi.e 18
pop.v.i self.con

:[78]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [85]

:[79]
pushi.e -1
pushi.e 2
push.v [arraypushaf]self.enemyrow
pushi.e 2
pushaf.e
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [85]

:[80]
pushi.e 19
pop.v.i self.con
push.v self.heart
pushi.e -9
pushenv [82]

:[81]
pushi.e 0
pop.v.i self.color

:[82]
popenv [81]
push.d 0.5
conv.d.v
pushi.e 155
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.enemyrow
pushi.e 0
pushaf.e
pop.v.v local.goenemy
push.v self.heart
pushi.e -9
pushenv [84]

:[83]
pushi.e 10
conv.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushloc.v local.goenemy
pushi.e -9
push.v [stacktop]self.x
pushi.e 110
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[84]
popenv [83]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[85]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [89]

:[86]
push.v self.heart
pushi.e -9
pushenv [88]

:[87]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[88]
popenv [87]

:[89]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [93]

:[90]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.heart
pushi.e -9
pushenv [92]

:[91]
pushi.e 1
pop.v.i self.color

:[92]
popenv [91]
pushi.e 22
pop.v.i self.con

:[93]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [98]

:[94]
pushi.e 603
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [98]

:[95]
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 29
pop.v.i self.con
push.v self.heart
pushi.e -9
pushenv [97]

:[96]
pushi.e 0
pop.v.i self.color

:[97]
popenv [96]

:[98]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [end]

:[99]
pushi.e 697
pushenv [101]

:[100]
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
pop.v.v self.x
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.partmode
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.headforceframe
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.speed

:[101]
popenv [100]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.heart
pushi.e -9
pushenv [103]

:[102]
call.i instance_destroy(argc=0)
popz.v

:[103]
popenv [102]
pushi.e 592
pushenv [105]

:[104]
call.i instance_destroy(argc=0)
popz.v

:[105]
popenv [104]
push.v self.blackall
pushi.e -9
pushenv [107]

:[106]
call.i instance_destroy(argc=0)
popz.v

:[107]
popenv [106]
pushi.e 999
pushenv [109]

:[108]
pushi.e 1
pop.v.i self.drawtrack

:[109]
popenv [108]
pushi.e 40
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]