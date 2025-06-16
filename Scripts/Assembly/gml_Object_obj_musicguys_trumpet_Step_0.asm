.localvar 2 arguments

:[0]
push.v self.siner
push.v self.image_xscale
add.v.v
pop.v.v self.siner
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
pop.v.v self.y

:[2]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.y

:[4]
pushi.e 0
pop.v.i self.amp
pushi.e 18
pop.v.i self.threshold
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 22
pop.v.i self.threshold

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.threshold
cmp.v.v GTE
bf [8]

:[7]
push.i 168880
setowner.e
pushi.e 361
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.shotcount
conv.v.i
pop.v.v [array]self.shot
push.i 133642
setowner.e
pushi.e 2257
pushi.e -1
push.v self.shotcount
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133651
setowner.e
push.d 0.5
pushi.e -1
push.v self.shotcount
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133650
setowner.e
push.d 0.5
push.v self.image_xscale
mul.v.d
pushi.e -1
push.v self.shotcount
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.i 232295
setowner.e
pushi.e 1
pushi.e -1
push.v self.shotcount
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.i [stacktop]self.active
push.i 171782
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.shotcount
conv.v.i
pop.v.v [array]self.singletimer
push.v self.shotcount
push.e 1
add.i.v
pop.v.v self.shotcount
pushi.e 0
pop.v.i self.timer

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
push.v self.shotcount
cmp.v.v LT
bf [end]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[11]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.i 133617
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.singletimer
pushi.e 3
mul.i.v
push.v self.image_xscale
neg.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.x

:[13]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.i 133618
setowner.e
push.v self.y
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i abs(argc=1)
call.i sin(argc=1)
pushi.e 30
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.y

:[15]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.i 133617
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.singletimer
pushi.e 3
mul.i.v
push.v self.amp
pushi.e 60
conv.i.d
div.d.v
pushi.e 1
add.i.v
mul.v.v
push.v self.image_xscale
neg.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.siner
pushi.e 18
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 30
mul.i.v
call.i abs(argc=1)
pop.v.v self.amp
push.i 133618
setowner.e
push.v self.y
push.v self.siner
pushi.e 14
conv.i.d
div.d.v
call.i abs(argc=1)
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.singletimer
pushi.e 14
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
push.v self.amp
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shot
pushi.e -9
pop.v.v [stacktop]self.y

:[17]
push.i 171782
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.singletimer
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.singletimer
popz.v

:[18]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[end]