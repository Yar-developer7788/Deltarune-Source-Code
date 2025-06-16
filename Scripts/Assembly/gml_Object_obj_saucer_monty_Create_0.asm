.localvar 2 arguments

:[0]
pushi.e 3
pop.v.i self.saucercount
pushi.e 100
pop.v.i self.radius
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.x
pushbltn.v builtin.room_width
push.d 1.2
div.d.v
cmp.v.v GTE
bf [2]

:[1]
pushi.e 12
conv.i.v
pushi.e 11
conv.i.v
pushi.e 10
conv.i.v
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=9)
pop.v.v self.saucercount

:[2]
pushi.e 2
pop.v.i self.multiplier
pushi.e 68
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.collider
push.d 4.2
push.v self.collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 3
push.v self.collider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.fakeblock
pushi.e 0
pop.v.i self.boss
pushi.e 0
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
push.v self.id
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.boss

:[4]
push.i 99999
pop.v.i self.loop

:[end]