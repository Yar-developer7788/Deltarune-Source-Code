.localvar 2 arguments
.localvar 27423 makeshot 14580
.localvar 19881 _y 14581
.localvar 21483 cloud 14582

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 135
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.introtimer
push.e 1
add.i.v
pop.v.v self.introtimer
push.v self.introtimer
pushi.e 15
cmp.i.v EQ
bf [2]

:[1]
push.d 0.4
pop.v.d self.image_speed

:[2]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [8]

:[3]
push.v self.openmisslechambertimer
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[5]
push.v self.openmisslechambertimer
pushi.e 5
cmp.i.v LT
bf [7]

:[6]
push.v self.openmisslechambertimer
pushi.e 1
add.i.v
pop.v.v self.openmisslechambertimer
push.v self.xstart
pushi.e 4
conv.i.d
push.v self.openmisslechambertimer
div.v.d
add.v.v
pushi.e 8
conv.i.d
push.v self.openmisslechambertimer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 4
conv.i.d
push.v self.openmisslechambertimer
div.v.d
add.v.v
pushi.e 8
conv.i.d
push.v self.openmisslechambertimer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
b [8]

:[7]
push.v self.misslewaittimer
push.e 1
add.i.v
pop.v.v self.misslewaittimer
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[8]
push.v self.misslewaittimer
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
exit.i

:[10]
push.v self.oldmode
conv.v.b
not.b
bf [37]

:[11]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [14]

:[13]
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.con

:[14]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [34]

:[15]
pushi.e 0
pop.v.i local.makeshot
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [17]

:[16]
push.v self.shotcount
pushi.e 3
push.v self.difficulty
add.v.i
cmp.v.v LT
b [18]

:[17]
push.e 0

:[18]
bf [25]

:[19]
push.v self.volleytimer
push.e 1
sub.i.v
pop.v.v self.volleytimer
push.v self.volleytimer
pushi.e 0
cmp.i.v LTE
bf [21]

:[20]
pushi.e 1
pop.v.i local.makeshot
push.v self.volleycount
push.e 1
add.i.v
pop.v.v self.volleycount
pushi.e 5
pop.v.i self.volleytimer

:[21]
push.v self.volleycount
push.v self.volleytotal
cmp.v.v GTE
bf [25]

:[22]
pushi.e 0
pop.v.i local.makeshot
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.side
pushi.e 30
pop.v.i self.timer
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 15
pop.v.i self.timer

:[24]
pushi.e -1
pop.v.i self.volleycount
push.v self.shotcount
push.e 1
add.i.v
pop.v.v self.shotcount

:[25]
pushloc.v local.makeshot
conv.v.b
bf [27]

:[26]
push.v self.volleycount
pushi.e 3
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [34]

:[29]
pushi.e 0
pop.v.i local._y
push.v self.volleycount
pushi.e 3
cmp.i.v GTE
bf [31]

:[30]
push.v local._y
pushi.e 20
add.i.v
pop.v.v local._y

:[31]
pushi.e 221
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 221
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 800
conv.i.v
push.v self.y
pushi.e 16
add.i.v
pushloc.v local._y
add.v.v
push.v self.x
pushi.e -1
push.v self.volleycount
conv.v.i
push.v [array]self.missilex
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e -6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=4)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.bulletdepth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.d
pushi.e -9
pushenv [33]

:[32]
push.v self.direction
pushi.e 90
sub.i.v
pop.v.v self.image_angle
call.i gml_Script_scr_afterimage_grow(argc=0)
pop.v.v local.cloud
pushi.e 1034
pushloc.v local.cloud
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[33]
popenv [32]

:[34]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
b [end]

:[37]
push.v self.oldmode
conv.v.b
bf [end]

:[38]
push.v self.siner
push.d 0.7
add.d.v
pop.v.v self.siner
push.v self.xstart
pushi.e 20
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 54
mul.i.v
add.v.v
pop.v.v self.x
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 9
cmp.i.v GT
bf [42]

:[39]
push.v self.bulletcount
push.e 1
add.i.v
pop.v.v self.bulletcount
push.v self.bulletcount
push.v self.bulletcountmax
cmp.v.v EQ
bf [41]

:[40]
pushi.e -7
pop.v.i self.timer
pushi.e 0
pop.v.i self.bulletcount
pushi.e 8
pop.v.i self.bulletcountmax
b [42]

:[41]
pushi.e 799
conv.i.v
push.v self.y
pushi.e 36
add.i.v
push.v self.x
pushi.e 55
sub.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.bulletdepth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 799
conv.i.v
push.v self.y
pushi.e 36
add.i.v
push.v self.x
pushi.e 55
add.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.bulletdepth
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 5
pop.v.i self.timer

:[42]
pushglb.v global.turntimer
pushi.e 3
cmp.i.v LT
bf [end]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[end]