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
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[3]
push.v 638.destroyable
conv.v.b
bf [5]

:[4]
push.v 638.state
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bt [11]

:[7]
push.v 638.state
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v 638.formtimer
pushi.e 30
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
b [15]

:[14]
exit.i

:[15]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 638
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[16]
pushi.e 638
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.hurtalpha

:[18]
popenv [17]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.parent
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 7
add.i.v
pop.i.v [stacktop]self.x
push.v self.parent
pushi.e -9
dup.i 4
push.v [stacktop]self.formtimer
pushi.e 5
add.i.v
pop.i.v [stacktop]self.formtimer
b [end]

:[21]
pushi.e 13
push.v self.parent
pushi.e -9
pop.v.i [stacktop]self.pushback
push.v self.parent
pushi.e -9
dup.i 4
push.v [stacktop]self.formtimer
pushi.e 13
add.i.v
pop.i.v [stacktop]self.formtimer

:[end]