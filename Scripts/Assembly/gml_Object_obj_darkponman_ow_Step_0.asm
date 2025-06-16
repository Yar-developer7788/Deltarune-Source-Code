.localvar 2 arguments

:[0]
push.v self.rot
push.v self.rotspeed
add.v.v
pop.v.v self.rot
push.v self.rot
push.v self.eyer
call.i lengthdir_x(argc=2)
push.v self.offx
add.v.v
pop.v.v self.xx
push.v self.rot
push.v self.eyer
call.i lengthdir_y(argc=2)
push.v self.offy
add.v.v
pop.v.v self.yy
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[2]
pushi.e 0
pop.v.i 82.battlemode
pushi.e 253
pushenv [10]

:[3]
push.v 82.x
push.v self.x
push.v self.xrange
sub.v.v
cmp.v.v GT
bf [7]

:[4]
push.v 82.x
push.v self.x
push.v self.xrange
add.v.v
cmp.v.v LT
bf [7]

:[5]
push.v 82.y
push.v self.y
push.v self.yrange
sub.v.v
cmp.v.v GT
bf [7]

:[6]
push.v 82.y
push.v self.y
push.v self.yrange
add.v.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i 82.battlemode

:[10]
popenv [3]

:[11]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [20]

:[12]
push.v self.made
pushi.e 0
cmp.i.v EQ
bf [17]

:[13]
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
push.v self.bmax
cmp.v.v LT
bf [16]

:[15]
push.v self.rot
push.v self.i
pushi.e 2
mul.i.v
sub.v.v
push.v self.eyer
pushi.e 2
push.v self.i
pushi.e 2
mul.i.v
add.v.i
mul.v.v
call.i lengthdir_x(argc=2)
push.v self.offx
add.v.v
pop.v.v self.xa
push.v self.rot
push.v self.i
pushi.e 2
mul.i.v
sub.v.v
push.v self.eyer
pushi.e 2
push.v self.i
pushi.e 2
mul.i.v
add.v.i
mul.v.v
call.i lengthdir_y(argc=2)
push.v self.offy
add.v.v
pop.v.v self.ya
push.i 168933
setowner.e
pushi.e 255
conv.i.v
push.v self.y
push.v self.ya
add.v.v
push.v self.x
push.v self.xa
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.fb
push.i 133642
setowner.e
pushi.e 1377
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.active
push.i 231464
setowner.e
pushi.e 3
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.target
push.i 231467
setowner.e
pushi.e 16
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.damage
push.i 133652
setowner.e
push.v self.rot
push.v self.i
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133637
setowner.e
pushi.e 200
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 133633
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 133650
setowner.e
push.d 0.7
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[16]
pushi.e 1
pop.v.i self.made

:[17]
push.v self.eyer
pushi.e 10
cmp.i.v LTE
bf [19]

:[18]
push.v self.eyer
pushi.e 1
add.i.v
pop.v.v self.eyer
b [20]

:[19]
pushi.e 1
pop.v.i self.con
push.d 0.1
pop.v.d self.image_speed

:[20]
push.v self.made
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v self.rotspeed
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[23]
push.v self.rotspeed
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.siner
pushi.e 1
sub.i.v
pop.v.v self.siner

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
push.v self.bmax
cmp.v.v LT
bf [end]

:[27]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [31]

:[28]
push.v self.rot
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.i
pushi.e 2
mul.i.v
mul.v.v
sub.v.v
push.v self.eyer
pushi.e 2
push.v self.i
pushi.e 2
mul.i.v
add.v.i
mul.v.v
call.i lengthdir_x(argc=2)
push.v self.offx
add.v.v
pop.v.v self.xa
push.v self.rot
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.i
pushi.e 2
mul.i.v
mul.v.v
sub.v.v
push.v self.eyer
pushi.e 2
push.v self.i
pushi.e 2
mul.i.v
add.v.i
mul.v.v
call.i lengthdir_y(argc=2)
push.v self.offy
add.v.v
pop.v.v self.ya
push.i 133617
setowner.e
push.v self.x
push.v self.xa
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.y
push.v self.ya
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133653
setowner.e
push.d 0.8
push.v self.i
pushi.e 4
mul.i.v
push.v self.siner
add.v.v
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.con
pushi.e 1
cmp.i.v LT
bf [30]

:[29]
pushi.e 0
push.v self.eyer
pushi.e 10
conv.i.d
div.d.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[30]
push.i 133652
setowner.e
push.v self.rot
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.i
pushi.e 4
mul.i.v
mul.v.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.fb
pushi.e -9
pop.v.v [stacktop]self.image_angle

:[31]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[end]