.localvar 2 arguments
.localvar 11960 new_list 3632
.localvar 107 i 3633
.localvar 11962 list_string 3634

:[0]
b [5]

> gml_Script_scr_ds_list_write (locals=3, argc=2)
:[1]
call.i ds_list_create(argc=0)
pop.v.v local.new_list
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v arg.argument1
cmp.v.v LT
bf [4]

:[3]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument0
pushloc.v local.new_list
call.i ds_list_add(argc=2)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushloc.v local.new_list
call.i ds_list_write(argc=1)
pop.v.v local.list_string
push.s "data"@147
conv.s.v
push.v self.myfileid
call.i ds_map_find_value(argc=2)
pushloc.v local.list_string
add.v.v
push.s "data"@147
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.new_list
call.i ds_list_destroy(argc=1)
popz.v
exit.i

:[5]
push.i [function]gml_Script_scr_ds_list_write
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ds_list_write
popz.v

:[end]