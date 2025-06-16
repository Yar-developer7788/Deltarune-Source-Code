.localvar 2 arguments
.localvar 11884 handle 3531

:[0]
b [6]

> gml_Script_ossafe_file_text_eof (locals=1, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_text_eof(argc=1)
ret.v

:[3]
b [5]

:[4]
push.v arg.argument0
pop.v.v local.handle
push.s "line"@156
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
push.s "num_lines"@148
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
conv.b.v
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_ossafe_file_text_eof
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_eof
popz.v

:[end]