.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 180
pop.v.i self.timermax
pushi.e 0
pop.v.i self.playerinput
pushi.e 0
pop.v.i self.playerinputtimer
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.krisgooffscreen
pushi.e 0
pop.v.i self.susiegooffscreen
pushi.e 0
pop.v.i self.ralseigooffscreen
pushi.e 0
pop.v.i self.buttonspressed
pushi.e 0
pop.v.i self.bumpmercy
push.i 170673
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mykey
pushi.e 88
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.mykey
pushi.e 67
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.mykey
pushi.e 496
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 203
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 470
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.BerdlyCoaster
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 952.coaster_berdly
pushi.e -9
push.v [stacktop]self.x
pushi.e 16
add.i.v
pop.v.v 496.x

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [24]

:[4]
push.i 170736
setowner.e
pushi.e 495
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 149
add.i.v
pushi.e 60
push.v self.i
mul.v.i
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
push.v self.i
pushi.e 20
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.HeroCoaster
push.i 236129
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.HeroID
push.i 133643
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.image_index
push.i 133637
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.y
pushi.e -100
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 231492
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.siner
push.i 236209
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mykey
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.mykey
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pushenv [6]

:[5]
pushi.e 500
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.back
push.v self.HeroID
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.id
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.parentid

:[6]
popenv [5]
push.i 170715
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yspot
push.i 236251
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.y
push.v self.BerdlyCoaster
pushi.e -9
push.v self.i
conv.v.i
pop.v.v [array]self.yspot
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v 372.x
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v 373.x

:[8]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
pop.v.v 374.x

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.HeroID
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.i 133642
setowner.e
pushi.e 1422
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[12]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.HeroID
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1438
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
push.v [stacktop]self.HeroID
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1512
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[16]
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[17]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.i 133617
setowner.e
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.x
pushi.e 22
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133642
setowner.e
pushi.e 1419
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[19]
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.i 133617
setowner.e
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.x
pushi.e 22
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133642
setowner.e
pushi.e 1477
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[21]
push.v self.i
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.i 133617
setowner.e
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.x
pushi.e 22
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133642
setowner.e
pushi.e 1506
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.HeroCoaster
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[23]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[24]
pushi.e 90
pop.v.i self.jamatime
pushi.e 0
pop.v.i self.jamatimer
pushi.e 120
pop.v.i self.littime
pushi.e 0
pop.v.i self.littimer

:[end]