.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pop.v.v global.currentroom
push.s "global.currentroom : "@42003
pushbltn.v builtin.room
call.i room_get_name(argc=1)
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[end]