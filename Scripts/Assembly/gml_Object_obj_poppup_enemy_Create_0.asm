.localvar 2 arguments
.localvar 107 i 10424
.localvar 220 j 10425

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1644
pop.v.i self.idlesprite
pushi.e 1648
pop.v.i self.hurtsprite
pushi.e 1649
pop.v.i self.sparedsprite
pushi.e 0
pop.v.b self.becameTired
pushi.e 0
pop.v.b self.becameSpareable
pushi.e 0
pop.v.b self.cloning
pushi.e 0
pop.v.i self.cloneTimer
pushi.e 0
pop.v.b self.staticOwner
pushi.e 0
pop.v.i self.staticPoppup
push.d 0.16666666666666666
pop.v.d self.animspeed
pushi.e 210
pop.v.i self.clonedirection
pushi.e 0
pop.v.i self.blockbuffer
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [6]

:[2]
pushi.e 0
pop.v.i local.j

:[3]
pushloc.v local.j
pushi.e 6
cmp.i.v LT
bf [5]

:[4]
push.i 170237
setowner.e
pushi.e 600
conv.i.v
pushi.e 400
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.staticX
pushloc.v local.j
conv.v.i
popaf.e
push.i 170238
setowner.e
pushi.e 280
conv.i.v
pushi.e 10
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.staticY
pushloc.v local.j
conv.v.i
popaf.e
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [3]

:[5]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[6]
pushi.e 0
pop.v.b self.blockTimer
pushi.e 0
pop.v.i self.blockAds
pushi.e 0
pop.v.i self.blocked
pushi.e 0
pop.v.i self.mercytotal
pushi.e 0
pop.v.i self.popupscreated
pushi.e 0
pop.v.i self.poppupwait
pushi.e 0
pop.v.i self.allblocked
pushi.e 0
pop.v.b self.avoiding

:[end]