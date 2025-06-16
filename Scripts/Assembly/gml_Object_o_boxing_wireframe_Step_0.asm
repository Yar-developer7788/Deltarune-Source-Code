.localvar 2 arguments

:[0]
push.v self.talking
conv.v.b
bf [end]

:[1]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [3]

:[2]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 90
pop.v.i self.talktimer

:[6]
push.v self.talktimer
pushi.e 90
cmp.i.v GTE
bf [end]

:[7]
pushi.e 90
pop.v.i self.talktimer
pushi.e 64
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 0
pop.v.b self.talking
pushi.e -10
pop.v.i self.talktimer
pushi.e 0
pop.v.i 777.talking
push.v self.talktype
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v 789.phase_transition_timer
pushi.e 1
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [24]

:[13]
push.v self.hintcount
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "o_boxing_wireframe_slash_Step_0_gml_17_0"@27607
conv.s.v
push.s "Shut up!!"@27608
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.hintcount
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "o_boxing_wireframe_slash_Step_0_gml_18_0"@27609
conv.s.v
push.s "I said shut up!!"@27610
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
push.v self.hintcount
pushi.e 1
cmp.i.v GT
bf [19]

:[18]
b [24]

:[19]
push.v self.hintcount
push.e 1
add.i.v
pop.v.v self.hintcount
pushi.e 50
pop.v.i global.typer
pushi.e 10
conv.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v self.suballoon3
pushi.e 0
pop.v.i self.talktimer
pushi.e 1
pop.v.b self.talking
push.v self.suballoon3
pushi.e -9
pushenv [21]

:[20]
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.auto_length

:[21]
popenv [20]
pushi.e 64
pushenv [23]

:[22]
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 2
sub.i.v
pop.v.v self.depth

:[23]
popenv [22]
pushi.e 0
pop.v.i self.talktype

:[24]
pushi.e 0
pop.v.i self.talktype

:[end]