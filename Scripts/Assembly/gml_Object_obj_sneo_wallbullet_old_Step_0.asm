.localvar 2 arguments

:[0]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[1]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [4]

:[2]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [4]

:[3]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
push.v self.direction
push.v self.angle_speed
add.v.v
pop.v.v self.direction
push.v self.angleadjust
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.direction
pop.v.v self.image_angle

:[9]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.yellowsiner
push.e 1
add.i.v
pop.v.v self.yellowsiner
push.d 0.25
push.v self.yellowsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 4235519
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[11]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [16]

:[12]
push.v self.y
push.v self.loopy1
cmp.v.v LT
bf [14]

:[13]
push.v self.loopy2
push.v self.loopy1
push.v self.y
sub.v.v
sub.v.v
pop.v.v self.y

:[14]
push.v self.y
push.v self.loopy2
cmp.v.v GT
bf [16]

:[15]
push.v self.loopy1
push.v self.y
push.v self.loopy2
sub.v.v
add.v.v
pop.v.v self.y

:[16]
push.v self.y
push.v self.falsevspeed
add.v.v
pop.v.v self.y
push.v self.bighitbox
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
conv.b.v
pushi.e 1
conv.b.v
pushi.e 592
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i collision_rectangle(argc=7)
pop.v.v self.hitshot
push.v self.hitshot
pushi.e -4
cmp.i.v NEQ
bf [end]

:[18]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]