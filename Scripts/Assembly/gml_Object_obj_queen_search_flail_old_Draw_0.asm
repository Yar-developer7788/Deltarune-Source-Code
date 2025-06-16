.localvar 2 arguments
.localvar 14795 _af 11793

:[0]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [6]

:[1]
push.v self.loading
push.e 1
sub.i.v
pop.v.v self.loading
push.v self.loading
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index
b [5]

:[3]
push.v self.loading
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[5]
call.i draw_self(argc=0)
popz.v
exit.i

:[6]
push.v self.broken
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [10]

:[9]
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.x
push.v self.xstart
call.i lerp(argc=3)
pop.v.v self.xx
push.v self.i
pushi.e 4
conv.i.d
div.d.v
push.v self.y
push.v self.ystart
call.i lerp(argc=3)
pop.v.v self.yy
push.v self.yy
push.v self.xx
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
call.i draw_self(argc=0)
popz.v
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 547
conv.i.v
call.i gml_Script_scr_custom_afterimage(argc=1)
pop.v.v local._af
push.d 0.5
pushloc.v local._af
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[12]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "swing time = "@24786
push.v self.timer
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print_persistent(argc=1)
popz.v
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.y
push.v self.x
push.v 562.bufferbar
pushi.e 8
mod.i.v
pushi.e 1928
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]