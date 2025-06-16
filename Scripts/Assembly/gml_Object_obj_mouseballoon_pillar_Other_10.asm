.localvar 2 arguments
.localvar 23135 dialogue 19802

:[0]
pushi.e 0
pop.v.i local.dialogue
pushi.e 74
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[1]
pushi.e 1
pop.v.i local.dialogue
push.v 74.miceheld
push.v self.micerequired
cmp.v.v GTE
bf [3]

:[2]
pushi.e 2
pop.v.i local.dialogue

:[3]
push.v self.completed
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
pop.v.i local.dialogue

:[5]
pushi.e 3
pop.v.i self.myinteract
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mouseballoon_pillar_slash_Other_10_gml_17_0"@38151
conv.s.v
push.s "* Looks like a hole to put mice in^1, but you don't have any mice./%"@38152
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushloc.v local.dialogue
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_mouseballoon_pillar_slash_Other_10_gml_19_0"@38153
conv.s.v
push.s "* (You don't have enough mice to fill up the hole.)/%"@38154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[7]
pushloc.v local.dialogue
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_mouseballoon_pillar_slash_Other_10_gml_22_0"@38155
conv.s.v
push.s "* (You put the mice in the hole.)/%"@38156
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.myinteract

:[9]
pushloc.v local.dialogue
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_mouseballoon_pillar_slash_Other_10_gml_26_0"@38157
conv.s.v
push.s "* (It's full of mice.)/%"@38158
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[11]
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