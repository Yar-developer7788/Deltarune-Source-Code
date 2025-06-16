.localvar 2 arguments

:[0]
pushi.e 3229
pop.v.i self.lastSprite
pushi.e 3229
pop.v.i self.myLastSprite
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.lastSprite
cmp.v.v LT
bf [3]

:[2]
push.i 167774
setowner.e
push.v self.i
call.i sprite_get_name(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spriteName
push.i 172984
setowner.e
push.v self.i
call.i sprite_get_height(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spriteHeight
push.i 168689
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mySprite
push.i 172985
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spriteName
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mySpriteName
push.i 172986
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spriteHeight
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.mySpriteHeight
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.sy
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.oldway
pushi.e 0
pop.v.i self.displaymode

:[end]