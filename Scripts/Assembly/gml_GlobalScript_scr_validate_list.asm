.localvar 2 arguments
.localvar 12310 loaded_list 3986
.localvar 173 is_valid 3987

:[0]
b [8]

> gml_Script_scr_validate_list (locals=2, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script_scr_ds_list_read(argc=1)
pop.v.v local.loaded_list
pushi.e 1
pop.v.b local.is_valid
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushloc.v local.loaded_list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [6]

:[3]
push.v self.i
pushloc.v local.loaded_list
call.i ds_list_find_value(argc=2)
pushi.e -15
push.v self.i
conv.v.i
push.v [array]self.argument1
cmp.v.v NEQ
bf [5]

:[4]
pushi.e 0
pop.v.b local.is_valid
b [6]

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushloc.v local.loaded_list
call.i ds_list_destroy(argc=1)
popz.v
pushloc.v local.is_valid
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_validate_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_validate_list
popz.v

:[end]