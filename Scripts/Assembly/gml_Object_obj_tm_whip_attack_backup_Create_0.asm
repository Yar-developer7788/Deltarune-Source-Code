.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.creator
push.d 9.426
pop.v.d self.animConst
push.v self.animConst
pushi.e 2
mul.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.truetimer
push.i 166548
setowner.e
pushi.e 1696
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sprite
pushi.e 1688
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sprite
pushi.e 1686
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.sprite
pushi.e 1701
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.sprite
pushi.e 1694
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.sprite
pushi.e 1698
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.sprite
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
push.i 170368
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sprite
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.xOffset
push.i 170369
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sprite
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.yOffset
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v 631.x
pop.v.v self.targetx
push.v 631.y
pop.v.v self.targety
pushi.e 0
pop.v.i self.rotateCracker
pushi.e 0
pop.v.i self.attackoffset
pushi.e 458
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.whipball
pushi.e 0
pop.v.b self.quizmode
pushi.e 0
pop.v.i self.init

:[end]