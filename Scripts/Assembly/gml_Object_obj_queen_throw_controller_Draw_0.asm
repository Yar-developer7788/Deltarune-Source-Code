.localvar 2 arguments
.localvar 6852 w 11982
.localvar 24886 angl 11983
.localvar 6482 xx 11984
.localvar 6483 yy 11985
.localvar 11611 ii 11986

:[0]
push.v self.lerpintimer
pushi.e 16
cmp.i.v LT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.lerpintimer
pushi.e 15
conv.i.d
div.d.v
push.v self.ystart
pushi.e 160
add.i.v
push.v self.ystart
pushi.e 200
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerpintimer
push.e 1
add.i.v
pop.v.v self.lerpintimer

:[5]
push.v self.lerpintimer
pushi.e 16
cmp.i.v LT
bf [7]

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.lerpintimer
pushi.e 15
conv.i.d
div.d.v
push.v self.ystart
pushi.e 200
sub.i.v
push.v self.ystart
pushi.e 160
add.i.v
call.i lerp(argc=3)
pop.v.v self.y
push.v self.lerpintimer
push.e 1
add.i.v
pop.v.v self.lerpintimer

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [24]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 16
cmp.i.v GTE
bf [24]

:[12]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con
push.v self.y
pop.v.v self.ysave
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [24]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.visiblevine
pushi.e 1
cmp.i.v EQ
bf [23]

:[15]
pushi.e 569
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.target
push.v self.id
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.maker
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y2
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y2
push.v self.i
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.vineid
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x_offset
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x_offset
push.v self.target
pushi.e -9
pushenv [17]

:[16]
call.i path_add(argc=0)
pop.v.v self.path
pushi.e 0
conv.i.v
push.v self.path
call.i path_set_kind(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v self.path
call.i path_set_closed(argc=2)
popz.v
pushi.e 100
conv.i.v
push.v self.y1
push.v self.x1
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 100
conv.i.v
push.v self.y2
push.v self.x2
push.v self.path
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v self.path
call.i path_start(argc=4)
popz.v

:[17]
popenv [16]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [23]

:[18]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.siner

:[20]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 110
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.siner

:[22]
push.d 0.05
push.v self.target
pushi.e -9
pop.v.d [stacktop]self.n

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[24]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.ysave
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y

:[26]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [31]

:[27]
push.v self.lerpintimer
pushi.e 9
cmp.i.v EQ
bf [29]

:[28]
pushi.e 2
pop.v.i 576.con

:[29]
push.v self.lerpintimer
pushi.e 15
cmp.i.v GTE
bf [31]

:[30]
call.i instance_destroy(argc=0)
popz.v
push.v self.bardlymercy
pop.v.v 576.bardlymercy
push.i 133633
setowner.e
pushi.e 5
conv.i.v
pushi.e 576
pushi.e 0
pop.v.v [array]self.alarm

:[31]
call.i draw_self(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[32]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [end]

:[33]
push.i 166973
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.x1
push.i 166974
setowner.e
push.v self.y
pushi.e 18
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.y1
pushi.e 1949
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v local.w
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
call.i point_direction(argc=4)
pop.v.v local.angl
pushloc.v local.angl
pushloc.v local.w
call.i lengthdir_x(argc=2)
pop.v.v local.xx
pushloc.v local.angl
pushloc.v local.w
call.i lengthdir_y(argc=2)
pop.v.v local.yy
pushi.e 0
pop.v.i local.ii

:[34]
pushloc.v local.ii
pushi.e 40
cmp.i.v LT
bf [38]

:[35]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.visiblevine
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushloc.v local.angl
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.y1
pushloc.v local.yy
pushloc.v local.ii
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.x1
pushloc.v local.xx
pushloc.v local.ii
mul.v.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1949
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[37]
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [34]

:[38]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [32]

:[end]