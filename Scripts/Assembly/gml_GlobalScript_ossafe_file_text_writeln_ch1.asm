.localvar 2 arguments
.localvar 11884 handle 4700

:[0]
b [6]

> gml_Script_ossafe_file_text_writeln_ch1 (locals=1, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_text_writeln(argc=1)
ret.v

:[3]
b [5]

:[4]
push.v arg.argument0
pop.v.v local.handle
push.s "data"@147
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.s "\r\n"@11897
add.s.v
push.s "data"@147
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_ossafe_file_text_writeln_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_writeln_ch1
popz.v

:[end]