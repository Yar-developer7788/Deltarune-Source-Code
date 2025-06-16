.localvar 2 arguments

:[0]
push.v self.colorTimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.targetColor
push.v self.startColor
cmp.v.v EQ
conv.b.v
ret.v

:[2]
push.v self.colorTimer
pushi.e 20
cmp.i.v LTE
bf [4]

:[3]
push.v self.colorTimer
pushi.e 20
conv.i.d
div.d.v
push.v self.startColor
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.targetColor

:[4]
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
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

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

:[end]