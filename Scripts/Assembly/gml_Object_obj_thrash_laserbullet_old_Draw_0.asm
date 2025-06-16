.localvar 2 arguments

:[0]
push.v self.nextpoint
push.v self.finalpoint
cmp.v.v GT
bf [3]

:[1]
push.v self.laserwidth
pushi.e 2
sub.i.v
pop.v.v self.laserwidth
push.v self.laserwidth
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 1
pop.v.i self.i

:[4]
push.v self.i
push.v self.nextpoint
cmp.v.v LT
bf [6]

:[5]
push.v self.laserwidth
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.points
pushi.e 0
pushaf.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.points
pushi.e 0
pushaf.e
call.i draw_line_width(argc=5)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.laserwidth
pushi.e -1
push.v self.nextpoint
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
pushi.e -1
push.v self.nextpoint
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.points
pushi.e 0
pushaf.e
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v

:[end]