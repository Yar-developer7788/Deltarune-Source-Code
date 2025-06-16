.localvar 2 arguments

:[0]
push.v self.con
pushi.e 75
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.timer

:[2]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [4]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[4]
push.v self.con
pushi.e 71
cmp.i.v GTE
bf [6]

:[5]
push.v self.con
pushi.e 77
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [27]

:[8]
push.v self.timer
pushi.e 8
cmp.i.v LT
bf [10]

:[9]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 448
conv.i.v
push.v self.item1
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 484
conv.i.v
push.v self.item2
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
push.v self.timer
pushi.e 8
cmp.i.v GTE
bf [12]

:[11]
push.v self.timer
pushi.e 27
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 448
conv.i.v
pushi.e 4
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 484
conv.i.v
pushi.e 4
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.timer
pushi.e 27
cmp.i.v GTE
bf [17]

:[16]
push.v self.timer
pushi.e 45
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 448
conv.i.v
pushi.e 5
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 484
conv.i.v
pushi.e 5
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
push.v self.timer
pushi.e 45
cmp.i.v GTE
bf [22]

:[21]
push.v self.timer
pushi.e 47
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 448
conv.i.v
pushi.e 6
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 484
conv.i.v
pushi.e 6
conv.i.v
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[25]
push.v self.timer
pushi.e 47
cmp.i.v GTE
bf [27]

:[26]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 466
conv.i.v
push.v self.item3
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[27]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 174
conv.i.v
pushi.e 466
conv.i.v
push.v self.item3
pushi.e 907
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[29]
call.i draw_self(argc=0)
popz.v

:[end]