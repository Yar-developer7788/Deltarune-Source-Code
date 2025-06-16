.localvar 2 arguments

:[0]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.mygif
call.i sprite_exists(argc=1)
conv.v.b
bf [10]

:[1]
push.v self.mygif
pop.v.v self.sprite_index
call.i draw_self(argc=0)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[3]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[5]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[7]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[9]
push.s "This is broken bc GM cant import gifs. lol. see you in 2.3"@30000
conv.s.v
call.i gml_Script_cameray(argc=0)
pushi.e 440
add.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
b [end]

:[10]
push.s "GIF not found."@30001
conv.s.v
call.i gml_Script_cameray(argc=0)
pushi.e 460
add.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]