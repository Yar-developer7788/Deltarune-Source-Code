.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.colortimer
pushi.e 1
cmp.i.v LTE
bf [2]

:[1]
push.v self.colortimer
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.colortimer
push.d 0.3333333333333333
add.d.v
pop.v.v self.colortimer

:[2]
push.v self.x
push.v self.minx
pushi.e 20
sub.i.v
cmp.v.v LT
bt [6]

:[3]
push.v self.x
push.v self.maxx
pushi.e 20
add.i.v
cmp.v.v GT
bt [6]

:[4]
push.v self.y
push.v self.miny
pushi.e 20
sub.i.v
cmp.v.v LT
bt [6]

:[5]
push.v self.y
push.v self.maxy
pushi.e 20
add.i.v
cmp.v.v GT
b [7]

:[6]
push.e 1

:[7]
bf [10]

:[8]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.image_angle
push.v self.spin
add.v.v
pop.v.v self.image_angle

:[end]