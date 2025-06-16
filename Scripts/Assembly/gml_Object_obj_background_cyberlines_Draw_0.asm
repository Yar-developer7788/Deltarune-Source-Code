.localvar 2 arguments

:[0]
push.i 1005400
pop.v.i self.depth
call.i gml_Script_camerax(argc=0)
push.d 0.95
mul.d.v
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [11]

:[1]
pushi.e 0
pop.v.i self.linesiner
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [4]

:[3]
push.i 168620
setowner.e
pushi.e 200
pushi.e 40
push.v self.i
push.v self.i
mul.v.v
mul.v.i
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.liney
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [10]

:[6]
push.i 168621
setowner.e
call.i path_add(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.patha
push.i 168622
setowner.e
call.i path_add(argc=0)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pathb
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_set_closed(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_set_closed(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_set_precision(argc=2)
popz.v
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_set_precision(argc=2)
popz.v
pushi.e 0
pop.v.i self.j

:[7]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e -70
push.v self.j
mul.v.i
push.v self.i
pushi.e 20
mul.i.v
push.v self.i
push.v self.j
mul.v.v
push.v self.j
mul.v.v
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i path_add_point(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e -70
push.v self.j
mul.v.i
push.v self.i
pushi.e 20
mul.i.v
push.v self.i
push.v self.j
mul.v.v
push.v self.j
mul.v.v
pushi.e 8
mul.i.v
add.v.v
neg.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i path_add_point(argc=4)
popz.v
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [7]

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[10]
pushi.e 1
pop.v.i self.init

:[11]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.linesiner
push.e 1
add.i.v
pop.v.v self.linesiner
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [24]

:[12]
push.d 0.1
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [15]

:[14]
push.v self.i
push.d 0.05
mul.d.v
pushi.e 0
conv.i.v
push.i 8388608
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 50
sub.i.v
push.v self.i
pushi.e 15
mul.i.v
add.v.v
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
push.v self.yy
pushi.e 50
sub.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
push.d 0.5
push.v self.linesiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [18]

:[17]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 319
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.patha
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 320
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i draw_path(argc=4)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 320
add.i.v
push.v self.xx
pushi.e 321
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pathb
call.i draw_path(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [23]

:[20]
push.i 168620
setowner.e
push.d 0.005
conv.d.v
pushi.e -400
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
call.i lerp(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.liney
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e -100
cmp.i.v LTE
bf [22]

:[21]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.liney
pushi.e -1
pushi.e 19
push.v [array]self.liney
add.v.v
pop.i.v [array]self.liney

:[22]
pushi.e 1
conv.b.v
push.v self.yy
pushi.e 600
add.i.v
push.v self.xx
pushi.e 640
add.i.v
pushi.e 100
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
add.v.v
push.v self.xx
pushi.e 100
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.liney
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_ellipse(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [19]

:[23]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 2
add.i.v
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
pushbltn.v builtin.room_height
pushi.e 240
sub.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[24]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]