.localvar 2 arguments

:[0]
pushi.e 3
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
push.v self.dojo
conv.v.b
bf [8]

:[1]
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.b [stacktop]self.quizloop
pushi.e 1
pop.v.b self.restart
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.timer
push.v self.difficulty
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i self.state
pushi.e 10
pop.v.i self.timer

:[3]
pushi.e 0
pop.v.i self.currentturn
push.v self.difficulty
pushi.e 7
cmp.i.v LT
bf [5]

:[4]
push.v self.rounds
push.e 1
add.i.v
pop.v.v self.rounds

:[5]
push.v self.rounds
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.rounds
push.v self.difficulty
push.e 1
add.i.v
pop.v.v self.difficulty

:[7]
b [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]