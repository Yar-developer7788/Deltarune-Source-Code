.localvar 2 arguments

:[0]
push.v self.init
conv.v.b
not.b
bf [8]

:[1]
push.v self.difficulty
pop.v.v self.image_index
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 180
pop.v.i self.openingoffset

:[3]
pushi.e 135
push.v self.difficulty
pushi.e 45
mul.i.v
sub.v.i
pop.v.v self.openingsize
push.v self.movementstyle
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
pushi.e 0
pop.v.i self.opening
pushi.e 0
pop.v.i self.openingLerp
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e 90
mul.i.v
pop.v.v self.lastOpening
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.lastOpening
pushi.e 45
add.i.v
pop.v.v self.lastOpening

:[6]
push.v self.target_speed
pushi.e 1
mul.i.v
pop.v.v self.target_speed

:[7]
pushi.e 1
pop.v.i self.init

:[8]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bt [12]

:[9]
push.v self.x
pushi.e -100
cmp.i.v LTE
bt [12]

:[10]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 100
add.i.v
cmp.v.v GTE
bt [12]

:[11]
push.v self.y
pushi.e -100
cmp.i.v LTE
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.v self.hitfreeze
conv.v.b
bf [17]

:[16]
pushi.e 0
pop.v.i self.hitfreeze
exit.i

:[17]
push.v self.movementstyle
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.opening
push.v self.angle_speed
add.v.v
pop.v.v self.opening
b [22]

:[19]
push.v self.openingLerp
push.v self.angle_speed
call.i abs(argc=1)
add.v.v
pop.v.v self.openingLerp
push.v self.openingLerp
pushi.e 90
cmp.i.v GTE
bf [21]

:[20]
push.v self.openingLerp
pushi.e 90
sub.i.v
pop.v.v self.openingLerp
push.v self.lastOpening
pushi.e 90
push.v self.target_speed
call.i sign(argc=1)
mul.v.i
add.v.v
pop.v.v self.lastOpening

:[21]
pushi.e 5
conv.i.v
push.v self.openingLerp
pushi.e 90
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
pushi.e 90
mul.i.v
push.v self.target_speed
call.i sign(argc=1)
mul.v.v
push.v self.lastOpening
add.v.v
pop.v.v self.opening

:[22]
push.v self.opening
push.v self.openingoffset
add.v.v
pop.v.v self.image_angle
push.v self.hitfreeze
conv.v.b
not.b
bf [24]

:[23]
push.v self.angle_speed
push.v self.target_speed
cmp.v.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 2
conv.i.v
push.v self.target_speed
push.v self.angle_speed
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.angle_speed

:[27]
push.v self.hit
conv.v.b
bf [end]

:[28]
pushi.e 0
pop.v.b self.hit
push.i 16777215
pop.v.i self.image_blend

:[end]