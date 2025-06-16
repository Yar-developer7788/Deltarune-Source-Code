.localvar 2 arguments

:[0]
push.v self.wall_destroy
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 760
add.i.v
cmp.v.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
cmp.v.v LT
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.duration
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.at
pushi.e 0
pop.v.i self.sizeScale
push.v self.timer
pushi.e 20
cmp.i.v LTE
bf [16]

:[10]
push.v self.easestyle
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
push.v self.timer
push.v self.at
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [13]

:[12]
push.v self.timer
push.v self.at
pushi.e 2
conv.i.d
div.d.v
div.v.v
pop.v.v self.sizeScale

:[13]
b [15]

:[14]
push.v self.timer
push.v self.at
div.v.v
pop.v.v self.sizeScale

:[15]
b [19]

:[16]
push.v self.timer
push.v self.duration
cmp.v.v LT
bf [19]

:[17]
push.v self.at
push.v self.timer
push.v self.at
sub.v.v
sub.v.v
push.v self.at
div.v.v
pop.v.v self.sizeScale
push.v self.easestyle
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -1
push.v self.sizeScale
mul.v.i
push.v self.sizeScale
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.sizeScale

:[19]
push.v self.easestyle
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e -1
push.v self.sizeScale
mul.v.i
push.v self.sizeScale
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.sizeScale

:[21]
push.v self.sizeScale
pop.v.v self.image_xscale
push.v self.sizeScale
push.v self.sizemultiplier
mul.v.v
pop.v.v self.image_yscale
push.v self.sizeScale
push.i 16777215
conv.i.v
push.v self.startColor
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]