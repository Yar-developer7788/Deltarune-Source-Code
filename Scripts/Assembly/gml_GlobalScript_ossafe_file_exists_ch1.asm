.localvar 2 arguments

:[0]
b [9]

> gml_Script_ossafe_file_exists_ch1 (locals=0, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_exists(argc=1)
ret.v

:[3]
b [8]

:[4]
push.s "savedata"@11876
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v arg.argument0
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
call.i is_undefined(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
conv.b.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_ossafe_file_exists_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_exists_ch1
popz.v

:[end]