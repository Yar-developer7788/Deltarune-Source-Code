.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 460
pop.v.i global.msc
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1200
pop.v.i global.msc

:[2]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 231251
setowner.e
push.s "obj_shortcut_door_slash_Other_10_gml_13_0"@15498
conv.s.v
push.s "* (It's a lone doorframe.^1)&* (But for some reason^1, you can't see through it...)/%"@15499
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[4]
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]