.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.max_suit
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.max_suit
cmp.v.v LT
bf [3]

:[2]
push.i 175235
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.suit
push.i 175231
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sol
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.swap
pushi.e 0
pop.v.i self.spade
pushi.e 0
pop.v.i self.diamond
pushi.e 0
pop.v.i self.cur_s
pushi.e 0
pop.v.i self.reset
pushi.e 0
pop.v.i self.won
pushi.e 1
pop.v.i self.drawclue

:[end]