.localvar 2 arguments
.localvar 9183 _xx 18314
.localvar 9185 _yy 18315

:[0]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 136
conv.i.v
b [3]

:[2]
pushi.e 196
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
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.use_ja
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v local._xx
pushi.e 22
sub.i.v
pop.v.v local._xx

:[11]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [13]

:[12]
push.v local._xx
pushi.e 40
add.i.v
pop.v.v local._xx

:[13]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.idealString
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
bf [15]

:[14]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[15]
push.v self.won
conv.v.b
bf [17]

:[16]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[17]
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

:[18]
push.v self.hacked
conv.v.b
bf [20]

:[19]
pushi.e 1
push.v self.imageTimer
sub.v.i
pop.v.v self.imageTimer
b [22]

:[20]
push.v self.imageTimer
push.v self.victorySprite
call.i sprite_get_number(argc=1)
push.d 0.25
sub.d.v
cmp.v.v LT
bf [22]

:[21]
push.v self.imageTimer
push.d 0.25
add.d.v
pop.v.v self.imageTimer

:[22]
push.i 65280
pop.v.i self.wincolor
push.v self.victorySprite
pushi.e 2402
cmp.i.v EQ
bf [24]

:[23]
push.i 16777215
pop.v.i self.wincolor

:[24]
push.v self.victorySprite
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
pushi.e 1
conv.i.v
push.v self.wincolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.monitory
push.v self.monitorx
push.v self.imageTimer
push.v self.victorySprite
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [32]

:[27]
pushi.e 287
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[28]
pushi.e 287
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]

:[31]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 390
pop.v.v [array]self.flag

:[32]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [end]

:[33]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 333
pop.v.v [array]self.flag

:[end]