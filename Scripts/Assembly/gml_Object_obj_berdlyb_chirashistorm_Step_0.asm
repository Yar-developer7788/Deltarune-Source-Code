.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.iy

:[2]
push.v self.iy
pushi.e 3
cmp.i.v LT
bf [9]

:[3]
pushi.e 0
pop.v.i self.ix

:[4]
push.v self.ix
pushi.e 4
cmp.i.v LT
bf [8]

:[5]
pushi.e 490
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.originx
push.v self.ix
pushi.e 40
mul.i.v
add.v.v
push.v self.iy
pushi.e 20
mul.i.v
add.v.v
pushi.e 35
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.xx
push.v self.originy
push.v self.iy
pushi.e 40
mul.i.v
add.v.v
pushi.e 35
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.yy
push.v self.xx
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.___myrememberx
push.v self.yy
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.___myremembery
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.fireoffset
push.v self.ix
pushi.e 3
push.v self.iy
sub.v.i
add.v.v
pushi.e 5
mul.i.v
add.v.v
pop.i.v [stacktop]self.fireoffset
push.v self.difficulty
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.difficulty
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.yy
push.v self.xx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 135
conv.i.v
call.i angle_difference(argc=2)
pushi.e 10
conv.i.d
div.d.v
call.i round(argc=1)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.timer
push.v self.first_set
conv.v.b
not.b
bf [7]

:[6]
push.i 8421504
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[7]
push.v self.ix
push.e 1
add.i.v
pop.v.v self.ix
b [4]

:[8]
push.v self.iy
push.e 1
add.i.v
pop.v.v self.iy
b [2]

:[9]
pushi.e 1
pop.v.i self.init

:[end]