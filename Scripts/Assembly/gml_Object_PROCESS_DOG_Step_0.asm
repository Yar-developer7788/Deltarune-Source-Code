.localvar 2 arguments

:[0]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i game_restart(argc=0)
popz.v

:[end]