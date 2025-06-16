.localvar 2 arguments

:[0]
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [4]

:[3]
push.v self.init
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
push.v self.frozensprite
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1648
pop.v.i self.frozensprite

:[8]
pushi.e 857
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.frozennpc
push.v self.frozensprite
push.v self.frozennpc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.fresh
call.i instance_destroy(argc=0)
popz.v
pushi.e 1
pop.v.i self.init

:[9]
push.v self.x
pushi.e 42
add.i.v
pop.v.v self.offX
push.v self.y
pushi.e 62
add.i.v
pop.v.v self.offY
push.v self.weird
pushi.e 0
cmp.i.v EQ
bf [43]

:[10]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
call.i gml_Script_charaY(argc=0)
call.i gml_Script_charaX(argc=0)
push.v self.offY
push.v self.offX
call.i point_distance(argc=4)
pop.v.v self.dist

:[12]
push.v self.dist
push.v self.radius
cmp.v.v LT
bf [14]

:[13]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.d 0.25
pop.v.d self.speed1
pushi.e 2
pop.v.i self.con

:[17]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e 760
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 640
conv.i.v
pushi.e 880
conv.i.v
call.i gml_Script_charaY(argc=0)
call.i gml_Script_charaX(argc=0)
call.i point_in_rectangle(argc=6)
conv.v.b
bf [23]

:[22]
push.d 0.25
pop.v.d self.speed1
pushi.e 2
pop.v.i self.con

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [43]

:[24]
push.d 0.5
pop.v.d self.image_speed
push.v self.image_index
pushi.e 7
cmp.i.v EQ
bf [26]

:[25]
pushi.e 3
pop.v.i self.image_index

:[26]
push.v self.speedboost
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.speed1
push.d 1.1
mul.d.v
pop.v.v self.speed1

:[28]
push.v self.speedboost
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v self.speed1
push.d 1.4
mul.d.v
pop.v.v self.speed1

:[30]
push.v self.speedboost
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
push.v self.speed1
call.i clamp(argc=3)
pop.v.v self.speed1

:[32]
push.v self.speedboost
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
push.v self.speed1
call.i clamp(argc=3)
pop.v.v self.speed1

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [38]

:[35]
push.v self.speed1
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.memspeed
pop.v.v self.speed1

:[37]
b [41]

:[38]
push.v self.speed1
pushi.e 0
cmp.i.v NEQ
bf [40]

:[39]
push.v self.speed1
pop.v.v self.memspeed

:[40]
pushi.e 0
pop.v.i self.speed1

:[41]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [43]

:[42]
push.v self.speed1
call.i gml_Script_charaHeartY(argc=0)
pushi.e 20
sub.i.v
pushi.e 62
sub.i.v
call.i gml_Script_charaHeartX(argc=0)
pushi.e 42
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[43]
push.v self.weird
pushi.e 1
cmp.i.v EQ
bf [55]

:[44]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [50]

:[45]
push.d 0.25
pop.v.d self.image_speed
push.v self.image_index
pushi.e 7
cmp.i.v GTE
bf [47]

:[46]
pushi.e 3
pop.v.i self.image_index

:[47]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [50]

:[48]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 120
cmp.i.v LT
bf [50]

:[49]
pushi.e 1
pop.v.i self.con

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [55]

:[51]
pushi.e 0
pop.v.i self.image_speed
push.v self.image_index
pushi.e 0
cmp.i.v NEQ
bf [53]

:[52]
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_index
call.i lerp(argc=3)
pop.v.v self.image_index

:[53]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 120
cmp.i.v GT
bf [55]

:[54]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.con

:[55]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [58]

:[56]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 190
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [end]

:[60]
pushi.e 1647
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.marker
push.v self.image_index
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.sprite_index
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.x
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.y
push.d 0.45
push.v self.marker
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.image_xscale
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.marker
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.topsprite
pushi.e 0
cmp.i.v NEQ
bf [62]

:[61]
pushi.e 434
conv.i.v
push.v self.y
pushi.e 106
add.i.v
pushi.e 24
sub.i.v
push.v self.x
pushi.e 42
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flyoff
push.v self.topsprite
push.v self.flyoff
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -10
push.v self.flyoff
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[62]
push.i 231204
setowner.e
push.v self.x
pushi.e -5
pushi.e 55
pop.v.v [array]self.flag
push.v self.y
pushi.e -5
pushi.e 56
pop.v.v [array]self.flag
push.v self.encounterflag
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag
push.v self.encountertype
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.marker
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[64]
push.v self.encountertype
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.marker
pushi.e 0
conv.i.v
pushi.e 88
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[66]
push.v self.encountertype
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.marker
pushi.e 0
conv.i.v
pushi.e 101
conv.i.v
call.i gml_Script_scr_battle(argc=5)
popz.v

:[68]
call.i instance_destroy(argc=0)
popz.v

:[end]