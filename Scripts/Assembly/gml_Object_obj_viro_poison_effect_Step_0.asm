.localvar 2 arguments
.localvar 22877 progress 17631
.localvar 6801 c 17632
.localvar 14141 count 17633
.localvar 36275 startoffset 17634
.localvar 3177 dir 17635
.localvar 720 len 17636
.localvar 6482 xx 17637
.localvar 6483 yy 17638

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 2
conv.i.v
push.v self.timer
push.v self.growtime
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local.progress
pushloc.v local.progress
push.v self.maxradius
push.v self.minradius
call.i lerp(argc=3)
pop.v.v self.radius
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 421
conv.i.v
push.v self.radius
push.v self.y
push.v self.x
call.i collision_circle(argc=6)
conv.v.b
bf [10]

:[1]
pushi.e 421
pushenv [9]

:[2]
push.v self.active
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
push.v self.countdown
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
b [9]

:[7]
push.v other.y
push.v other.x
call.i distance_to_point(argc=2)
pop.v.v self.distance
push.v self.distance
push.v other.radius
cmp.v.v LTE
bf [9]

:[8]
pushi.e 1
pop.v.i self.countdown
pushi.e 4
pop.v.i self.flash
pushi.e 1
pop.v.i self.spawnVirus
pushi.e 0
pop.v.b self.spawning
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 939
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e 90
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v other.color
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.depth
pushi.e 1
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[9]
popenv [2]

:[10]
push.v self.radius
push.v self.nextradius
cmp.v.v GTE
bf [end]

:[11]
push.v self.nextradius
pushi.e 10
add.i.v
pop.v.v self.nextradius
push.v self.radius
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
pop.v.v local.c
pushloc.v local.c
pushi.e 60
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1
add.i.v
pop.v.v local.count
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v local.startoffset
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushloc.v local.count
cmp.v.v LTE
bf [14]

:[13]
pushloc.v local.startoffset
pushi.e 360
conv.i.d
pushloc.v local.count
div.v.d
push.v self.i
mul.v.v
add.v.v
pushi.e 180
conv.i.d
pushloc.v local.count
div.v.d
pushi.e -180
conv.i.d
pushloc.v local.count
div.v.d
call.i random_range(argc=2)
add.v.v
pop.v.v local.dir
push.v self.radius
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v local.len
pushloc.v local.dir
pushloc.v local.len
call.i lengthdir_x(argc=2)
pop.v.v local.xx
pushloc.v local.dir
pushloc.v local.len
call.i lengthdir_y(argc=2)
pop.v.v local.yy
pushi.e 459
conv.i.v
pushloc.v local.yy
push.v self.y
add.v.v
pushloc.v local.xx
push.v self.x
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 3342
conv.i.v
pushi.e 454
conv.i.v
call.i choose(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e 90
mul.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.color
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.d 0.5
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
push.v self.timer
push.v self.growtime
cmp.v.v GTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]