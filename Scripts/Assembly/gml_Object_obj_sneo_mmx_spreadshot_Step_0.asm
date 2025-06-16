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
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 8
cmp.i.v EQ
bt [9]

:[8]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 16
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 5
pop.v.i self.flashtimer

:[end]