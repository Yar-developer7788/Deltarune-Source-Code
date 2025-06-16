.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.init

:[2]
push.v self.activecon
pushi.e 0
cmp.i.v EQ
bf [46]

:[3]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[4]
pushi.e 0
pop.v.i self.aligned
push.v self.extflag
pushi.e 999
cmp.i.v EQ
bf [22]

:[5]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [8]

:[6]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [8]

:[7]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.aligned

:[12]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [15]

:[13]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [15]

:[14]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.aligned

:[19]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [22]

:[20]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [22]

:[21]
pushi.e 1
pop.v.i self.aligned

:[22]
push.v self.image_index
pushi.e 14
cmp.i.v NEQ
bf [25]

:[23]
push.v self.image_index
pushi.e 13
cmp.i.v NEQ
bf [25]

:[24]
push.v self.extflag
pushi.e 0
cmp.b.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [44]

:[27]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [30]

:[28]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [30]

:[29]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [31]

:[30]
push.e 0

:[31]
bf [34]

:[32]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [34]

:[33]
pushi.e 1
pop.v.i self.aligned

:[34]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [37]

:[35]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [37]

:[36]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [41]

:[39]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [41]

:[40]
pushi.e 1
pop.v.i self.aligned

:[41]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [44]

:[42]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [44]

:[43]
pushi.e 1
pop.v.i self.aligned

:[44]
push.v self.aligned
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.activecon

:[46]
push.v self.activecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[47]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [50]

:[48]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [50]

:[49]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [53]

:[51]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [53]

:[52]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[53]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [56]

:[54]
push.v self.image_index
pushi.e 9
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.tasquecon
pushi.e 99
pop.v.i self.con

:[56]
push.v self.dismiss
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.dismiss

:[58]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[59]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [end]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[end]