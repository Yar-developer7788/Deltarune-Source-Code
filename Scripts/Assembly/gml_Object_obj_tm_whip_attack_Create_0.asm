.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.creator
push.d 9.42477796076938
pop.v.d self.animConst
push.v self.animConst
pushi.e 2
mul.i.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.truetimer
pushi.e 0
pop.v.i self.damage
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.animSpeed
pushi.e 0
pop.v.i self.difficulty
pushi.e 10
pop.v.i self.zaptime
pushi.e 456
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.animator
pushi.e 0
pop.v.b self.quizmode
pushi.e 0
pop.v.i self.init

:[end]