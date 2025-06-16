.localvar 2 arguments
.localvar 26580 bulletdir 13618

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e -1
conv.i.v
push.v self.timer
push.v self.tempo
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v self.scale
push.v self.timer
push.v self.tempo
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.state

:[3]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [17]

:[4]
push.v self.timer
push.v self.tempo
cmp.v.v GTE
bf [14]

:[5]
push.v self.beatcount
push.v self.maxbeats
cmp.v.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.state
exit.i

:[7]
push.v self.timer
push.v self.tempo
sub.v.v
pop.v.v self.timer
pushi.e 717
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v 631.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 10
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.minradius
pushi.e 45
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.growtime
pushi.e 20
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.fadetime
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.easepower
pushi.e 150
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.maxradius
pushi.e 0
pop.v.i self.btimer
push.d 1.25
pop.v.d self.scale
pushi.e 0
pop.v.i local.bulletdir
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
push.v self.bulletsperbeat
cmp.v.v LT
bf [13]

:[9]
push.v self.baseangle
push.v self.i
push.v self.bulletsperbeat
div.v.v
pushi.e 360
mul.i.v
add.v.v
pushi.e 180
conv.i.d
push.v self.bulletsperbeat
div.v.d
call.i random(argc=1)
add.v.v
pushi.e 90
conv.i.d
push.v self.bulletsperbeat
div.v.d
sub.v.v
pop.v.v local.bulletdir
push.v self.x
pushloc.v local.bulletdir
pushi.e 10
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.xx
push.v self.y
pushloc.v local.bulletdir
pushi.e 10
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.yy
pushi.e 733
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 3
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushloc.v local.bulletdir
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1785
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 80
conv.i.v
call.i random(argc=1)
pushi.e 40
sub.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushloc.v local.bulletdir
push.v self.direction
call.i angle_difference(argc=2)
call.i abs(argc=1)
pushi.e 70
cmp.i.v GT
bf [11]

:[10]
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
b [12]

:[11]
pushi.e 60
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime

:[12]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[13]
push.v self.baseangle
pushi.e 180
conv.i.d
push.v self.bulletsperbeat
div.v.d
add.v.v
pop.v.v self.baseangle
push.v self.beatcount
push.e 1
add.i.v
pop.v.v self.beatcount

:[14]
push.v self.scale
pushi.e 1
cmp.i.v GT
bf [16]

:[15]
push.v self.scale
push.d 0.05
sub.d.v
pop.v.v self.scale

:[16]
b [20]

:[17]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [20]

:[18]
push.v self.scale
push.d 0.1
sub.d.v
pop.v.v self.scale
push.v self.scale
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale

:[end]