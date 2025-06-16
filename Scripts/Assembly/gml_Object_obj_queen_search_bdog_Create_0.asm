.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.destroyonhit
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.impact
push.v self.y
push.v self.x
push.v 872.y
push.v 872.x
call.i point_direction(argc=4)
pop.v.v self.direction
pushi.e 0
pop.v.i self.bufferstate
pushi.e 45
pop.v.i self.loading
pushi.e -4
pop.v.i self.parentwindow
pushi.e 0
pop.v.i self.image_index
push.v self.x
push.v 872.x
cmp.v.v LT
bf [2]

:[1]
pushi.e -1
conv.i.v
b [3]

:[2]
pushi.e 1
conv.i.v

:[3]
pop.v.v self.flip
pushi.e 0
pop.v.i self.birthday
push.v self.x
pop.v.v self.lastx
push.v self.y
pop.v.v self.lasty
push.v self.image_angle
pop.v.v self.lastangle
pushi.e -18
conv.i.v
pushi.e -20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v self.hatoffdir
pushi.e -20
pop.v.i self.hatoffsetx
pushi.e -18
pop.v.i self.hatoffsety
pushi.e 0
pop.v.i self.animtimer
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 36
cmp.i.v LT
bf [end]

:[5]
pushi.e 549
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.i
pushi.e 10
mul.i.v
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.depth
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[end]