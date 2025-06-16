.localvar 2 arguments

:[0]
push.v self.noellegame
conv.v.b
bf [end]

:[1]
push.v self.gamecon
push.e 1
add.i.v
pop.v.v self.gamecon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]