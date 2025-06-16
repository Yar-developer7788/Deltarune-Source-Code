.localvar 2 arguments
.localvar 36646 checkPress 18274

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [3]

:[2]
push.v self.jaString
push.s "-"@9558
cmp.s.v NEQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.v self.jaString
pop.v.v self.myString

:[6]
push.v self.myString
push.s "!"@6155
cmp.s.v EQ
bf [8]

:[7]
pushi.e 36
pop.v.i self.textImage
b [11]

:[8]
push.v self.myString
call.i ord(argc=1)
pushi.e 57
cmp.i.v LTE
bf [10]

:[9]
push.v self.myString
call.i ord(argc=1)
pushi.e 22
sub.i.v
pop.v.v self.textImage
b [11]

:[10]
push.v self.myString
call.i string_upper(argc=1)
call.i ord(argc=1)
pushi.e 65
sub.i.v
pop.v.v self.textImage

:[11]
pushi.e 1
pop.v.i self.init

:[12]
pushi.e 0
pop.v.i local.checkPress
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[13]
push.v self.pressable
conv.v.b
bf [15]

:[14]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [19]

:[18]
pushi.e 1
pop.v.i local.checkPress

:[19]
pushloc.v local.checkPress
conv.v.b
bf [35]

:[20]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [34]

:[21]
pushi.e 2
pop.v.i self.pressedBuffer
pushi.e 1
pop.v.i self.pressed
pushi.e 1125
pushenv [23]

:[22]
pushi.e 7
pop.v.i self.image_timer

:[23]
popenv [22]
push.v self.myString
push.s "A"@1192
cmp.s.v EQ
bf [25]

:[24]
pushi.e 99
conv.i.v
call.i irandom(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 22
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [31]

:[28]
push.v self.myString
push.s "!"@6155
cmp.s.v EQ
bf [30]

:[29]
pushi.e 8
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [31]

:[30]
push.s "snd_speak_and_spell_"@36648
push.v self.myString
add.v.s
call.i asset_get_index(argc=1)
call.i gml_Script_snd_play(argc=1)
popz.v

:[31]
push.v self.myString
pop.v.v 1123.addString
push.v self.id
pop.v.v 1123.lastPressedTile
pushi.e 1123
pushenv [33]

:[32]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[33]
popenv [32]

:[34]
b [41]

:[35]
push.v self.pressable
conv.v.b
bf [37]

:[36]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [41]

:[39]
push.v self.pressedBuffer
pushi.e 0
cmp.i.v LTE
bf [41]

:[40]
pushi.e 0
pop.v.i self.pressed

:[41]
push.v self.pressedBuffer
push.e 1
sub.i.v
pop.v.v self.pressedBuffer
push.v self.bouncecon
pushi.e 0
cmp.i.v GT
bf [end]

:[42]
push.v self.bouncecon
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.drawY
pushi.e 0
pop.v.i self.bouncetimer
pushi.e 2
pop.v.i self.bouncecon

:[44]
push.v self.bouncecon
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 0
pop.v.i self.pressed
pushi.e -30
pop.v.i self.drawY
pushi.e 3
pop.v.i self.bouncecon

:[46]
push.v self.bouncecon
pushi.e 3
cmp.i.v EQ
bf [end]

:[47]
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.drawY
call.i lerp(argc=3)
pop.v.v self.drawY
push.v self.bouncetimer
push.e 1
add.i.v
pop.v.v self.bouncetimer
push.v self.bouncetimer
pushi.e 15
cmp.i.v GTE
bf [end]

:[48]
pushi.e 0
pop.v.i self.bouncetimer
pushi.e 0
pop.v.i self.bouncecon
pushi.e 0
pop.v.i self.drawY

:[end]