.localvar 2 arguments

:[0]
pushi.e 36
conv.i.v
push.s "Go to room"@58445
conv.s.v
call.i get_integer(argc=2)
call.i room_goto(argc=1)
popz.v

:[end]