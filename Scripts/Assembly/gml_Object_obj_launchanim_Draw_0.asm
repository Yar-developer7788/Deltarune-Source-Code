.localvar 2 arguments
.localvar 27729 sidelen 14932
.localvar 27730 rotdir 14933
.localvar 27731 _xscale 14934
.localvar 27732 _yscale 14935

:[0]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.shakex
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.shakex
push.v self.shakex
pushi.e -1
mul.i.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.shakex
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [3]

:[2]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_center_pivot(argc=4)
popz.v

:[3]
pushi.e 0
pop.v.i self.sweat
push.v self.g
pushi.e 5
cmp.i.v LTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.sweat

:[5]
push.v self.g
pushi.e 9
cmp.i.v GTE
bf [7]

:[6]
push.v self.g
pushi.e 13
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.sweat

:[10]
push.v self.sweat
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 6
sub.i.v
push.v self.x
pushi.e 6
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2471
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
push.v self.t
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.t
pushi.e 20
cmp.i.v LTE
b [15]

:[14]
push.e 0

:[15]
bt [17]

:[16]
push.v self.g
pushi.e 19
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [23]

:[19]
pushi.e 1312
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v self.d
pushi.e 3266
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
pop.v.v local.sidelen
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.direction
pushi.e 90
add.i.v
pushloc.v local.sidelen
call.i lengthdir_x(argc=2)
add.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v self.direction
pushi.e 90
add.i.v
pushloc.v local.sidelen
call.i lengthdir_y(argc=2)
add.v.v
add.v.v
pop.i.v [stacktop]self.y
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pop.v.v local.rotdir
pushi.e 1
pop.v.i local._xscale
pushi.e 1
pop.v.i local._yscale
pushloc.v local.rotdir
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.d 0.75
conv.d.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
pop.v.v local._yscale
b [22]

:[21]
push.d 0.75
conv.d.v
push.d 0.5
conv.d.v
call.i random_range(argc=2)
pop.v.v local._xscale

:[22]
pushloc.v local.rotdir
pushi.e 90
mul.i.v
push.v self.direction
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v self.t
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
push.d 0.2
conv.d.v
push.d -0.2
conv.d.v
call.i random_range(argc=2)
add.v.v
mul.v.v
pushloc.v local._xscale
sub.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v self.t
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
push.d 0.2
conv.d.v
push.d -0.2
conv.d.v
call.i random_range(argc=2)
add.v.v
mul.v.v
pushloc.v local._yscale
sub.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.d -0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e -2
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[23]
push.v self.t
pushi.e 30
cmp.i.v GTE
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]