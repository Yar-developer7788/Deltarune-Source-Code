.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1700
pop.v.i self.hurtsprite
pushi.e 0
pop.v.i self.timer
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
pushi.e 1690
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
push.i 170367
setowner.e
pushi.e 1697
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sparesprite
pushi.e 1689
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sparesprite
pushi.e 1687
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.sparesprite
pushi.e 1693
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.sparesprite
pushi.e 1695
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.sparesprite
pushi.e 1699
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.sparesprite
pushi.e 1271
pop.v.i self.sparedsprite
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
pushi.e 22
sub.i.v
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
pushi.e 6
sub.i.v
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
pushi.e 0
pop.v.i self.timesOrdered
pushi.e 0
pop.v.i self.timesCharged
pushi.e -4
pop.v.i self.balloon
pushi.e 0
pop.v.i self.timesTrained
pushi.e 0
pop.v.b self.treatText
pushi.e 0
pop.v.b self.badgeText
pushi.e 0
pop.v.i self.quizDifficulty
pushi.e 0
pop.v.i self.overrideAttack
pushi.e 0
pop.v.b self.tailcheck
pushi.e 0
pop.v.b self.knifecheck
pushi.e 0
pop.v.i self.lastQuizLetter
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.violenceused
pushi.e 0
pop.v.i self.violenceusedcon
pushi.e 0
pop.v.i self.hitbysimonsaysattackcount
pushi.e 0
pop.v.i self.simonsayscon

:[end]