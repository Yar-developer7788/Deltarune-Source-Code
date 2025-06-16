.localvar 2 arguments
.localvar 11968 list 3644
.localvar 107 i 3645

:[0]
b [5]

> gml_Script_scr_84_add_menu_item (locals=2, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.list
pushi.e 1
pop.v.i local.i

:[2]
pushloc.v local.i
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [4]

:[3]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushloc.v local.list
call.i ds_list_add(argc=2)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_84_add_menu_item
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_add_menu_item
popz.v

:[end]