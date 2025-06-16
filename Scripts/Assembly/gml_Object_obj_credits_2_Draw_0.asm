.localvar 2 arguments
.localvar 14540 spacing 18559

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
bf [3]

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
pushi.e 8
sub.i.v
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

:[3]
push.v self.drawtesters
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
push.s "obj_credits_2_slash_Draw_0_gml_17_0"@37121
conv.s.v
push.s "-Fangamer Testing-"@37122
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.fangamertesting
push.s "obj_credits_2_slash_Draw_0_gml_18_0"@37124
conv.s.v
push.s "-Trailers & All Video Editing-"@37125
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.trailers
pushi.e 20
pop.v.i local.spacing
push.v self.menugray
call.i draw_set_color(argc=1)
popz.v
push.v self.fangamertesting
pushi.e 42
pushloc.v local.spacing
pushi.e 0
mul.i.v
add.v.i
pushi.e 160
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Chris Warriner"@37127
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.i
pushi.e 152
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Ryan Alyea"@37128
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 2
mul.i.v
add.v.i
pushi.e 152
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Alexandro Arvizu"@37129
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 3
mul.i.v
add.v.i
pushi.e 152
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Dan Moore"@37130
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 4
mul.i.v
add.v.i
pushi.e 152
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Jack Murphy"@37131
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 1
mul.i.v
add.v.i
pushi.e 168
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "heavenchai"@37132
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 2
mul.i.v
add.v.i
pushi.e 168
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Charlie Verdin"@37133
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 3
mul.i.v
add.v.i
pushi.e 168
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Steven Thompson"@37134
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 4
mul.i.v
add.v.i
pushi.e 168
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.menugray
call.i draw_set_color(argc=1)
popz.v
push.v self.trailers
pushi.e 42
pushloc.v local.spacing
pushi.e 6
mul.i.v
add.v.i
pushi.e 160
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Everdraed"@37135
conv.s.v
pushi.e 42
pushloc.v local.spacing
pushi.e 7
mul.i.v
add.v.i
pushi.e 160
conv.i.v
call.i draw_text(argc=3)
popz.v

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]