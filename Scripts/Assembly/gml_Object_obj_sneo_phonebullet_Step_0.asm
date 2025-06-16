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
push.v self.direction
pop.v.v self.image_angle
push.v self.direction
pushi.e 90
cmp.i.v GT
bf [9]

:[8]
push.v self.direction
pushi.e 180
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e -1
pop.v.i self.image_yscale

:[12]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.flashsiner
push.e 1
add.i.v
pop.v.v self.flashsiner
push.d 0.25
push.v self.flashsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]