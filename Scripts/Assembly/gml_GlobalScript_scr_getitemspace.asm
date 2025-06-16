.localvar 2 arguments
.localvar 12314 invroom 3992
.localvar 107 i 3993

:[0]
b [9]

> gml_Script_scr_getitemspace (locals=2, argc=1)
:[1]
push.v arg.argument0
push.s "pocket"@9747
cmp.s.v EQ
bf [8]

:[2]
pushi.e 0
pop.v.i local.invroom
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushi.e 12
cmp.i.v LT
bf [7]

:[4]
push.s "global.item["@12315
pushloc.v local.i
call.i string(argc=1)
add.v.s
push.s "] ="@12316
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.item
call.i string(argc=1)
add.v.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v local.invroom
push.e 1
add.i.v
pop.v.v local.invroom

:[6]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[7]
push.s "Room available in pocket: "@12317
pushloc.v local.invroom
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushloc.v local.invroom
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_getitemspace
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getitemspace
popz.v

:[end]