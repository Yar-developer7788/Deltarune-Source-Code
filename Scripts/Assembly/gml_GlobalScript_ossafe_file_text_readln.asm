.localvar 2 arguments
.localvar 11884 handle 3557
.localvar 156 line 3558

:[0]
b [8]

> gml_Script_ossafe_file_text_readln (locals=2, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_text_readln(argc=1)
ret.v

:[3]
b [7]

:[4]
push.v arg.argument0
pop.v.v local.handle
pushi.e 0
conv.b.v
push.s "line_read"@165
conv.s.v
pushloc.v local.handle
call.i ds_map_set(argc=3)
popz.v
push.s "line"@156
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pushi.e 1
add.i.v
push.s "line"@156
conv.s.v
pushloc.v local.handle
call.i ds_map_set_post(argc=3)
pop.v.v local.line
pushloc.v local.line
push.s "num_lines"@148
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
cmp.v.v GTE
bf [6]

:[5]
push.s ""@157
conv.s.v
ret.v

:[6]
push.s "text"@164
conv.s.v
pushloc.v local.handle
call.i ds_map_find_value(argc=2)
pop.v.v self.text
pushi.e -1
pushloc.v local.line
conv.v.i
push.v [array]self.text
push.s "\r\n"@11897
add.s.v
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_ossafe_file_text_readln
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_readln
popz.v

:[end]