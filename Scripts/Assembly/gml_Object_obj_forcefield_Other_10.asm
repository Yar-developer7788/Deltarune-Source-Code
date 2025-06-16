.localvar 2 arguments

:[0]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.canttalk
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_forcefield_slash_Other_10_gml_8_0"@21118
conv.s.v
push.s "* (It appears to be some kind of forcefield.)/%"@21119
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact

:[end]