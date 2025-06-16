.localvar 2 arguments

:[0]
push.i 231251
setowner.e
push.s "obj_city_trashbag_slash_Other_10_gml_3_0"@21282
conv.s.v
push.s "* (It's a trashbag that looks like an eggplant.)/%"@21283
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.eggplant
conv.v.b
bf [2]

:[1]
push.s "obj_city_trashbag_slash_Other_10_gml_7_0"@21284
conv.s.v
push.s "* (It's an eggplant that looks like a trashbag.)/%"@21285
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[2]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fc
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