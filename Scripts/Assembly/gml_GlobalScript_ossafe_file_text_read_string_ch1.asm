.localvar 2 arguments
.localvar 11884 handle 4686
.localvar 156 line 4687

:[0]
b [10]

> gml_Script_ossafe_file_text_read_string_ch1 (locals=2, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_text_read_string(argc=1)
ret.v

:[3]
b [9]

:[4]
push.v arg.argument0
pop.v.v local.handle
push.s "line_read"@165
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
conv.v.b
bf [6]

:[5]
push.s ""@157
conv.s.v
ret.v

:[6]
push.s "line"@156
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v local.line
pushloc.v local.line
push.s "num_lines"@148
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
bf [8]

:[7]
push.s ""@157
conv.s.v
ret.v

:[8]
pushi.e 1
conv.b.v
push.s "line_read"@165
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
push.s "text"@164
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v self.text
pushi.e -1
pushloc.v local.line
conv.v.i
push.v [array]self.text
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_ossafe_file_text_read_string_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_read_string_ch1
popz.v

:[end]