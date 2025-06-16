.localvar 2 arguments

:[0]
push.v self.baseball_hitbox
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bt [2]

:[1]
push.v self.wheel_hitbox_graze
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
push.v self.baseball_combo_timer
push.e 1
sub.i.v
pop.v.v self.baseball_combo_timer
push.v self.hit
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle

:[7]
push.v self.hit
pushi.e 1
cmp.i.v EQ
bf [36]

:[8]
push.v self.hit_timer
pushi.e 1
add.i.v
pop.v.v self.hit_timer
push.v self.hit_timer
pushi.e 1
cmp.i.v EQ
bf [16]

:[9]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [15]

:[10]
pushi.e 818
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakesplash
push.d -0.5
push.v self.fakesplash
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2171
push.v self.fakesplash
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.hit_direction
pushi.e -1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[12]
push.v self.hit_direction
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[14]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fakesplash
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [10]

:[15]
popz.i
push.v self.x
pop.v.v self.xbase
push.v self.y
pop.v.v self.ybase

:[16]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.hit_timer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.xbase
pushi.e 15
conv.i.d
push.v self.hit_timer
div.v.d
add.v.v
pushi.e 30
conv.i.d
push.v self.hit_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ybase
pushi.e 15
conv.i.d
push.v self.hit_timer
div.v.d
add.v.v
pushi.e 30
conv.i.d
push.v self.hit_timer
div.v.d
call.i irandom(argc=1)
sub.v.v
pop.v.v self.y

:[21]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.hit_timer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v LT
b [24]

:[23]
push.e 0

:[24]
bf [29]

:[25]
pushi.e 788
pushenv [28]

:[26]
push.v self.hit
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y

:[28]
popenv [26]

:[29]
push.v self.hit_timer
pushi.e 10
conv.i.d
push.v self.f
div.v.d
cmp.v.v GT
bf [31]

:[30]
pushi.e -32
conv.i.d
push.v self.f
div.v.d
pop.v.v self.vspeed

:[31]
push.v self.y
pushi.e -4
cmp.i.v LT
bf [33]

:[32]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
push.v self.y
pushi.e 490
cmp.i.v GT
bf [end]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[end]