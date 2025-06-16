.localvar 2 arguments
.localvar 6483 yy 10952
.localvar 6482 xx 10957

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [39]

:[1]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [15]

:[3]
push.i 170466
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mymonster
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [14]

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mymonster
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cancatch
conv.v.b
bf [14]

:[8]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 465
cmp.i.v EQ
bf [10]

:[9]
push.i 170469
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ismaus

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.sprite_width
push.v self.biggestwidth
cmp.v.v GT
bf [12]

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.sprite_width
pop.v.v self.biggestwidth

:[12]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.sprite_height
push.v self.biggestheight
cmp.v.v GT
bf [14]

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.sprite_height
pop.v.v self.biggestheight

:[14]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[15]
push.v self.biggestwidth
push.v self.sprite_width
div.v.v
push.d 1.2
mul.d.v
pop.v.v self.image_xscale
push.v self.biggestheight
push.v self.sprite_height
div.v.v
push.d 1.2
mul.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 1
cmp.i.v LTE
bf [17]

:[16]
pushi.e 1
pop.v.i self.image_xscale

:[17]
push.v self.image_yscale
pushi.e 1
cmp.i.v LTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.image_yscale

:[19]
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
call.i gml_Script_cameray(argc=0)
push.v self.sprite_height
sub.v.v
pop.v.v self.y
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
push.v self.x
pop.v.v self.basketx
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 120
mul.i.v
add.v.v
pop.v.v self.x
pushi.e 50
pop.v.i self.magnitude
call.i gml_Script_cameray(argc=0)
pop.v.v local.yy
pushi.e 15
conv.i.v
pushloc.v local.yy
pushi.e 10
add.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [38]

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e 0
cmp.i.v NEQ
bf [37]

:[22]
push.i 170472
setowner.e
push.v self.i
pushi.e 4
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.monstersiner
push.i 170473
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhit
push.i 236010
setowner.e
call.i gml_Script_cameray(argc=0)
pushi.e 100
add.i.v
pushi.e 70
push.v self.i
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.__baskety
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.__baskety

:[24]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cancatch
conv.v.b
bf [30]

:[25]
push.i 166055
setowner.e
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.monsterx
push.i 236011
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monstersiner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.magnitude
mul.v.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.__monsterx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pushenv [29]

:[26]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[27]
pushi.e 15
conv.i.v
push.v self.y
push.v self.__monsterx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
b [29]

:[28]
pushi.e 15
conv.i.v
push.v self.__baskety
push.v self.__monsterx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[29]
popenv [26]

:[30]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cancatch
pushi.e 0
cmp.i.v EQ
bf [34]

:[31]
push.i 166055
setowner.e
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 200
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.monsterx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pushenv [33]

:[32]
call.i gml_Script_scr_rememberxy(argc=0)
popz.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
push.v self.sprite_width
add.v.v
pop.v.v local.xx
pushi.e 15
conv.i.v
push.v self.y
pushloc.v local.xx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[33]
popenv [32]

:[34]
push.i 170476
setowner.e
pushi.e 466
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.y
push.v self.sprite_height
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhitbox
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 448
cmp.i.v EQ
bf [36]

:[35]
pushi.e 6
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[36]
push.i 133651
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133635
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.b [stacktop]self.visible
push.i 231319
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.which
push.i 236013
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.parentid

:[37]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [20]

:[38]
pushi.e 0
pop.v.i self.dropped
pushi.e 0
pop.v.i self.sineradd
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.init

:[39]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [71]

:[40]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [47]

:[41]
pushi.e 0
pop.v.i self.i

:[42]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [46]

:[43]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.x

:[45]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [42]

:[46]
pushi.e 3
pop.v.i self.con

:[47]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [71]

:[48]
push.v self.sineradd
push.d 0.8
cmp.d.v LT
bf [50]

:[49]
push.v self.sineradd
push.d 0.05
add.d.v
pop.v.v self.sineradd

:[50]
push.v self.dropped
pushi.e 0
cmp.i.v EQ
bf [53]

