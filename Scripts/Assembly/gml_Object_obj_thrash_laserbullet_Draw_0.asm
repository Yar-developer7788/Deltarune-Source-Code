.localvar 2 arguments
.localvar 26836 oldcolor 13850

:[0]
push.v self.nextpoint
push.v self.finalpoint
cmp.v.v GT
bf [3]

:[1]
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
conv.i.v
push.v self.laserwidth
pushi.e 4
sub.i.v
pushi.e 10
conv.i.d
div.d.v
call.i max(argc=2)
pop.v.v self.image_yscale
call.i draw_get_color(argc=0)
pop.v.v local.oldcolor
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.lasertimer
pushi.e 0
cmp.i.v GT
bf [8]

:[4]
pushi.e 0
conv.i.v
push.v self.laserwidth
push.v self.lasertimer
pushi.e 4
mod.i.v
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 4
conv.i.v
b [7]

:[6]
pushi.e 3
conv.i.v

:[7]
add.v.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
b [9]

:[8]
pushi.e 0
conv.i.v
push.v self.laserwidth
pushi.e 2
conv.i.d
div.d.v
pushi.e 2
add.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v

:[9]
pushi.e 0
conv.i.v
push.v self.laserwidth
pushi.e 2
conv.i.d
div.d.v
pushi.e 2
add.i.v
push.v self.taily
push.v self.tailx
call.i draw_circle(argc=4)
popz.v
push.v self.laserwidth
pushi.e 2
add.i.v
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.laserwidth
push.v self.taily
push.v self.tailx
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.v self.lasertimer
pushi.e 0
cmp.i.v GT
bf [14]

:[10]
pushi.e 0
conv.i.v
push.v self.laserwidth
push.v self.lasertimer
pushi.e 4
mod.i.v
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 3
conv.i.v
b [13]

:[12]
pushi.e 2
conv.i.v

:[13]
add.v.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
b [15]

:[14]
pushi.e 0
conv.i.v
push.v self.laserwidth
pushi.e 2
conv.i.d
div.d.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v

:[15]
pushi.e 0
conv.i.v
push.v self.laserwidth
pushi.e 2
conv.i.d
div.d.v
push.v self.taily
push.v self.tailx
call.i draw_circle(argc=4)
popz.v
pushloc.v local.oldcolor
call.i draw_set_color(argc=1)
popz.v

:[end]