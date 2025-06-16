.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.frozen
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.interact
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.frozen

:[5]
pushi.e 200
conv.i.v
call.i gml_Script_scr_outside_camera(argc=1)
conv.v.b
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
pushglb.v global.interact
pushi.e 4
cmp.i.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.frozen

:[12]
push.v self.speed
pushi.e 0
cmp.i.v NEQ
bf [14]

:[13]
push.v self.speed
pop.v.v self.fakespeed
pushi.e 0
pop.v.i self.speed

:[14]
push.v self.direction
pop.v.v self.fakedirection
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.x
push.v self.fakedirection
push.v self.fakespeed
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.fakedirection
push.v self.fakespeed
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[16]
push.v self.creator
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
push.v self.fakedirection
pop.v.v self.image_angle
pushi.e 241
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [20]

:[19]
pushi.e 275
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [21]

:[20]
push.e 1

:[21]
bf [end]

:[22]
pushi.e 0
pop.v.i self.active
call.i instance_destroy(argc=0)
popz.v

:[end]