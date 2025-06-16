.localvar 2 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.current
pushi.e 10
sub.i.v
pop.v.v self.i

:[1]
push.v self.i
push.v self.current
pushi.e 10
add.i.v
cmp.v.v LT
bf [10]

:[2]
push.v self.i
push.v self.soundtotal
cmp.v.v LT
bf [4]

:[3]
push.v self.i
pushi.e 0
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
push.v self.i
push.v self.current
cmp.v.v EQ
bf [8]

:[7]
pushi.e 200
push.v self.i
push.v self.current
sub.v.v
pushi.e 20
mul.i.v
add.v.i
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2531
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.i
call.i string(argc=1)
push.s " "@353
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.soundName
add.v.v
pushi.e 190
push.v self.i
push.v self.current
sub.v.v
pushi.e 20
mul.i.v
add.v.i
pushi.e 40
conv.i.v
call.i draw_text(argc=3)
popz.v

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[10]
push.s "Z:Play\nArrows:Move\nM:Mute\nJ:Jump to sound\nD:Dump sound list\nPgUp:Top\nPgDown:End"@29944
conv.s.v
pushi.e 80
conv.i.v
pushi.e 360
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.auto
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "A:Auto (On)"@29945
conv.s.v
pushi.e 320
conv.i.v
pushi.e 360
conv.i.v
call.i draw_text(argc=3)
popz.v

:[12]
push.v self.auto
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.s "A:Auto (Off)"@29946
conv.s.v
pushi.e 320
conv.i.v
pushi.e 360
conv.i.v
call.i draw_text(argc=3)
popz.v

:[14]
push.s "Y / U: Change Pitch"@29947
conv.s.v
pushi.e 340
conv.i.v
pushi.e 360
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Pitch="@29948
push.v self.pitch
call.i string(argc=1)
add.v.s
pushi.e 360
conv.i.v
pushi.e 360
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]