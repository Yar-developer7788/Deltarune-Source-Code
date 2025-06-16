.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.tiltAmount
pushi.e 0
pop.v.i self.t
push.v self.x
pop.v.v self.xx
pushi.e 2
pop.v.i self.increment
pushi.e 360
pop.v.i self.amplitude
pushi.e 0
pop.v.i self.type
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.type

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3290
pop.v.i self.sprite_index
push.v self.y
pushi.e 24
sub.i.v
pop.v.v self.y

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.mySwatch
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bf [6]

:[5]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [12]

:[8]
push.v self.t
pushi.e 180
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1296
conv.i.v
push.v self.y
pushi.e 156
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mySwatch
push.s "left"@5994
push.v self.mySwatch
pushi.e -9
pop.v.s [stacktop]self.dir
b [11]

:[10]
pushi.e 1296
conv.i.v
push.v self.y
pushi.e 156
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mySwatch
push.s "right"@4637
push.v self.mySwatch
pushi.e -9
pop.v.s [stacktop]self.dir

:[11]
push.v self.id
push.v self.mySwatch
pushi.e -9
pop.v.v [stacktop]self.target

:[12]
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.xx
push.v self.shift
add.v.v
pop.v.v self.x
push.s "left"@5994
pop.v.s self.going
pushi.e 0
pop.v.i self.tellspeed
push.v self.x
pop.v.v self.startX
pushi.e 1
pop.v.b self.active
pushi.e -5
pushi.e 544
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
push.v self.mySwatch
pushi.e -9
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[end]