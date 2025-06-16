.localvar 2 arguments
.localvar 11960 new_list 4775
.localvar 11962 list_string 4776

:[0]
b [5]

> gml_Script_scr_ds_list_read_ch1 (locals=2, argc=1)
:[1]
call.i ds_list_create(argc=0)
pop.v.v local.new_list
push.v arg.argument0
call.i gml_Script_ossafe_file_text_read_string_ch1(argc=1)
pop.v.v local.list_string
pushloc.v local.list_string
push.s ""@157
cmp.s.v NEQ
bf [3]

:[2]
pushloc.v local.list_string
pushloc.v local.new_list
call.i ds_list_read(argc=2)
popz.v

:[3]
pushloc.v local.new_list
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_ds_list_read_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_ds_list_read_ch1
popz.v

:[end]