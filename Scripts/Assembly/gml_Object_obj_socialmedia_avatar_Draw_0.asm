.localvar 2 arguments

:[0]
push.v self.sprite_index
pushi.e 1922
cmp.i.v EQ
bt [2]

:[1]
push.v self.sprite_index
pushi.e 1923
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [17]

:[4]
push.v self.index_timer
push.d 0.25
add.d.v
pop.v.v self.index_timer
push.v self.index_timer
pushi.e 2
cmp.i.v GTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.index_timer

:[6]
push.v self.sprite_index
pushi.e 1923
cmp.i.v EQ
bf [12]

:[7]
push.v self.index_timer
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16776960
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.index_timer
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
pushi.e 1
conv.i.v
push.i 16776960
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
b [16]

:[12]
push.v self.index_timer
pushi.e 1
cmp.i.v LT
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16776960
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.index_timer
pushi.e 1
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16776960
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
b [end]

:[17]
push.v self.index_timer
push.d 0.25
add.d.v
pop.v.v self.index_timer
push.v self.index_timer
pushi.e 2
cmp.i.v GTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.index_timer

:[19]
push.v self.sprite_index
pushi.e 1917
cmp.i.v EQ
bf [24]

:[20]
push.v self.index_timer
pushi.e 1
cmp.i.v LT
bf [22]

:[21]
push.v self.y
push.v self.x
push.v self.chosen_face
pushi.e 1917
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[22]
push.v self.index_timer
pushi.e 1
cmp.i.v GTE
bf [24]

:[23]
push.v self.y
push.v self.x
push.v self.chosen_face
pushi.e 1918
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[24]
push.v self.sprite_index
pushi.e 1919
cmp.i.v EQ
bf [end]

:[25]
push.v self.index_timer
pushi.e 1
cmp.i.v LT
bf [27]

:[26]
push.v self.y
push.v self.x
push.v self.chosen_face
pushi.e 1919
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[27]
push.v self.index_timer
pushi.e 1
cmp.i.v GTE
bf [end]

:[28]
push.v self.y
push.v self.x
push.v self.chosen_face
pushi.e 1920
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]