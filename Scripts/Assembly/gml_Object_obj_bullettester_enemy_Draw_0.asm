.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.s "Q"@9489
pop.v.s self.keya
push.s "W"@9494
pop.v.s self.keyb
push.v self.myself
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "E"@9481
pop.v.s self.keya
push.s "R"@9490
pop.v.s self.keyb

:[2]
push.v self.myself
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "T"@9492
pop.v.s self.keya
push.s "Y"@5384
pop.v.s self.keyb

:[4]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
push.d 1.5
conv.d.v
push.s "SpawnType: "@29860
pushi.e -5
pushi.e 23
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.tempflag
call.i string(argc=1)
add.v.s
push.s "#"@6243
add.s.v
push.v self.keya
add.v.v
push.s "- "@29861
add.s.v
push.v self.keyb
add.v.v
push.s "+ "@29862
add.s.v
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 80
sub.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[end]