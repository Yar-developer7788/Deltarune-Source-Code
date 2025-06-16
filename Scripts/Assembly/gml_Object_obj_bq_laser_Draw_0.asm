.localvar 2 arguments
.localvar 24528 xx1 14342
.localvar 24529 yy1 14343
.localvar 21634 xx2 14344
.localvar 24493 yy2 14345

:[0]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 789.x
pushi.e 13
add.i.v
pop.v.v self.x
push.v 789.y
pushi.e 80
sub.i.v
pop.v.v self.y
b [3]

:[2]
push.v 789.x
pushi.e 13
sub.i.v
pop.v.v self.x
push.v 789.y
pushi.e 80
sub.i.v
pop.v.v self.y

:[3]
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v 789.x
pushi.e 70
add.i.v
pop.v.v self.x
push.v 789.y
pushi.e 170
sub.i.v
pop.v.v self.y
b [7]

:[6]
push.v 789.x
pushi.e 70
sub.i.v
pop.v.v self.x
push.v 789.y
pushi.e 170
sub.i.v
pop.v.v self.y

:[7]
push.v self.x
pop.v.v local.xx1
pushi.e 640
pop.v.i local.yy1
push.v self.x
pop.v.v local.xx2
pushi.e 640
pop.v.i local.yy2
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
pushi.e 240
pop.v.i local.yy1
pushi.e 240
pop.v.i local.yy2
push.v 789.x
pushi.e 320
cmp.i.v LT
bf [10]

:[9]
pushi.e 640
pop.v.i local.xx1
pushi.e 640
pop.v.i local.xx2
b [11]

:[10]
pushi.e 0
pop.v.i local.xx1
pushi.e 0
pop.v.i local.xx2

:[11]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [24]

:[12]
push.v self.timer
pushi.e 40
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 100
cmp.i.v GT
bf [14]

:[13]
pushi.e 100
pop.v.i self.timer

:[14]
push.v self.timer
pushi.e 35
cmp.i.v GT
bf [22]

:[15]
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
pushi.e 776
conv.i.v
push.v self.y
pushi.e 320
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser_hitbox
push.v self.laser_hitbox
pushi.e -9
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.hit_dodging
pushi.e 50
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 40
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_invincibility
pushi.e 3
pop.v.i self.timer
pushi.e 20
pop.v.i self.damage
pushi.e 10
pop.v.i self.image_yscale
pushi.e 30
pop.v.i self.image_xscale

:[18]
popenv [17]
b [22]

:[19]
pushi.e 776
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser_hitbox
push.v self.laser_hitbox
pushi.e -9
pushenv [21]

:[20]
pushi.e 1
pop.v.i self.hit_ducking
pushi.e 30
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_hurt
pushi.e 40
conv.i.d
push.v self.f
div.v.d
pop.v.v self.give_invincibility
pushi.e 3
pop.v.i self.timer
pushi.e 20
pop.v.i self.damage
pushi.e 20
pop.v.i self.image_yscale
pushi.e 3
pop.v.i self.image_xscale

:[21]
popenv [20]

:[22]
push.v self.timer
pushi.e 99
cmp.i.v GT
bf [24]

:[23]
pushi.e 1
pop.v.i self.state

:[24]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [35]

:[25]
push.v self.shake_timer
pushi.e 8
cmp.i.v LT
bf [30]

:[26]
push.v self.shake_timer
push.e 1
add.i.v
pop.v.v self.shake_timer
push.v self.horizontal
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.xstart
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.y
pushi.e 637
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.yy1
pushi.e 637
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.yy2
b [29]

:[28]
push.v self.xstart
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 3
sub.i.v
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.v
pop.v.v self.y
pushi.e 237
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.yy1
pushi.e 237
pushi.e 6
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v local.yy2

:[29]
b [35]

:[30]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
push.v self.timer
pushi.e 60
sub.i.v
pop.v.v self.timer
b [35]

:[32]
call.i instance_destroy(argc=0)
popz.v
pushi.e 782
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]

:[35]
push.v self.horizontal
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.timer
pushi.e 100
conv.i.d
div.d.v
push.v self.x
pushi.e 140
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i lerp(argc=3)
pop.v.v local.xx1
push.v self.timer
pushi.e 100
conv.i.d
div.d.v
push.v self.x
pushi.e 140
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i lerp(argc=3)
pop.v.v local.xx2
b [38]

:[37]
push.v self.timer
pushi.e 100
conv.i.d
div.d.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.y
pushi.e 10
sub.i.v
call.i lerp(argc=3)
pop.v.v local.yy1
push.v self.timer
pushi.e 100
conv.i.d
div.d.v
push.v self.y
pushi.e 120
add.i.v
push.v self.y
pushi.e 10
add.i.v
call.i lerp(argc=3)
pop.v.v local.yy2

:[38]
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
push.v self.y
push.v self.x
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy1
pushloc.v local.xx1
call.i draw_vertex(argc=2)
popz.v
pushloc.v local.yy2
pushloc.v local.xx2
call.i draw_vertex(argc=2)
popz.v
call.i draw_primitive_end(argc=0)
popz.v

:[end]