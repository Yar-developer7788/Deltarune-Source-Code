.localvar 2 arguments
.localvar 29909 fnt 15724
.localvar 10811 col 15725

:[0]
call.i draw_get_font(argc=0)
pop.v.v local.fnt
pushi.e 4
conv.i.v
call.i draw_set_font(argc=1)
popz.v
call.i draw_get_color(argc=0)
pop.v.v local.col
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.debugmessage
call.i string_hash_to_newline(argc=1)
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.debugmessage
call.i string_hash_to_newline(argc=1)
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.debugmessage
call.i string_hash_to_newline(argc=1)
pushi.e 9
conv.i.v
pushi.e 9
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.debugmessage
call.i string_hash_to_newline(argc=1)
pushi.e 9
conv.i.v
pushi.e 7
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.debugmessage
call.i string_hash_to_newline(argc=1)
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
pushloc.v local.col
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.fnt
call.i draw_set_font(argc=1)
popz.v

:[end]