.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v 82.x
pushi.e 280
cmp.i.v LT
bf [3]

:[2]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [12]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.mouse_a
pushi.e -9
pushenv [7]

:[6]
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_scr_emote(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[7]
popenv [6]
push.v self.mouse_b
pushi.e -9
pushenv [9]

:[8]
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_scr_emote(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[9]
popenv [8]
push.v self.mouse_c
pushi.e -9
pushenv [11]

:[10]
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_scr_emote(argc=2)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[11]
popenv [10]

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[13]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v LT
bf [15]

:[14]
pushi.e 90
pop.v.i self.cx
pushi.e 200
pop.v.i self.cy
pushi.e 40
pop.v.i self.turnspeed
pushi.e 40
pop.v.i self.radius
push.d 0.125
pop.v.d self.lerpspeed
push.v self.lerpspeed
push.v self.cx
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_b
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.mouse_b
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.lerpspeed
push.v self.cy
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
call.i cos(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_b
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.mouse_b
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.lerpspeed
push.v self.cx
push.d 2.0943951023931953
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
add.v.d
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_a
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.mouse_a
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.lerpspeed
push.v self.cy
push.d 2.0943951023931953
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
add.v.d
call.i cos(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_a
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.mouse_a
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.lerpspeed
push.v self.cx
push.d 4.1887902047863905
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
add.v.d
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_c
pushi.e -9
push.v [stacktop]self.x
call.i lerp(argc=3)
push.v self.mouse_c
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.lerpspeed
push.v self.cy
push.d 4.1887902047863905
pushi.e 30
conv.i.d
push.v self.turnspeed
div.v.d
add.v.d
call.i cos(argc=1)
pushi.e 40
mul.i.v
add.v.v
push.v self.mouse_c
pushi.e -9
push.v [stacktop]self.y
call.i lerp(argc=3)
push.v self.mouse_c
pushi.e -9
pop.v.v [stacktop]self.y

:[15]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [35]

:[16]
push.v self.turnspeed
pushi.e 3
cmp.i.v GT
bf [18]

:[17]
push.d 0.1
conv.d.v
pushi.e 3
conv.i.v
push.v self.turnspeed
call.i lerp(argc=3)
pop.v.v self.turnspeed

:[18]
push.v self.turnspeed
pushi.e 10
cmp.i.v LT
bf [26]

:[19]
push.v self.mouse_a
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[21]
popenv [20]
push.v self.mouse_b
pushi.e -9
pushenv [23]

:[22]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[23]
popenv [22]
push.v self.mouse_c
pushi.e -9
pushenv [25]

:[24]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[25]
popenv [24]

:[26]
push.v self.turnspeed
pushi.e 6
cmp.i.v LT
bf [30]

:[27]
push.v self.radius
pushi.e 1
cmp.i.v GT
bf [29]

:[28]
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.radius
call.i lerp(argc=3)
pop.v.v self.radius
b [30]

:[29]
pushi.e 0
pop.v.i self.radius
pushi.e 226
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 2.1
pop.v.d self.con

:[30]
push.v self.radius
pushi.e 10
cmp.i.v LT
bf [34]

:[31]
push.v self.whiteall
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.d 0.03
push.v self.whiteall
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[33]
push.v self.whiteall
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 1.2
mul.d.v
pop.i.v [stacktop]self.image_alpha

:[34]
push.v self.cx
push.v self.timer
push.v self.turnspeed
div.v.v
call.i sin(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_a
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.cy
push.v self.timer
push.v self.turnspeed
div.v.v
call.i cos(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_a
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.cx
push.d 2.0943951023931953
push.v self.timer
push.v self.turnspeed
div.v.v
add.v.d
call.i sin(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_b
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.cy
push.d 2.0943951023931953
push.v self.timer
push.v self.turnspeed
div.v.v
add.v.d
call.i cos(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_b
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.cx
push.d 4.1887902047863905
push.v self.timer
push.v self.turnspeed
div.v.v
add.v.d
call.i sin(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_c
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.cy
push.d 4.1887902047863905
push.v self.timer
push.v self.turnspeed
div.v.v
add.v.d
call.i cos(argc=1)
push.v self.radius
mul.v.v
add.v.v
push.v self.mouse_c
pushi.e -9
pop.v.v [stacktop]self.y

:[35]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [38]

:[36]
push.v self.whiteall
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 1.2
mul.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.whiteall
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [38]

:[37]
pushi.e 0
pop.v.i self.timer
push.d 2.2
pop.v.d self.con

:[38]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [60]

:[39]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [54]

:[40]
push.v self.mouse_a
pushi.e -9
pushenv [42]

:[41]
pushi.e 0
pop.v.i self.visible

:[42]
popenv [41]
push.v self.mouse_b
pushi.e -9
pushenv [44]

:[43]
pushi.e 0
pop.v.i self.visible

:[44]
popenv [43]
push.v self.mouse_c
pushi.e -9
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.visible

:[46]
popenv [45]
push.v self.cheese_a
pushi.e -9
pushenv [48]

:[47]
pushi.e 0
pop.v.i self.visible

:[48]
popenv [47]
push.v self.cheese_b
pushi.e -9
pushenv [50]

:[49]
pushi.e 0
pop.v.i self.visible

:[50]
popenv [49]
push.v self.cheese_c
pushi.e -9
pushenv [52]

:[51]
pushi.e 0
pop.v.i self.visible

:[52]
popenv [51]
push.v self.mauswheel
pushi.e -4
cmp.i.v EQ
bf [54]

:[53]
pushi.e 2087
conv.i.v
pushi.e 160
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mauswheel
push.d 0.5
push.v self.mauswheel
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[54]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [56]

:[55]
push.v self.whiteall
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.9
mul.d.v
pop.i.v [stacktop]self.image_alpha

:[56]
push.v self.whiteall
pushi.e -9
push.v [stacktop]self.image_alpha
push.d 0.01
cmp.d.v LTE
bf [60]

:[57]
push.v self.whiteall
pushi.e -9
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v
pushi.e 3
pop.v.i other.con

:[59]
popenv [58]

:[60]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
pushi.e 4
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[62]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [64]

:[63]
pushi.e 9
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 543
pop.v.i self.encounterflag
push.i 231204
setowner.e
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.mauswheel
pushi.e 0
conv.i.v
pushi.e 83
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[64]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [66]

:[65]
pushi.e 357
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [end]

:[68]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 362
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
call.i gml_Script_scr_tempsave(argc=0)
popz.v
push.v self.swatchling_npc_a
pushi.e -9
pushenv [70]

:[69]
pushi.e 1283
pop.v.i self.sprite_index

:[70]
popenv [69]
push.v self.cheese_a
pushi.e -9
pushenv [72]

:[71]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.visible

:[72]
popenv [71]
push.v self.cheese_b
pushi.e -9
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.visible

:[74]
popenv [73]
push.v self.cheese_c
pushi.e -9
pushenv [76]

:[75]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.visible

:[76]
popenv [75]

:[end]