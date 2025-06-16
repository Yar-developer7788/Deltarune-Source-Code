.localvar 2 arguments

:[0]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
cmp.v.v GTE
bt [5]

:[2]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bt [5]

:[3]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
cmp.v.v GTE
bt [5]

:[4]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.direction
push.v self.angle_speed
add.v.v
pop.v.v self.direction
push.v self.angleadjust
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.direction
pop.v.v self.image_angle

:[10]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
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
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[12]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [17]

:[13]
push.v self.y
push.v self.loopy1
cmp.v.v LT
bf [15]

:[14]
push.v self.loopy2
push.v self.loopy1
push.v self.y
sub.v.v
sub.v.v
pop.v.v self.y

:[15]
push.v self.y
push.v self.loopy2
cmp.v.v GT
bf [17]

:[16]
push.v self.loopy1
push.v self.y
push.v self.loopy2
sub.v.v
add.v.v
pop.v.v self.y

:[17]
push.v self.y
push.v self.falsevspeed
add.v.v
pop.v.v self.y
push.v self.bighitbox
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
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

:[19]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]