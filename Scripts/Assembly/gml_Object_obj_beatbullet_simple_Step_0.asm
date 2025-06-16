.localvar 2 arguments

:[0]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.b self.horizontal
b [3]

:[2]
pushi.e 1
pop.v.b self.horizontal

:[3]
pushi.e 1247
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v 1247.x
pop.v.v self.xx
push.v 1247.y
pop.v.v self.yy

:[5]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [20]

:[6]
push.v 1247.x
pushi.e 38
add.i.v
pop.v.v self.xx
pushi.e 152
pop.v.i self.yy
pushi.e 232
pop.v.i self.mody
push.v self.xx
pushi.e 50
sub.i.v
pushi.e 38
sub.i.v
pushi.e 2
add.i.v
pop.v.v self.rx
push.v self.xx
pushi.e 330
add.i.v
pushi.e 38
sub.i.v
pushi.e 2
add.i.v
pushi.e 4
sub.i.v
pop.v.v self.lx
push.v self.x
push.v self.lx
cmp.v.v EQ
bf [8]

:[7]
push.s "left"@5994
pop.v.s self.dir

:[8]
push.v self.x
push.v self.rx
cmp.v.v EQ
bf [10]

:[9]
push.s "right"@4637
pop.v.s self.dir

:[10]
push.v self.y
push.v self.yy
cmp.v.v EQ
bf [12]

:[11]
push.s "down"@25524
pop.v.s self.dir

:[12]
push.v self.dir
push.s "down"@25524
cmp.s.v NEQ
bf [14]

:[13]
pushi.e 1
pop.v.b self.horizontal
b [15]

:[14]
pushi.e 0
pop.v.b self.horizontal

:[15]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [17]

:[16]
pushi.e -90
pop.v.i self.image_angle

:[17]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [19]

:[18]
pushi.e 90
pop.v.i self.image_angle

:[19]
pushi.e 1230
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.glow
push.v self.image_angle
push.v self.glow
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.sprite_index
push.v self.glow
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.glow
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.init

:[20]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [32]

:[21]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 1.5
mul.d.v
pop.v.v self.image_alpha
push.v self.timer
pushi.e 16
cmp.i.v EQ
bf [23]

:[22]
push.v self.horizontal
pushi.e 1
cmp.b.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [32]

:[25]
push.v self.dir
push.s "down"@25524
cmp.s.v EQ
bf [27]

:[26]
push.v self.traveltime
pushi.e 400
conv.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[27]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [29]

:[28]
push.v self.traveltime
push.v self.y
push.v self.xx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[29]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [31]

:[30]
push.v self.traveltime
push.v self.y
push.v self.xx
pushi.e 278
add.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[31]
pushi.e 1
pop.v.i self.con

:[32]
push.v self.dir
push.s "down"@25524
cmp.s.v EQ
bf [34]

:[33]
push.v self.y
pushi.e 399
cmp.i.v GT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [39]

:[38]
push.v self.x
push.v self.xx
cmp.v.v LTE
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [44]

:[43]
push.v self.x
push.v self.xx
pushi.e 278
add.i.v
cmp.v.v GTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
call.i instance_destroy(argc=0)
popz.v

:[47]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1104
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [50]

:[49]
push.e 0

:[50]
bf [end]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[end]