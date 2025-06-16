.localvar 2 arguments

:[0]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.my_direction
push.s "up"@25520
cmp.s.v EQ
bf [3]

:[2]
push.v self.pos
pushi.e 1
sub.i.v
pop.v.v self.idealpos

:[3]
push.v self.my_direction
push.s "down"@25524
cmp.s.v EQ
bf [5]

:[4]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.idealpos

:[5]
push.v self.idealpos
pushi.e 2
cmp.i.v GTE
bf [7]

:[6]
pushi.e 2
pop.v.i self.idealpos

:[7]
push.v self.idealpos
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i self.idealpos

:[9]
pushi.e 1
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movetimer

:[end]