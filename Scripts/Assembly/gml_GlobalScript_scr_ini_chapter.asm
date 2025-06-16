.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_ini_chapter (locals=0, argc=2)
:[1]
push.v arg.argument0
pushi.e 2
cmp.i.v GTE
bf [4]

:[2]
push.s "G_"@10853
push.v arg.argument0
call.i string(argc=1)
add.v.s
push.s "_"@9692
add.s.v
push.v arg.argument1
call.i string(argc=1)
add.v.v
ret.v

:[3]
b [5]

:[4]
push.s "G"@9482
push.v arg.argument1
call.i string(argc=1)
add.v.s
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_ini_chapter
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ini_chapter
popz.v

:[end]