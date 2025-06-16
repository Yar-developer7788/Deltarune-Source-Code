.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.maker
pushi.e -10
pop.v.i self.depth
pushi.e 1
pop.v.i self.biggestwidth
pushi.e 1
pop.v.i self.biggestheight
pushi.e 0
pop.v.b self.trappingX
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.i 170461
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cancatch
push.i 170469
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ismaus
push.i 170462
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.caught
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.visible
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
pushi.e 771
conv.i.v
push.v 761.y
push.v 761.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1746
pop.v.i 761.idlesprite
push.v 761.x
pushi.e 60
add.i.v
pop.v.v 761.x
push.v 761.y
pushi.e 66
add.i.v
pop.v.v 761.y

:[end]