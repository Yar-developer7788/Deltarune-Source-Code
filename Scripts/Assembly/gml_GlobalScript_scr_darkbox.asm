.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_darkbox (locals=0, argc=4)
:[1]
push.v self.cur_jewel
pushi.e 1
add.i.v
pop.v.v self.cur_jewel
push.v arg.argument2
push.v arg.argument0
sub.v.v
pushi.e 63
sub.i.v
pop.v.v self.textbox_width
push.v self.textbox_width
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.textbox_width

:[3]
push.v arg.argument3
push.v arg.argument1
sub.v.v
pushi.e 63
sub.i.v
pop.v.v self.textbox_height
push.v self.textbox_height
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.textbox_height

:[5]
push.v self.textbox_width
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e 32
conv.i.v
push.v self.textbox_width
push.v arg.argument1
push.v arg.argument0
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_stretched(argc=6)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
push.v self.textbox_width
push.v arg.argument3
pushi.e 1
add.i.v
push.v arg.argument0
pushi.e 32
add.i.v
pushi.e 0
conv.i.v
pushi.e 2442
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.textbox_height
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.textbox_height
pushi.e -2
conv.i.v
push.v arg.argument1
pushi.e 32
add.i.v
push.v arg.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 2443
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.textbox_height
pushi.e 2
conv.i.v
push.v arg.argument1
pushi.e 32
add.i.v
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 2443
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument1
push.v arg.argument0
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v arg.argument1
push.v arg.argument2
pushi.e 1
add.i.v
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument3
pushi.e 1
add.i.v
push.v arg.argument0
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v arg.argument3
pushi.e 1
add.i.v
push.v arg.argument2
pushi.e 1
add.i.v
push.v self.cur_jewel
pushi.e 10
conv.i.d
div.d.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [12]

:[11]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument1
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v arg.argument1
push.v arg.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
push.v arg.argument3
pushi.e 1
add.i.v
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
push.v arg.argument3
pushi.e 1
add.i.v
push.v arg.argument2
pushi.e 1
add.i.v
pushi.e 0
conv.i.v
pushi.e 2441
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_darkbox
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_darkbox
popz.v

:[end]