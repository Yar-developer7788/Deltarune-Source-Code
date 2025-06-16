.localvar 2 arguments

:[0]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.facealpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.facealpha
push.d 0.2
add.d.v
pop.v.v self.facealpha

:[3]
push.v self.facealpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facealpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [5]

:[4]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.mystring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i draw_text(argc=3)
popz.v

:[8]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.mystring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
pop.v.i self.finished

:[14]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [16]

:[15]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [23]

:[18]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [23]

:[19]
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.v self.mycolor
call.i draw_set_color(argc=1)
popz.v
push.v self.finished
pushi.e 0
cmp.i.v EQ
bf [22]

:[20]
push.v self.partstring
push.v self.part
push.v self.mystring
call.i string_char_at(argc=2)
add.v.v
pop.v.v self.partstring
push.v self.part
pushi.e 1
add.i.v
pop.v.v self.part
push.v self.part
push.v self.mystring
call.i string_length(argc=1)
pushi.e 1
add.i.v
cmp.v.v GTE
bf [22]

:[21]
pushi.e 1
pop.v.i self.finished

:[22]
push.v self.partstring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 15
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 70
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text(argc=3)
popz.v

:[23]
push.v self.writergod
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[24]
push.v self.finished
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 2
pop.v.i self.finished

:[29]
b [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
push.v self.getrid
pushi.e 1
cmp.i.v EQ
bf [37]

:[32]
push.v self.nowdir
neg.v
pop.v.v self.direction
push.v self.speed
pushi.e 2
add.i.v
pop.v.v self.speed
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [34]

:[33]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]