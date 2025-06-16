.localvar 2 arguments
.localvar 23135 dialogue 19812

:[0]
pushi.e 0
pop.v.i local.dialogue
pushi.e 74
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i local.dialogue

:[2]
push.v self.completed
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i local.dialogue

:[4]
pushi.e 3
pop.v.i self.myinteract
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.dialogue
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_15_0"@38159
conv.s.v
push.s "* (You put the bucket in the hole.)/%"@38160
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.myinteract

:[6]
pushloc.v local.dialogue
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_19_0"@38161
conv.s.v
push.s "* (It's full of bucket.)/%"@38162
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[8]
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