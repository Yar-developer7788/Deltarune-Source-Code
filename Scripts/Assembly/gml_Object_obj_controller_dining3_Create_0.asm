.localvar 2 arguments
.localvar 107 i 18997
.localvar 11611 ii 18998

:[0]
pushi.e 0
pop.v.i self.key
pushi.e 0
pop.v.i self.basex
pushi.e 0
pop.v.i self.basey
pushi.e 0
pop.v.i self.moveloc
pushi.e 0
pop.v.b self.weird
pushi.e 0
conv.i.v
push.s "TILES_Doorway"@37638
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "TILES_BlockedEntrance"@37639
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 2880
conv.i.v
pushi.e 40
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queen_monitor_frame
push.v self.queen_monitor_frame
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 288
conv.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.queen_monitor_frame
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor
push.v self.queen_monitor_frame
pushi.e 100
add.i.v
push.v self.queen_monitor
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2880
conv.i.v
pushi.e 40
conv.i.v
pushi.e 780
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.queen_monitor_frame2
push.v self.queen_monitor_frame2
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 288
conv.i.v
push.v self.queen_monitor_frame2
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
push.v self.queen_monitor_frame2
pushi.e -9
push.v [stacktop]self.x
pushi.e 175
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.queen_monitor2
push.v self.queen_monitor_frame2
pushi.e 100
add.i.v
push.v self.queen_monitor2
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1149
conv.i.v
pushi.e 120
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.blocker
pushi.e 4
push.v self.blocker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.checkCount
pushi.e 0
pop.v.i self.attempt
pushi.e 0
pop.v.i self.dogSpawned
pushi.e 0
pop.v.i self.dogcon
pushi.e 0
pop.v.i self.dogtabletargx
pushi.e 0
pop.v.i self.dogtabletargy
pushi.e 0
pop.v.i self.key
pushi.e 0
pop.v.i self.sparkletimer
pushi.e 0
pop.v.i self.shard
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 8
cmp.i.v GTE
bf [6]

:[5]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
not.b
bf [35]

:[8]
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [29]

:[10]
pushi.e 0
pop.v.i local.ii

:[11]
pushloc.v local.ii
pushi.e 5
cmp.i.v LT
bf [28]

:[12]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
not.b
bf [24]

:[16]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
not.b
bf [24]

:[20]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushloc.v local.i
pushi.e 4
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
not.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 129
conv.i.v
pushi.e 240
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 44
add.i.v
pushi.e 109
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shade

:[27]
pushi.e 2317
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.shade
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 890000
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [11]

:[28]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[29]
pushi.e 0
pop.v.i local.i

:[30]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [35]

:[31]
pushi.e 0
pop.v.i local.ii

:[32]
pushloc.v local.ii
pushi.e 4
cmp.i.v LT
bf [34]

:[33]
pushi.e 129
conv.i.v
pushi.e 360
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 44
add.i.v
pushi.e 189
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shade
pushi.e 2317
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.shade
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 890000
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [32]

:[34]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [30]

:[35]
pushi.e -5
pushi.e 381
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[36]
pushi.e 28980
pop.v.i self.con
pushi.e 28980
pop.v.i self.dogcon
pushi.e 0
pop.v.i self.timer
pushi.e 1
conv.i.v
push.s "TILES_Doorway"@37638
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 155
conv.i.v
pushi.e 120
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.topLoc
push.s "top"@6226
push.v self.topLoc
pushi.e -9
pop.v.s [stacktop]self.extflag
pushi.e 8
push.v self.topLoc
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 133
pushenv [39]

:[37]
push.v self.extflag
push.s "event"@14236
cmp.s.v EQ
bf [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [37]

:[end]