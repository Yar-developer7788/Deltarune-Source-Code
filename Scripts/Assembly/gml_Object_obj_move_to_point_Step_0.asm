.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[1]
push.v self.moved
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.target
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
push.v self.movey
push.v self.movex
call.i distance_to_point(argc=2)
pop.v.v self.dist
push.v self.movey
push.v self.movex
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.dir
push.v self.dist
push.v self.movemax
div.v.v
pop.v.v self.amt
push.v self.dir
push.v self.amt
call.i lengthdir_x(argc=2)
pop.v.v self.xadd
push.v self.dir
push.v self.amt
call.i lengthdir_y(argc=2)
pop.v.v self.yadd
pushi.e 1
pop.v.i self.moved

:[3]
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.xadd
add.v.v
pop.i.v [stacktop]self.x
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.yadd
add.v.v
pop.i.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 893
cmp.i.v EQ
bf [5]

:[4]
push.v self.amt
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.fake_speed
push.v self.dir
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.fake_direction

:[5]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
push.v self.movemax
div.v.v
push.v self.movex
push.v self.x
call.i lerp(argc=3)
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.movetimer
push.v self.movemax
div.v.v
push.v self.movey
push.v self.y
call.i lerp(argc=3)
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.movetimer
push.v self.movemax
cmp.v.v GTE
bf [15]

:[6]
push.v self.target
pushi.e -9
push.v [stacktop]self.object_index
pushi.e 893
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.fake_speed

:[8]
push.v self.charmarker
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.fun

:[10]
push.v self.charmarker
pushi.e 2
cmp.i.v EQ
bf [14]

:[11]
push.v self.target
pushi.e -9
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.fun
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[13]
popenv [12]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.v self.target
pushi.e 923
cmp.i.v EQ
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
b [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]