.localvar 2 arguments

:[0]
pushi.e 64
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 50
pop.v.i global.typer
push.v 710.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 710
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.hurtstate2
push.s "obj_musical_controller_slash_Alarm_1_gml_12_0"@26592
conv.s.v
push.s "W-wait, I can't dance&with bad guys!!"@26593
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[5]
popenv [4]

:[6]
push.v 714.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 714
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.hurtstate2
push.s "obj_musical_controller_slash_Alarm_1_gml_21_0"@26594
conv.s.v
push.s "I forgot my next&dance move!"@26595
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[9]
popenv [8]

:[10]
push.v 712.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 712
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.hurtstate2
push.s "obj_musical_controller_slash_Alarm_1_gml_30_0"@26596
conv.s.v
push.s "H-hey, I'm not gonna&dance with you!"@26597
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v

:[13]
popenv [12]

:[end]