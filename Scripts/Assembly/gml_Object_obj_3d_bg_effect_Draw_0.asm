.localvar 2 arguments
.localvar 10271 b 14651
.localvar 27444 remleft 14652
.localvar 27443 oldlen 14653
.localvar 720 len 14654
.localvar 6665 width 14655

:[0]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.bg_speed

:[2]
push.v self.depth
pushi.e 1000
cmp.i.v EQ
bf [4]

:[3]
pushi.e -999
pop.v.i self.mysurface
pushi.e 998
pop.v.i self.depth

:[4]
pushi.e 1081
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 1080
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.rectsiner
push.v self.bg_speed
push.v self.f
mul.v.v
add.v.v
pop.v.v self.rectsiner

:[9]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.slow_down

:[11]
push.v self.slow_down
pushi.e 1
cmp.i.v EQ
bf [22]

:[12]
push.v self.bg_speed
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.bg_speed
push.d 0.03
sub.d.v
pop.v.v self.bg_speed

:[14]
push.v self.bg_speed
pushi.e 0
cmp.i.v LT
bf [16]

:[15]
pushi.e 0
pop.v.i self.bg_speed

:[16]
pushi.e 812
pushenv [21]

:[17]
pushi.e 1
pop.v.i self.slow_down
push.v self.siner
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
push.v self.siner
push.d 0.03
sub.d.v
pop.v.v self.siner

:[19]
push.v self.siner
pushi.e 0
cmp.i.v LT
bf [21]

:[20]
pushi.e 0
pop.v.i self.siner

:[21]
popenv [17]

:[22]
push.v self.slow_down
pushi.e 0
cmp.i.v EQ
bf [27]

:[23]
pushi.e 812
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.slow_down

:[25]
popenv [24]
push.v self.bg_speed
push.d 0.8
cmp.d.v LT
bf [27]

:[26]
push.v self.bg_speed
push.d 0.03
add.d.v
pop.v.v self.bg_speed

:[27]
push.v self.rectsiner
pushi.e 20
cmp.i.v GTE
bf [29]

:[28]
pushi.e 812
conv.i.v
pushi.e 115
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.b
push.v self.depth
pushi.e 1
add.i.v
pushloc.v local.b
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.rectsiner

:[29]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.bg_speed

:[31]
push.d 0.7
pop.v.d self.bg_speed
pushi.e 1081
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [33]

:[32]
pushi.e 1080
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.siner
push.v self.bg_speed
push.v self.f
mul.v.v
add.v.v
pop.v.v self.siner

:[36]
push.v self.siner
pushi.e 1000
cmp.i.v GTE
bf [38]

:[37]
push.v self.siner
pushi.e 500
sub.i.v
pop.v.v self.siner

:[38]
push.v self.mysurface
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [40]

:[39]
pushi.e 480
conv.i.v
pushi.e 320
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.mysurface

:[40]
push.v self.mysurface
call.i surface_set_target(argc=1)
popz.v
push.v self.siner
pop.v.v local.remleft
pushi.e 0
pop.v.i local.oldlen
pushi.e 45
pop.v.i self.i

:[41]
push.v self.i
pushi.e 144
cmp.i.v LT
bf [47]

:[42]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 2
pop.v.i local.oldlen

:[44]
push.v self.i
push.v self.i
push.v self.i
mul.v.v
pushi.e 48
conv.i.d
div.d.v
sub.v.v
pop.v.v local.len
pushloc.v local.oldlen
pushloc.v local.len
sub.v.v
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
pop.v.v local.width
push.v local.remleft
pushloc.v local.width
sub.v.v
pop.v.v local.remleft
push.d 0.8
conv.d.v
push.i 16777215
conv.i.v
push.d 0.9
push.v self.i
push.v self.i
mul.v.v
push.v self.i
mul.v.v
mul.v.d
push.i 819200
conv.i.d
div.d.v
pushi.e 2
conv.i.v
push.v self.i
pushi.e 16
conv.i.d
div.d.v
push.v self.i
push.v self.i
mul.v.v
pushi.e 100
conv.i.d
div.d.v
sub.v.v
pushi.e 120
add.i.v
pushi.e 275
pushloc.v local.len
add.v.i
pushi.e 142
conv.i.v
pushloc.v local.width
pushi.e 0
conv.i.v
pushloc.v local.remleft
pushi.e 2209
conv.i.v
call.i gml_Script_draw_background_part_ext(argc=11)
popz.v
pushloc.v local.len
pop.v.v local.oldlen
push.v self.i
pushi.e 90
cmp.i.v GT
bf [46]

:[45]
push.v self.i
push.d 0.5
sub.d.v
pop.v.v self.i

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[47]
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.mysurface
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
push.v self.mysurface
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 50
push.v self.siner
add.v.i
pushi.e 100
push.v self.siner
sub.v.i
pushi.e 142
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 2209
conv.i.v
call.i gml_Script_draw_background_part_ext(argc=11)
popz.v

:[end]