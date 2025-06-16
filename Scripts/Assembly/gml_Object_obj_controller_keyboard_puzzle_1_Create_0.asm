.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.realral
pushi.e 0
pop.v.i self.realsus
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
pushi.e 276
pushenv [6]

:[2]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [4]

:[3]
push.v self.id
pop.v.v other.realsus

:[4]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [6]

:[5]
push.v self.id
pop.v.v other.realral

:[6]
popenv [2]

:[7]
pushi.e -5
pushi.e 390
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [10]

:[8]
push.v self.realral
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
push.v self.realsus
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 0
pop.v.i self.npcral
pushi.e 0
pop.v.i self.npcsus

:[end]