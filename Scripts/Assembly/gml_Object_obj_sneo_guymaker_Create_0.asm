.localvar 2 arguments

:[0]
pushi.e 4
pop.v.i self.type
push.v 697.difficulty
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.type

:[2]
push.v 697.difficulty
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.type

:[4]
push.v 697.difficulty
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
pop.v.i self.type

:[6]
push.v 697.difficulty
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.type

:[8]
pushi.e 609
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 5
pop.v.i self.type

:[10]
push.v 697.difficulty
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
pushi.e 6
pop.v.i self.type

:[12]
push.v 697.difficulty
pushi.e 7
cmp.i.v EQ
bf [14]

:[13]
pushi.e 7
pop.v.i self.type

:[14]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.prevrow
pushi.e 0
pop.v.i self.row
pushi.e 0
pop.v.i self.prevrowy
pushi.e 0
pop.v.i self.spawncount
pushi.e 0
pop.v.i self.firstspawn

:[end]