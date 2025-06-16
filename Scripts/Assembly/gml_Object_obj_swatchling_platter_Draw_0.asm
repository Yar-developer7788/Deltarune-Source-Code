.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_gt_maxy(argc=0)
pushi.e 40
add.i.v
cmp.v.v GT
bf [4]

:[1]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.image_alpha
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v
push.v self.platterPlate
call.i instance_destroy(argc=1)
popz.v
push.v self.platterLid
call.i instance_destroy(argc=1)
popz.v

:[3]
b [6]

:[4]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.image_alpha
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[6]
push.v self.colorTimer
pushi.e 0
cmp.i.v LT
bt [8]

:[7]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self.targetColor
push.v self.startColor
cmp.v.v EQ
conv.b.v
ret.v

:[11]
push.v self.colorTimer
pushi.e 20
cmp.i.v LTE
bf [13]

:[12]
push.v self.colorTimer
pushi.e 20
conv.i.d
div.d.v
push.v self.startColor
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.targetColor

:[13]
push.v self.targetColor
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.targetColor
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.colorTimer
push.e 1
sub.i.v
pop.v.v self.colorTimer

:[end]