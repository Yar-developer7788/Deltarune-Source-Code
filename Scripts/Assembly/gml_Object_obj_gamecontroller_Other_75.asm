.localvar 2 arguments
.localvar 36572 pad 18150

:[0]
push.s "event_type"@11516
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
dup.v 0
push.s "gamepad discovered"@36569
cmp.s.v EQ
bt [3]

:[1]
dup.v 0
push.s "gamepad lost"@36570
cmp.s.v EQ
bt [9]

:[2]
b [13]

:[3]
push.s "pad_index"@36571
conv.s.v
pushbltn.v builtin.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local.pad
pushloc.v local.pad
call.i gamepad_is_connected(argc=1)
conv.v.b
bf [8]

:[4]
pushi.e 1
pop.v.i self.gamepad_active
pushloc.v local.pad
pop.v.v self.gamepad_id
push.v self.gamepad_id
call.i gamepad_get_description(argc=1)
push.s "Sony DualShock 4"@20499
cmp.s.v EQ
bf [6]

:[5]
pushi.e 1
conv.i.v
b [7]

:[6]
pushi.e 0
conv.i.v

:[7]
pop.v.v self.gamepad_type

:[8]
b [13]

:[9]
pushi.e 0
pop.v.i self.gamepad_active
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [12]

:[10]
call.i switch_controller_support_show(argc=0)
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.gamepad_active
call.i switch_controller_support_get_selected_id(argc=0)
pop.v.v self.gamepad_id

:[12]
b [13]

:[13]
popz.v

:[end]