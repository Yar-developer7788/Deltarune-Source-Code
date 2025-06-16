.localvar 2 arguments

:[0]
b [8]

> gml_Script_c_saveload (locals=0, argc=1)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [7]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.s "saveload"@9886
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
push.v arg.argument0
push.s "save"@9887
cmp.s.v EQ
bf [7]

:[3]
pushi.e 898
pushenv [6]

:[4]
push.v self.loadedState
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.loadedState
call.i gml_Script_scr_cutscene_master_commands_initialize(argc=0)
popz.v

:[6]
popenv [4]

:[7]
exit.i

:[8]
push.i [function]gml_Script_c_saveload
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_saveload
popz.v

:[end]