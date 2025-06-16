.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_healitem_all_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scr_healall_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.chartotal
cmp.v.v LT
bf [4]

:[3]
push.v self.i
call.i gml_Script_scr_charbox_x_ch1(argc=1)
pop.v.v self.healx
pushi.e 1495
conv.i.v
push.v self.yy
pushi.e 430
add.i.v
push.v self.healx
pushi.e 70
add.i.v
push.v self.xx
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.healtext
push.v arg.argument0
push.v self.healtext
pushi.e -9
pop.v.v [stacktop]self.healamt
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_healitem_all_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healitem_all_ch1
popz.v

:[end]