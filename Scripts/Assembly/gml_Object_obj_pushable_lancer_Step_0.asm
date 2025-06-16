.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 215
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 215
pushenv [3]

:[2]
pushi.e -1
pop.v.i self.gravity

:[3]
popenv [2]

:[4]
push.v self.movecourse
pushi.e 1
cmp.i.v EQ
bf [29]

:[5]
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bt [7]

:[6]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.v self.movetimetarget
pop.v.v self.movetimer

:[10]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
pushi.e 20
pop.v.i self.movetimetarget
push.v self.movetimer
pushi.e 4
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 215
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 16
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.depth
pushi.e 10
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.depth

:[13]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pushi.e 2018
cmp.i.v GTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.movetimetarget
pop.v.v self.movetimer
pushi.e 2018
pop.v.i self.x
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[18]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [25]

:[19]
push.v self.x
pushi.e 1070
cmp.i.v GT
bf [23]

:[20]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
pushi.e 20
pop.v.i self.movetimetarget
push.v self.movetimer
pushi.e 4
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 215
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.depth
pushi.e 10
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.depth

:[22]
b [25]

:[23]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
push.v self.y
push.d 0.5
add.d.v
pop.v.v self.y
pushi.e 40
pop.v.i self.movetimetarget
push.v self.movetimer
pushi.e 8
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 215
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 6
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.depth
pushi.e 10
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.depth

:[25]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.movetimetarget
cmp.v.v GTE
bf [29]

:[26]
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.movecourse
push.v self.x
pushi.e 1038
cmp.i.v LTE
bf [28]

:[27]
pushi.e 1
pop.v.i global.interact
pushi.e 1038
pop.v.i self.x
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.visible
pushi.e 103
conv.i.v
pushi.e 258
conv.i.v
pushi.e 1036
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.interactablelancer
pushi.e 194
push.v self.interactablelancer
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.interactablelancer
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.interactablelancer
pushi.e -9
pop.v.i [stacktop]self.image_index
b [29]

:[28]
pushi.e 0
pop.v.i global.interact

:[29]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [32]

:[31]
pushi.e 2
pop.v.i self.con

:[32]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [37]

:[33]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [37]

:[34]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [36]

:[35]
pushi.e 5
pop.v.i self.onebuffer

:[36]
popenv [35]

:[37]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [44]

:[38]
pushi.e 1
pop.v.i global.interact
pushi.e 194
pop.v.i self.sprite_index
push.v self.spawnplate
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.spawnplate
pushi.e 129
conv.i.v
pushi.e -36
conv.i.v
pushi.e 1004
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.plate
pushi.e 1
push.v self.plate
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 270
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 12
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 2
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 15
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 196
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[40]
push.v self.plate
pushi.e -9
pushenv [42]

:[41]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[42]
popenv [41]
push.v self.plate
pushi.e -9
push.v [stacktop]self.y
pushi.e 286
cmp.i.v GTE
bf [44]

:[43]
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 294
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.plate
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 3
pop.v.i self.con

:[44]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [51]

:[45]
push.v self.spawnfood
pushi.e 0
cmp.i.v EQ
bf [49]

:[46]
pushi.e 1
pop.v.i self.spawnfood
pushi.e 129
conv.i.v
pushi.e -28
conv.i.v
pushi.e 1018
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.food
push.v self.food
pushi.e -9
pushenv [48]

:[47]
pushi.e 1
pop.v.b self.visible
pushi.e 270
pop.v.i self.direction
pushi.e 12
pop.v.i self.speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -15
pop.v.i self.image_angle
pushi.e 197
pop.v.i self.sprite_index
push.v other.plate
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pop.v.v self.depth

:[48]
popenv [47]

:[49]
push.v self.food
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 12
sub.i.v
pop.i.v [stacktop]self.image_angle
push.v self.food
pushi.e -9
push.v [stacktop]self.y
pushi.e 294
cmp.i.v GTE
bf [51]

:[50]
pushi.e 41
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 302
push.v self.food
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.food
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.food
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.food
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 4
pop.v.i self.con

:[51]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[52]
push.v self.spawnbib
pushi.e 0
cmp.i.v EQ
bf [56]

:[53]
pushi.e 1
pop.v.i self.spawnbib
pushi.e 129
conv.i.v
pushi.e -36
conv.i.v
push.v self.interactablelancer
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
pushi.e 16
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bib
push.v self.bib
pushi.e -9
pushenv [55]

:[54]
pushi.e 1
pop.v.b self.visible
pushi.e 270
pop.v.i self.direction
pushi.e 12
pop.v.i self.speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 150
pop.v.i self.image_angle
pushi.e 198
pop.v.i self.sprite_index

:[55]
popenv [54]

:[56]
push.v self.bib
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e 8
add.i.v
pop.i.v [stacktop]self.image_angle
push.v self.interactablelancer
pushi.e -9
push.v [stacktop]self.depth
pushi.e 50
sub.i.v
push.v self.bib
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.bib
pushi.e -9
push.v [stacktop]self.y
pushi.e 288
cmp.i.v GTE
bf [end]

:[57]
push.v self.bib
pushi.e -9
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
pushi.e 195
push.v self.interactablelancer
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 356
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 150
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]