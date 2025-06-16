.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_litemremove (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.litem
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
push.v self.i
push.i [function]gml_Script_scr_litemshift
conv.i.v
call.i script_execute(argc=3)
popz.v

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_litemremove
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemremove
popz.v

:[end]