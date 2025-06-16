.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 136
cmp.i.v EQ
bf [4]

:[1]
push.v self.direction
pushi.e 270
cmp.i.v NEQ
bf [4]

:[2]
push.v self.bounceOffDoor
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [22]

:[6]
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction
push.s "left"@5994
pop.v.s self.turndir
push.v self.direction
pushi.e 360
cmp.i.v GTE
bf [8]

:[7]
push.v self.direction
pushi.e 360
sub.i.v
pop.v.v self.direction

:[8]
push.v self.direction
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.direction
pushi.e 360
add.i.v
pop.v.v self.direction

:[10]
push.v self.breakcount
push.e 1
add.i.v
pop.v.v self.breakcount
push.v self.direction
push.v self.remdir
pushi.e 180
sub.i.v
cmp.v.v EQ
bt [12]

:[11]
push.v self.direction
push.v self.remdir
pushi.e 180
add.i.v
cmp.v.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v self.direction
pushi.e 90
add.i.v
pop.v.v self.direction

:[15]
push.v self.breakcount
pushi.e 4
cmp.i.v EQ
bf [19]

:[16]
push.v self.remdir
pushi.e 180
add.i.v
pop.v.v self.direction
push.v self.direction
pushi.e 360
cmp.i.v GT
bf [18]

:[17]
push.v self.direction
pushi.e 360
sub.i.v
pop.v.v self.direction

:[18]
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.mx
push.v self.direction
pushi.e 40
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.my

:[19]
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.turnfx
push.v self.direction
push.v self.turnfx
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 2695
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.turnfx
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 20
add.i.v
pop.i.v [stacktop]self.x
push.v self.turnfx
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 20
add.i.v
pop.i.v [stacktop]self.y
push.v self.turndir
push.s "right"@4637
cmp.s.v EQ
bf [21]

:[20]
pushi.e 1
push.v self.turnfx
pushi.e -9
pop.v.i [stacktop]self.image_index

:[21]
b [end]

:[22]
push.v self.direction
pushi.e 270
cmp.i.v NEQ
bf [25]

:[23]
push.v self.bounceOffDoor
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[28]
pushi.e 5
pop.v.i self.con

:[end]