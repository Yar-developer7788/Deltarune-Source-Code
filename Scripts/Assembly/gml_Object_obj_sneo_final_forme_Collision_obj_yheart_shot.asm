.localvar 2 arguments

:[0]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 638
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.hurtalpha

:[4]
popenv [3]
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[5]
push.v 638.destroyable
conv.v.b
bf [7]

:[6]
push.v 638.state
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bt [13]

:[9]
push.v 638.state
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v 638.formtimer
pushi.e 30
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
b [17]

:[16]
exit.i

:[17]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[18]
pushi.e 638
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.hurtalpha

:[20]
popenv [19]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.v self.x
pushi.e 6
add.i.v
pop.v.v self.x
push.v self.formtimer
pushi.e 4
add.i.v
pop.v.v self.formtimer
b [end]

:[23]
pushi.e 10
pop.v.i self.pushback
push.v self.formtimer
pushi.e 10
add.i.v
pop.v.v self.formtimer

:[end]