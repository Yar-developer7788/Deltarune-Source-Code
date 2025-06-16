.localvar 2 arguments
.localvar 23135 dialogue 19823

:[0]
push.v self.fakeballoony
call.i abs(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i local.dialogue
pushi.e 1
pop.v.i self.krismade
push.v self.myballoon
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1
pop.v.i local.dialogue

:[3]
push.v 74.miceheld
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 1
pop.v.i local.dialogue

:[5]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.dialogue
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_mouseballoon_pillar_release_slash_Other_10_gml_15_0"@38166
conv.s.v
push.s "* (Suddenly a maus came out of the hole!)/%"@38167
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ballooncon

:[7]
pushloc.v local.dialogue
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_mouseballoon_pillar_release_slash_Other_10_gml_19_0"@38168
conv.s.v
push.s "* (The hole is silent.)/%"@38169
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[9]
pushloc.v local.dialogue
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
pushi.e 3
pop.v.i self.myinteract
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