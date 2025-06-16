.localvar 2 arguments

:[0]
push.v self.unlocked
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_mansion_keygen_lock_slash_Other_10_gml_5_0"@38087
conv.s.v
push.s "* It has a lock that seems impossible to open./%"@38088
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.myinteract

:[3]
pushi.e 12
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.b self.unlocked
pushi.e 12
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
push.s "obj_mansion_keygen_lock_slash_Other_10_gml_9_0"@38089
conv.s.v
push.s "* (Kris used the KEYGEN.)/%"@38090
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 309
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.con

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]