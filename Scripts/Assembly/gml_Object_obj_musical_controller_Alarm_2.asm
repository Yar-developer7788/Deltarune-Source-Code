.localvar 2 arguments

:[0]
pushi.e 64
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v 710.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [10]

:[3]
push.v 714.hurtstate2
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
push.v 712.hurtstate2
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.s "obj_musical_controller_slash_Alarm_2_gml_8_0"@26598
conv.s.v
push.s "* (Sweet snapped out of the dance!)/"@26599
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [9]

:[8]
push.s "obj_musical_controller_slash_Alarm_2_gml_12_0"@26600
conv.s.v
push.s "* (Sweet snapped out of the dance!)/%"@26601
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[9]
push.v 710.stoppeddancingcounter
push.e 1
add.i.v
pop.v.v 710.stoppeddancingcounter

:[10]
push.v 714.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [15]

:[11]
push.v 712.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_musical_controller_slash_Alarm_2_gml_20_0"@26602
conv.s.v
push.s "* (K_K snapped out of the dance!)/"@26603
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [14]

:[13]
push.s "obj_musical_controller_slash_Alarm_2_gml_24_0"@26604
conv.s.v
push.s "* (K_K snapped out of the dance!)/%"@26605
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[14]
push.v 710.stoppeddancingcounter
push.e 1
add.i.v
pop.v.v 710.stoppeddancingcounter

:[15]
push.v 712.hurtstate2
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_musical_controller_slash_Alarm_2_gml_30_0"@26606
conv.s.v
push.s "* (Cap'n snapped out of the dance!)/%"@26607
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v 710.stoppeddancingcounter
push.e 1
add.i.v
pop.v.v 710.stoppeddancingcounter

:[17]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.d

:[end]