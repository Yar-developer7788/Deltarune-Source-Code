.localvar 2 arguments
.localvar 126 slot_size 3590
.localvar 11922 json 3591

:[0]
b [11]

> gml_Script_ossafe_savedata_save (locals=2, argc=0)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [3]

:[2]
b [10]

:[3]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bt [6]

:[4]
pushglb.v global.savedata_async_load
conv.v.b
bt [6]

:[5]
pushglb.v global.savedata_pause
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 0
conv.i.v
ret.v

:[9]
push.i 31457280
pop.v.i local.slot_size
push.s "Deltarune"@127
conv.s.v
call.i buffer_async_group_begin(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "showdialog"@129
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "savepadindex"@131
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
push.s "DELTARUNESaveData"@11920
conv.s.v
push.s "slottitle"@133
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
push.s "DELTARUNE Save Data"@134
conv.s.v
push.s "subtitle"@135
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushloc.v local.slot_size
push.s "saveslotsize"@136
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushglb.v global.savedata
call.i json_encode(argc=1)
pop.v.v local.json
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.json
call.i string_byte_length(argc=1)
pushi.e 1
add.i.v
call.i buffer_create(argc=3)
pop.v.v global.savedata_buffer
pushloc.v local.json
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_write(argc=3)
popz.v
pushglb.v global.savedata_buffer
call.i buffer_get_size(argc=1)
pushi.e 0
conv.i.v
push.s "deltarune_ch1.sav"@139
conv.s.v
pushglb.v global.savedata_buffer
call.i buffer_save_async(argc=4)
popz.v
pushi.e 0
pop.v.b global.savedata_async_load
push.s "save in progress"@11926
pop.v.s global.savedata_debuginfo
call.i buffer_async_group_end(argc=0)
pop.v.v global.savedata_async_id

:[10]
exit.i

:[11]
push.i [function]gml_Script_ossafe_savedata_save
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_savedata_save
popz.v

:[end]