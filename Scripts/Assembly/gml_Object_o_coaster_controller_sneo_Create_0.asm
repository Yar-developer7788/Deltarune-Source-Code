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
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[2]
push.i 170736
setowner.e
pushi.e 694
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
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
pushenv [4]

:[3]
pushi.e 696
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.back
push.v self.id
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.parentid
push.v self.depth
pushi.e 2
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.depth

:[4]
popenv [3]
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
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]