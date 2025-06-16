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
push.v 643.endattack
pushi.e 2
cmp.i.v NEQ
bf [end]

:[3]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 643
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e 643
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.hurtalpha

:[6]
popenv [5]

:[7]
push.v 643.endattack
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v 643.skip_1st_part_hp
push.v other.damage
sub.v.v
pop.v.v 643.skip_1st_part_hp

:[9]
push.v 643.skip_1st_part_hp
pushi.e 1
cmp.i.v LT
bf [11]

:[10]
push.v 643.endattack
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i 643.endattack

:[14]
push.v 643.skip_2nd_part_hp
pushi.e 1
cmp.i.v LT
bf [16]

:[15]
push.v 643.endattack
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 633
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.playerhit
pushi.e 0
pop.v.i self.damage
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
popenv [19]
pushi.e 2
pop.v.i 643.endattack

:[end]