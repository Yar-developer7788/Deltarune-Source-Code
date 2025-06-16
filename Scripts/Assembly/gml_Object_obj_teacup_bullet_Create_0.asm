.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.spin
pushi.e 0
pop.v.i self.offsetAngle
pushi.e 0
pop.v.i self.growsine
push.d 0.05
pop.v.d self.image_xscale
push.d 0.05
pop.v.d self.image_yscale
pushi.e -400
pop.v.i self.myy
pushi.e 6
pop.v.i self.spinrate
pushi.e 0
pop.v.i self.closeness
pushi.e 0
pop.v.i self.cutOff
pushi.e 0
pop.v.i self.cupDistanceFromCenter
push.v self.spin
push.v self.cupDistanceFromCenter
push.d 0.5
mul.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.circleY
pushi.e 0
pop.v.i self.forceY
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.spriteWidthRoot
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.spriteHeightRoot
pushi.e 0
pop.v.b self.bouncing
pushi.e 16
pop.v.i self.bounceHeight
pushi.e 0
pop.v.i self.bounceCurrent
pushi.e 8
pop.v.i self.boostAmount
pushi.e 1
pop.v.i self.bounceTime
pushi.e 3
pop.v.i self.bouncesLeft
pushi.e 0
pop.v.b self.eatMe
push.i 16777215
pop.v.i self.colClose
push.i 8421504
pop.v.i self.colFar
pushi.e 18
pop.v.i self.bulletCollisionAngle
pushi.e 76
pop.v.i self.bulletHitHeight
push.d 0.2
pop.v.d self.groundForgiveness
pushi.e 1
pop.v.b self.lineToCenter
pushi.e 0
pop.v.i self.hitType
pushi.e 6
pop.v.i self.damage
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i self.damage

:[2]
push.v self.master
pushi.e -1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1091
pop.v.i self.master

:[end]