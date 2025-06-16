.localvar 2 arguments

:[0]
push.v self.hacker
pushi.e -4
cmp.i.v NEQ
bf [73]

:[1]
push.v self.hacker_init_path
conv.v.b
not.b
bf [3]

:[2]
push.v self.hacker
pushi.e -9
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [11]

:[5]
push.v self.pause_timer
push.e 1
add.i.v
pop.v.v self.pause_timer
pushi.e 0
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.path_speed
pushi.e 0
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.hacker
pushi.e -9
pushenv [7]

:[6]
call.i path_end(argc=0)
popz.v

:[7]
popenv [6]
push.v self.pause_timer
pushi.e 60
cmp.i.v GTE
bf [11]

:[8]
pushi.e 0
pop.v.i self.pause_timer
pushi.e 1
pop.v.b self.hacker_init_path
push.v self.hacker
pushi.e -9
pushenv [10]

:[9]
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i path_start(argc=4)
popz.v

:[10]
popenv [9]

:[11]
push.v self.hacker_init_path
conv.v.b
bf [13]

:[12]
push.v self.hacker_can_pause
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [21]

:[15]
push.v self.hacker
pushi.e -9
push.v [stacktop]self.path_position
pushi.e 0
cmp.i.v EQ
bt [17]

:[16]
push.v self.hacker
pushi.e -9
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [21]

:[19]
pushi.e 0
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.path_speed
push.v self.pause_timer
push.e 1
add.i.v
pop.v.v self.pause_timer
push.v self.pause_timer
pushi.e 60
cmp.i.v GTE
bf [21]

:[20]
pushi.e 0
pop.v.i self.pause_timer
pushi.e 2
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.path_speed
pushi.e 0
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.b self.hacker_can_pause

:[21]
push.v self.hacker_can_pause
conv.v.b
not.b
bf [24]

:[22]
push.v self.pause_timer
push.e 1
add.i.v
pop.v.v self.pause_timer
push.v self.pause_timer
pushi.e 15
cmp.i.v GTE
bf [24]

:[23]
pushi.e 0
pop.v.i self.pause_timer
pushi.e 1
pop.v.b self.hacker_can_pause

:[24]
push.v self.hacker
pushi.e -9
pushenv [72]

:[25]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.path_speed
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
conv.i.v
b [28]

:[27]
push.d 0.25
conv.d.v

:[28]
pop.v.v self.image_speed
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [36]

:[29]
push.v self.x
pushi.e 1318
cmp.i.v GT
bf [31]

:[30]
push.v self.x
pushi.e 1388
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1229
pop.v.i self.sprite_index
b [35]

:[34]
pushi.e 1231
pop.v.i self.sprite_index

:[35]
b [42]

:[36]
push.v self.x
pushi.e 1380
cmp.i.v GT
bf [38]

:[37]
push.v self.x
pushi.e 1450
cmp.i.v LT
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1228
pop.v.i self.sprite_index
b [42]

:[41]
pushi.e 1230
pop.v.i self.sprite_index

:[42]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [44]

:[43]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 14
pop.v.i self.myinteract

:[47]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v self.myinteract
pushi.e 14
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 0
pop.v.i self.myinteract

:[52]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [54]

:[53]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 32
pop.v.i self.myinteract

:[57]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [59]

:[58]
push.v self.myinteract
pushi.e 32
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 0
pop.v.i self.myinteract

:[62]
push.v self.myinteract
pushi.e 0
cmp.i.v NEQ
bf [64]

:[63]
push.v self.path_speed
pushi.e 0
cmp.i.v NEQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.path_speed
pop.v.v self.currentspeed
pushi.e 0
pop.v.i self.path_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.b self.pathpause

:[67]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
push.v self.pathpause
conv.v.b
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.v self.currentspeed
pop.v.v self.path_speed
pushi.e 0
pop.v.b self.pathpause

:[72]
popenv [25]

:[73]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[74]
pushi.e -1
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 339
pop.v.v [array]self.flag
pushi.e 0
conv.b.v
push.s "TILES_Secret"@35992
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.b.v
push.s "TILES_Secret_BG"@36016
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.exitcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[75]
push.v self.exitcollider
call.i instance_destroy(argc=1)
popz.v

:[end]