.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_litemshift_ch1 (locals=0, argc=2)
:[1]
push.i 102860578
setowner.e
push.v arg.argument1
pushi.e -5
pushi.e 8
pop.v.v [array]self.litem
push.v arg.argument0
pop.v.v self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.litem
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.litem
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.i [function]gml_Script_scr_litemname_ch1
conv.i.v
call.i script_execute(argc=1)
popz.v
exit.i

:[5]
push.i [function]gml_Script_scr_litemshift_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemshift_ch1
popz.v

:[end]