.localvar 2 arguments
.localvar 14922 x_offset 9084

:[0]
push.v self.sprite_index
pushi.e 231
cmp.i.v EQ
bf [2]

:[1]
call.i draw_self(argc=0)
popz.v
b [6]

:[2]
push.v self.image_xscale
pushi.e -2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 30
conv.i.v
b [5]

:[4]
pushi.e 0
conv.i.v

:[5]
pop.v.v local.x_offset
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 210
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
pushloc.v local.x_offset
add.v.v
pushi.e 100
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 231
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
call.i draw_self(argc=0)
popz.v

:[6]
push.v self.con
pushi.e 5
cmp.i.v EQ
bt [8]

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [12]

:[10]
push.v self.elecsiner
push.e 1
add.i.v
pop.v.v self.elecsiner
call.i draw_self(argc=0)
popz.v
push.v self.con
pushi.e 10
cmp.i.v GTE
bf [12]

:[11]
push.v self.elecsiner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2
add.i.v
pushi.e 239
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [end]

:[13]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.circlesize
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.circlesize
pushi.e 10
add.i.v
pop.v.v self.circlesize

:[end]