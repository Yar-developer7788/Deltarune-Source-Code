.localvar 2 arguments

:[0]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.creditalpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.linecolor
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.line
call.i string_hash_to_newline(argc=1)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
push.v self.i
mul.v.i
add.v.v
pushi.e 50
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_text(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]