.localvar 2 arguments
.localvar 23824 linkdir 10840

:[0]
push.v self.warning
conv.v.b
bf [5]

:[1]
pushi.e 1
conv.i.v
push.v self.warning
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 255
conv.i.v
b [4]

:[3]
push.i 4235519
conv.i.v

:[4]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.origy
push.v self.origx
push.v self.warning
pushi.e 1
sub.i.v
pushi.e 9
mod.i.v
pushi.e 3
conv.i.d
div.d.v
push.v self.warnoffset
add.v.v
pushi.e 1703
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.dodraw
conv.v.b
bf [end]

:[6]
push.v self.y
push.v self.x
push.v self.origy
push.v self.origx
call.i point_direction(argc=4)
pop.v.v local.linkdir
pushi.e 6
pop.v.i self.i

:[7]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local.linkdir
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
push.v self.i
pushi.e 12
conv.i.d
div.d.v
push.v self.y
push.v self.origy
call.i lerp(argc=3)
push.v self.i
pushi.e 12
conv.i.d
div.d.v
push.v self.x
push.v self.origx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
pushi.e 547
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1702
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]