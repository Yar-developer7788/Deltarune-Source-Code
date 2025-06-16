.localvar 2 arguments

:[0]
push.v self.hangcon
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.hangvspeed
pushi.e 1
push.v self.m
mul.v.i
sub.v.v
pop.v.v self.hangvspeed
push.v self.hangy
push.v self.hangvspeed
add.v.v
pop.v.v self.hangy
push.v self.y
push.v self.hangy
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 60
add.i.v
cmp.v.v LTE
bf [3]

:[2]
pushi.e 2
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangtimer

:[3]
push.v self.hangcon
pushi.e 2
cmp.i.v EQ
bf [8]

:[4]
push.v self.hangy
push.v self.hangvspeed
add.v.v
pop.v.v self.hangy
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.v self.hangvspeed
push.d 0.5
mul.d.v
pop.v.v self.hangvspeed

:[6]
push.v self.hangvspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.hangvspeed
pushi.e 3
pop.v.i self.hangcon

:[8]
push.v self.hangcon
pushi.e 1
cmp.i.v GTE
bf [10]

:[9]
push.v self.hangcon
pushi.e 3
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.xmovement_finished
pushi.e 0
cmp.i.v EQ
bf [15]

:[13]
push.v self.x
push.v self.x
push.v self.targetx
sub.v.v
pushi.e 6
push.v self.m
mul.v.i
div.v.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.targetx
pushi.e 2
add.i.v
cmp.v.v LTE
bf [15]

:[14]
push.v self.targetx
pop.v.v self.x
pushi.e 1
pop.v.i self.xmovement_finished

:[15]
push.v self.hangcon
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
push.v self.xmovement_finished
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 4
pop.v.i self.hangcon

:[18]
push.v self.hangcon
pushi.e 2
cmp.i.v GTE
bf [21]

:[19]
push.v self.hangcon
pushi.e 5
cmp.i.v LT
bf [21]

:[20]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GTE
b [22]

:[21]
push.e 0

:[22]
bf [25]

:[23]
push.v self.hangsparktimer
push.e 1
add.i.v
pop.v.v self.hangsparktimer
push.v self.hangsparktimer
pushi.e 6
cmp.i.v GTE
bf [25]

:[24]
pushi.e 0
pop.v.i self.hangsparktimer
pushi.e 0
pop.v.i self.shootcount
push.i 167278
setowner.e
pushi.e 534
conv.i.v
push.v self.y
push.v self.hangy
add.v.v
pushi.e 80
add.i.v
push.v self.x
push.v self.hangx
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.shootcount
conv.v.i
pop.v.v [array]self.bullet
push.i 231467
setowner.e
pushi.e 5
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.damage
push.i 236041
setowner.e
pushi.e 0
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.stretch
push.i 133655
setowner.e
push.d 0.2
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e -3
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133637
setowner.e
push.v self.depth
pushi.e 1
sub.i.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133624
setowner.e
pushi.e -9
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.i 133628
setowner.e
push.d 0.5
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.gravity

:[25]
push.v self.hangcon
pushi.e 4
cmp.i.v EQ
bf [28]

:[26]
push.v self.hangsiner
pushi.e 1
push.v self.m
mul.v.i
add.v.v
pop.v.v self.hangsiner
push.v self.x
push.v self.hangsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
pushglb.v global.turntimer
pushi.e 20
cmp.i.v LTE
bf [28]

:[27]
pushi.e 5
pop.v.i self.hangcon

:[28]
push.v self.hangcon
pushi.e 5
cmp.i.v EQ
bf [38]

:[29]
push.v self.hangy
push.v self.hangy
push.v self.init_hangy
sub.v.v
pushi.e 8
conv.i.d
push.v self.m
div.v.d
div.v.v
sub.v.v
pop.v.v self.hangy
push.v self.hangy
push.v self.init_hangy
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [31]

:[30]
push.v self.init_hangy
pop.v.v self.hangy

:[31]
push.v self.x
push.v self.x
push.v self.remx
sub.v.v
pushi.e 8
conv.i.d
push.v self.m
div.v.d
div.v.v
pushi.e 1
sub.i.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.remx
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [33]

:[32]
push.v self.remx
pop.v.v self.x

:[33]
push.v self.hangy
push.v self.init_hangy
cmp.v.v EQ
bf [35]

:[34]
push.v self.x
push.v self.remx
cmp.v.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.i self.hangcon
pushi.e 231
pop.v.i self.sprite_index

:[38]
push.v self.hangcon
pushi.e 6
cmp.i.v EQ
bf [end]

:[end]