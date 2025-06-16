.localvar 2 arguments
.localvar 3439 name 4669
.localvar 6278 file 4670
.localvar 147 data 4671
.localvar 148 num_lines 4672
.localvar 152 newline_pos 4673
.localvar 153 nextline_pos 4674
.localvar 156 line 4675
.localvar 159 lines 4676

:[0]
b [25]

> gml_Script_ossafe_file_text_open_read_ch1 (locals=8, argc=1)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[2]
push.v arg.argument0
call.i file_text_open_read(argc=1)
ret.v

:[3]
b [24]

:[4]
push.v arg.argument0
call.i string_lower(argc=1)
pop.v.v local.name
pushloc.v local.name
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file
pushloc.v local.file
call.i is_undefined(argc=1)
conv.v.b
bf [6]

:[5]
pushbltn.v builtin.undefined
ret.v

:[6]
pushloc.v local.file
pop.v.v local.data
pushi.e 0
pop.v.i local.num_lines

:[7]
pushloc.v local.data
call.i string_byte_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [23]

:[8]
pushloc.v local.data
push.s "\n"@150
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.newline_pos
pushloc.v local.newline_pos
pushi.e 0
cmp.i.v GT
bf [21]

:[9]
pushloc.v local.newline_pos
pushi.e 1
add.i.v
pop.v.v local.nextline_pos
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [11]

:[10]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushloc.v local.data
call.i string_char_at(argc=2)
push.s "\r"@154
cmp.s.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.v local.newline_pos
push.e 1
sub.i.v
pop.v.v local.newline_pos

:[14]
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [16]

:[15]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.data
call.i gml_Script_substr_ch1(argc=3)
pop.v.v local.line
b [17]

:[16]
push.s ""@157
pop.v.s local.line

:[17]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i gml_Script_strlen_ch1(argc=1)
cmp.v.v LTE
bf [19]

:[18]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i gml_Script_substr_ch1(argc=2)
pop.v.v local.data
b [20]

:[19]
push.s ""@157
pop.v.s local.data

:[20]
b [22]

:[21]
pushloc.v local.data
pop.v.v local.line
push.s ""@157
pop.v.s local.data

:[22]
push.i 66684612
setowner.e
pushloc.v local.line
pushi.e -7
push.v local.num_lines
dup.v 0
push.e 1
add.i.v
pop.v.v local.num_lines
conv.v.i
pop.v.v [array]self.lines
b [7]

:[23]
call.i ds_map_create(argc=0)
pop.v.v self.handle
pushi.e 0
conv.b.v
push.s "is_write"@162
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.lines
push.s "text"@164
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.num_lines
push.s "num_lines"@148
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "line"@156
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "line_read"@165
conv.s.v
push.v self.handle
call.i ds_map_set(argc=3)
popz.v
push.v self.handle
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_ossafe_file_text_open_read_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_file_text_open_read_ch1
popz.v

:[end]