.localvar 2 arguments
.localvar 14568 initangle 6340
.localvar 14569 initspeed 6341
.localvar 14570 bulcount 6342
.localvar 107 i 6343

:[0]
pushi.e 80
conv.i.v
call.i random(argc=1)
pop.v.v local.initangle
pushi.e 4
pop.v.i local.initspeed
pushi.e 9
pop.v.i local.bulcount
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.bulcount
cmp.v.v LT
bf [4]

:[3]
pushi.e 30
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 3327
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_index
push.d 0.25
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushloc.v local.initangle
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
pushloc.v local.initspeed
add.v.i
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.v local.initangle
pushi.e 360
conv.i.d
pushloc.v local.bulcount
div.v.d
add.v.v
pop.v.v local.initangle
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
push.v local.initspeed
pushi.e 4
add.i.v
pop.v.v local.initspeed
pushi.e 50
conv.i.v
call.i random(argc=1)
pop.v.v local.initangle
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[5]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]