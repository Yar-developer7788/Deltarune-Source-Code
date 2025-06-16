.localvar 2 arguments
.localvar 107 i 9181
.localvar 21234 text_color 9182

:[0]
push.v self.specialmode
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.s "Chapter 2"@21233
conv.s.v
call.i gml_Script_cameray(argc=0)
pushi.e 80
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v self.choice
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [7]

:[3]
push.v self.choice_index
pushloc.v local.i
cmp.v.v EQ
bf [5]

:[4]
push.i 65535
conv.i.v
b [6]

:[5]
push.i 16777215
conv.i.v

:[6]
pop.v.v local.text_color
pushloc.v local.text_color
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choice
call.i gml_Script_cameray(argc=0)
pushi.e 160
add.i.v
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 240
add.i.v
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
call.i gml_Script_cameray(argc=0)
pushi.e 175
add.i.v
push.v self.choice_index
pushi.e 40
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 220
add.i.v
pushi.e 0
conv.i.v
pushi.e 2343
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[9]
push.v self.specialmode
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.specialmode
b [12]

:[11]
pushi.e 0
pop.v.i self.specialmode

:[12]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [16]

:[13]
push.v self.auto
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.auto
b [16]

:[15]
pushi.e 0
pop.v.i self.auto

:[16]
push.v self.specialmode
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
pop.v.i self.height
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 20
cmp.i.v LT
bf [20]

:[19]
push.v self.y
push.v self.height
add.v.v
pushloc.v local.i
pushi.e 10
mul.i.v
add.v.v
push.v self.x
pushi.e 300
add.i.v
push.v self.autotimer
pushi.e 5
conv.i.d
div.d.v
pushloc.v local.i
push.v self.n
add.v.v
call.i draw_sprite(argc=4)
popz.v
pushloc.v local.i
push.v self.n
add.v.v
call.i sprite_get_name(argc=1)
push.v self.y
push.v self.height
add.v.v
push.v self.x
call.i draw_text(argc=3)
popz.v
push.v self.height
pushloc.v local.i
push.v self.n
add.v.v
call.i sprite_get_height(argc=1)
add.v.v
pop.v.v self.height
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [22]

:[21]
push.v self.n
push.e 1
add.i.v
pop.v.v self.n

:[22]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [24]

:[23]
push.v self.n
pushi.e 20
add.i.v
pop.v.v self.n

:[24]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [26]

:[25]
push.v self.n
push.e 1
sub.i.v
pop.v.v self.n

:[26]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [28]

:[27]
push.v self.n
pushi.e 20
sub.i.v
pop.v.v self.n

:[28]
push.v self.auto
conv.v.b
bf [30]

:[29]
push.v self.autotimer
push.e 1
add.i.v
pop.v.v self.autotimer

:[30]
push.v self.autotimer
pushi.e 90
cmp.i.v GTE
bf [32]

:[31]
push.v self.n
pushi.e 5
add.i.v
pop.v.v self.n
pushi.e 0
pop.v.i self.autotimer

:[32]
push.v self.n
pushi.e 0
cmp.i.v LT
bf [end]

:[33]
pushi.e 0
pop.v.i self.n

:[end]