:[51]
push.v self.siner
push.v self.sineradd
add.v.v
pop.v.v self.siner
push.v self.basketx
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 120
mul.i.v
add.v.v
pop.v.v self.x
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [53]

:[52]
pushi.e 1
pop.v.i self.dropped
pushi.e 16
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity
pushi.e 92
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[53]
push.v self.magnitude
pushi.e 100
cmp.i.v LT
bf [55]

:[54]
push.v self.magnitude
pushi.e 5
add.i.v
pop.v.v self.magnitude

:[55]
pushi.e 0
pop.v.i self.i

:[56]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [68]

:[57]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e 0
cmp.i.v GT
bf [67]

:[58]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.caught
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.i 133618
setowner.e
push.v self.y
pushi.e 5
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.d 0.1
conv.d.v
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.x

:[60]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhit
pushi.e 0
cmp.i.v EQ
bf [67]

:[61]
push.i 170472
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.monstersiner
push.v self.sineradd
add.v.v
pop.i.v [array]self.monstersiner
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cancatch
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monstersiner
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.magnitude
mul.v.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pop.v.v [stacktop]self.x

:[63]
push.i 133618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.y
push.v self.sprite_height
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ismaus
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 40
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.x

:[65]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 448
cmp.i.v EQ
bf [67]

:[66]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 68
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
push.v [stacktop]self.y
push.v self.sprite_height
add.v.v
pushi.e 22
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhitbox
pushi.e -9
pop.v.v [stacktop]self.y

:[67]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [56]

:[68]
push.v self.dropped
pushi.e 1
cmp.i.v EQ
bf [71]

:[69]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 300
add.i.v
push.v self.sprite_height
sub.v.v
cmp.v.v GTE
bf [71]

:[70]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[71]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [96]

:[72]
pushi.e 0
pop.v.i self.caughttotal
pushi.e 0
pop.v.i self.i

:[73]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [82]

:[74]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e 0
cmp.i.v GT
bf [81]

:[75]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mymonster
pushi.e -9
pushenv [77]

:[76]
pushi.e 15
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[77]
popenv [76]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.monsterhit
pushi.e 1
cmp.i.v EQ
bf [81]

:[78]
push.v self.caughttotal
push.e 1
add.i.v
pop.v.v self.caughttotal
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [80]

:[79]
pushi.e 5
conv.i.v
push.v self.i
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [81]

:[80]
pushi.e 100
conv.i.v
push.v self.i
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[81]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [73]

:[82]
push.v self.caughttotal
pushi.e 0
cmp.i.v EQ
bf [86]

:[83]
push.v self.maker
pushi.e -9
pushenv [85]

:[84]
pushi.e 1
pop.v.i self.actfailure

:[85]
popenv [84]

:[86]
push.v self.trappingX
conv.v.b
bf [91]

:[87]
push.v self.caughttotal
call.i gml_Script_scr_monsterpop(argc=0)
cmp.v.v LT
bf [91]

:[88]
push.v self.maker
pushi.e -9
pushenv [90]

:[89]
pushi.e 1
pop.v.i self.actfailure

:[90]
popenv [89]

:[91]
push.v self.maker
pushi.e -9
pushenv [93]

:[92]
pushi.e 12
pop.v.i self.actcon

:[93]
popenv [92]
pushi.e 466
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
pushi.e -16
pop.v.i self.vspeed
pushi.e 6
pop.v.i self.con

:[96]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[97]
push.v self.y
pushi.e -200
cmp.i.v LTE
bf [end]

:[98]
call.i instance_destroy(argc=0)
popz.v
pushi.e 761
pushenv [100]

:[99]
pushi.e 2087
pop.v.i self.idlesprite
push.v self.x
pushi.e 60
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 66
sub.i.v
pop.v.v self.y

:[100]
popenv [99]
pushi.e 771
pushenv [102]

:[101]
call.i instance_destroy(argc=0)
popz.v

:[102]
popenv [101]

:[end]