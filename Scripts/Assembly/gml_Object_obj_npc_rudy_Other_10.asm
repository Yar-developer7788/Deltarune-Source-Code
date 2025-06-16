.localvar 2 arguments

:[0]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fc
push.v self.coughcon
pushi.e -1
cmp.i.v EQ
bf [end]

:[1]
push.v self.talked
push.e 1
add.i.v
pop.v.v self.talked
pushi.e 1047
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
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