.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_city_cheese_slash_Step_0_gml_9_0"@18069
conv.s.v
push.s "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%"@18070
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]