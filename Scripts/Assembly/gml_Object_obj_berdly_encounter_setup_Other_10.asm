.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.fightcon
pushi.e 1
cmp.i.v EQ
bf [14]

:[3]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v

:[5]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 10
cmp.i.v LT
bf [9]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [9]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
push.v self.counttimer
pushi.e 10
cmp.i.v GTE
bf [14]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [13]

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
pushi.e 2
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.counttimer

:[14]
push.v self.fightcon
pushi.e 2
cmp.i.v EQ
bf [end]

:[15]
push.v self.counttimer
pushi.e 1
add.i.v
pop.v.v self.counttimer
push.v self.counttimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[16]
pushi.e 0
pop.v.i self.counttimer
pushi.e 3
pop.v.i self.fightcon
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
push.v self.count
pushi.e 1
add.i.v
cmp.v.v LT
bf [19]

:[18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[19]
pushi.e 357
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]