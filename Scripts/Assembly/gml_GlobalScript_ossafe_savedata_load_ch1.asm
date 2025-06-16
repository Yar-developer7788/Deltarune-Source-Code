.localvar 2 arguments
.localvar 126 slot_size 4723

:[0]
b [10]

> gml_Script_ossafe_savedata_load_ch1 (locals=1, argc=0)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [3]

:[2]
b [9]

:[3]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bt [5]

:[4]
pushglb.v global.savedata_async_load
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e 0
conv.i.v
ret.v

:[8]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i buffer_create(argc=3)
pop.v.v global.savedata_buffer
push.i 31457280
pop.v.i local.slot_size
push.s "Deltarune"@127
conv.s.v
call.i buffer_async_group_begin(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "savepadindex"@131
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "showdialog"@129
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
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
push.s "deltarune_ch1.sav"@139
conv.s.v
pushglb.v global.savedata_buffer
call.i buffer_load_async(argc=4)
popz.v
pushi.e 1
pop.v.b global.savedata_async_load
push.s "load in progress"@141
pop.v.s global.savedata_debuginfo
call.i buffer_async_group_end(argc=0)
pop.v.v global.savedata_async_id

:[9]
exit.i

:[10]
push.i [function]gml_Script_ossafe_savedata_load_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_savedata_load_ch1
popz.v

:[end]