.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 420
add.i.v
pushi.e 0
conv.i.v
pushi.e 1787
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 220
add.i.v
pushi.e 1
conv.i.v
pushi.e 1787
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [end]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 320
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 460
add.i.v
pushi.e 2
conv.i.v
pushi.e 1787
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]