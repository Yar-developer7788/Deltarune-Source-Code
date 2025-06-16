.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.rouxls
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
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
push.v self.maxy
pushi.e 50
sub.i.v
push.v self.maxx
pushi.e 70
add.i.v
pushi.e 0
conv.i.v
pushi.e 1161
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.starwalker
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
pushi.e 0
conv.i.v
pushi.e 1209
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]