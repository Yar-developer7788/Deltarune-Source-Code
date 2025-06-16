.localvar 2 arguments

:[0]
push.v self.typing
conv.v.b
bf [end]

:[1]
push.v self.type_timer
push.e 1
add.i.v
pop.v.v self.type_timer
push.v self.type_timer
push.v self.type_time
cmp.v.v GTE
bf [end]

:[2]
pushi.e 0
pop.v.i self.type_timer
push.v self.l_amount
push.e 1
add.i.v
pop.v.v self.l_amount

:[end]