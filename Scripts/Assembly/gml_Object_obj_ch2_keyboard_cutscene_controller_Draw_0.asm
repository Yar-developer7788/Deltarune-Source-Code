.localvar 2 arguments
.localvar 9183 _xx 19708
.localvar 9185 _yy 19709
.localvar 38109 scaleTimer 19710

:[0]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 138
conv.i.v
b [3]

:[2]
pushi.e 198
conv.i.v

:[3]
pop.v.v local._xx
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 50
conv.i.v
b [6]

:[5]
pushi.e 70
conv.i.v

:[6]
pop.v.v local._yy
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.noelleString
pushloc.v local._yy
pushloc.v local._xx
call.i draw_text(argc=3)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.lost
conv.v.b
bf [8]

:[7]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
push.v self.won
conv.v.b
bf [10]

:[9]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
push.v self.currentString
pushloc.v local._yy
pushi.e 28
add.i.v
pushloc.v local._xx
call.i draw_text(argc=3)
popz.v
push.v self.won
conv.v.b
bf [end]

:[11]
push.v self.imageTimer
push.d 0.1
add.d.v
pop.v.v self.imageTimer
push.v self.imageTimer
push.d 4.5
cmp.d.v LT
bf [13]

:[12]
pushi.e 4
conv.i.v
push.v self.imageTimer
push.d 4.5
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
push.d 4.5
mul.d.v
b [14]

:[13]
push.d 4.5
conv.d.v

:[14]
pop.v.v local.scaleTimer
pushloc.v local.scaleTimer
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pop.v.v local.scaleTimer
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.scaleTimer
pushi.e 2
mul.i.v
pushi.e 80
conv.i.v
pushi.e 400
pushi.e 1
pushloc.v local.scaleTimer
sub.v.i
push.v self.victorySprite
call.i sprite_get_width(argc=1)
mul.v.v
add.v.i
push.v self.imageTimer
push.v self.victorySprite
call.i draw_sprite_ext(argc=9)
popz.v
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [20]

:[15]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[16]
pushi.e 287
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 390
pop.v.v [array]self.flag

:[20]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [end]

:[21]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 333
pop.v.v [array]self.flag

:[end]