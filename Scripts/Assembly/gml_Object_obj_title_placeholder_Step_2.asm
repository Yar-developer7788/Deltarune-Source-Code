.localvar 2 arguments

:[0]
push.v self.specialmode
conv.v.b
bf [end]

:[1]
pushi.e 84
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.s "sprite_remove_"@21230
push.v self.n
call.i string(argc=1)
add.v.s
push.s ".PNG"@21231
add.s.v
call.i screen_save(argc=1)
popz.v

:[3]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[4]
push.s "sprite_translate_"@21232
push.v self.n
call.i string(argc=1)
add.v.s
push.s ".PNG"@21231
add.s.v
call.i screen_save(argc=1)
popz.v

:[end]