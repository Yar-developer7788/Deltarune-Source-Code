.localvar 2 arguments
.localvar 107 i 20944

:[0]
push.v self.darkamt
pop.v.v self.cur_alpha
push.v self.darkamt
push.d 0.6
cmp.d.v LT
bf [2]

:[1]
push.v self.darkamt
push.d 0.04
add.d.v
pop.v.v self.darkamt

:[2]
push.v self.tile_fade
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v self.cur_alpha
push.v self.darkamt
cmp.v.v NEQ
bf [7]

:[4]
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [7]

:[6]
push.v self.darkamt
pushi.e 2
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i gml_Script_tile_set_alpha_ch1(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[7]
push.v self.darkamt
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 650
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 650
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]