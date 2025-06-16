.localvar 2 arguments

:[0]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_camerax(argc=0)
pop.v.v self.cx
call.i gml_Script_cameray(argc=0)
pop.v.v self.cy
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 63.side
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.cy
pushi.e 84
add.i.v
pop.v.v self.cy

:[4]
push.v self.facealpha
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.facealpha
push.d 0.2
add.d.v
pop.v.v self.facealpha

:[6]
push.v self.facealpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.cy
sub.v.v
push.v self.x
push.v self.cx
sub.v.v
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
bt [8]

:[7]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
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
push.v self.cy
sub.v.v
push.v self.x
pushi.e 70
add.i.v
push.v self.cx
sub.v.v
call.i draw_text(argc=3)
popz.v

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
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
push.v self.cy
sub.v.v
push.v self.x
pushi.e 70
add.i.v
push.v self.cx
sub.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
pop.v.i self.finished

:[17]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [19]

:[18]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [26]

:[21]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [26]

:[22]
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
bf [25]

:[23]
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
bf [25]

:[24]
pushi.e 1
pop.v.i self.finished

:[25]
push.v self.partstring
call.i string_hash_to_newline(argc=1)
push.v self.y
pushi.e 15
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.cy
sub.v.v
push.v self.x
pushi.e 70
add.i.v
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.cx
sub.v.v
call.i draw_text(argc=3)
popz.v

:[26]
push.v self.writergod
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [33]

:[27]
push.v self.finished
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.getrid
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 2
pop.v.i self.finished

:[32]
b [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
push.v self.getrid
pushi.e 1
cmp.i.v EQ
bf [40]

:[35]
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
bt [37]

:[36]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]