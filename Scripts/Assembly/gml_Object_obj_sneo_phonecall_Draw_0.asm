.localvar 2 arguments

:[0]
push.v self.fadealpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.state
pushi.e 0
cmp.i.v EQ
bt [5]

:[1]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partframe
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
b [6]

:[5]
push.e 1

:[6]
bf [16]

:[7]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
call.i draw_self(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e -20
conv.i.v
push.v 697.x
pushi.e 697
pushi.e 5
push.v [array]self.partx
add.v.v
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.image_angle
push.v self.ringtimer
pushi.e 0
cmp.i.v GT
bf [13]

:[8]
push.v self.image_angle
push.v self.ringtimer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
b [11]

:[10]
pushi.e -1
conv.i.v

:[11]
add.v.v
pop.v.v self.image_angle
push.v self.ringtimer
push.e 1
sub.i.v
pop.v.v self.ringtimer
push.v self.ringtimer
pushi.e 6
cmp.i.v LTE
bf [13]

:[12]
pushi.e 5
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode

:[13]
push.v self.xstart
push.v self.siner
pushi.e 0
add.i.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ydrop
pushi.e 1
cmp.i.v LT
bf [15]

:[14]
push.v self.ydrop
push.d 0.02
add.d.v
pop.v.v self.ydrop

:[15]
pushi.e -2
conv.i.v
push.v self.ydrop
call.i gml_Script_scr_ease_out(argc=2)
push.v self.ystart
pushi.e -30
conv.i.v
call.i lerp(argc=3)
pop.v.v self.y
b [17]

:[16]
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partrot
pushi.e 50
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
push.v self.sneo
pushi.e -9
push.v [stacktop]self.x
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partx
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partxoff
add.v.v
pop.v.v self.xx
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partrot
pushi.e 50
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
push.v self.sneo
pushi.e -9
push.v [stacktop]self.y
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.party
add.v.v
push.v self.sneo
pushi.e -9
pushi.e 1
push.v [array]self.partyoff
add.v.v
pop.v.v self.yy
pushi.e 2
conv.i.v
pushi.e -20
conv.i.v
push.v 697.x
pushi.e 697
pushi.e 5
push.v [array]self.partx
add.v.v
push.v self.yy
push.v self.xx
call.i draw_line_width(argc=5)
popz.v

:[17]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]