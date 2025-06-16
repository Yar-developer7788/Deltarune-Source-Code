.localvar 2 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.b.v EQ
bf [end]

:[1]
pushi.e 1316
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[2]
push.v 1316.cutsceneshow
pushi.e 1
cmp.b.v EQ
bf [end]

:[3]
pushi.e 3
conv.i.v
push.s "Cutscene command #"@29692
push.v self.current_command
call.i string(argc=1)
add.v.s
push.s " of "@29693
add.s.v
push.v self.maximum_command
call.i string(argc=1)
add.v.v
call.i gml_Script_debug_printline(argc=2)
popz.v

:[end]