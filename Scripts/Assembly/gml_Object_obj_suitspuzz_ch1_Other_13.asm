.localvar 2 arguments

:[0]
push.v self.cur_s
push.v self.max_suit
cmp.v.v LT
bf [2]

:[1]
push.i 175235
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.cur_s
conv.v.i
pop.v.v [array]self.suit
push.v self.cur_s
pushi.e 1
add.i.v
pop.v.v self.cur_s
b [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
push.v self.diamond
pushi.e 1
add.i.v
pop.v.v self.diamond

:[end]