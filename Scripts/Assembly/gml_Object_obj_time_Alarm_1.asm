.localvar 2 arguments

:[0]
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [2]

:[1]
pushi.e 0
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@12008
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "FULLSCREEN"@14621
conv.s.v
push.s "SCREEN"@14622
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 480
push.v self.window_size_multiplier
mul.v.i
pushi.e 640
push.v self.window_size_multiplier
mul.v.i
call.i window_set_size(argc=2)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
b [3]

:[2]
pushi.e 1
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@12008
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "FULLSCREEN"@14621
conv.s.v
push.s "SCREEN"@14622
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.fullscreen_toggle

:[end]