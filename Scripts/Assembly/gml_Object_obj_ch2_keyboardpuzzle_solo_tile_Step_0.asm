.localvar 2 arguments
.localvar 36646 checkPress 19716
.localvar 9830 _snd 19717
.localvar 36713 _volume 19718

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.myString
call.i ord(argc=1)
pushi.e 57
cmp.i.v LTE
bf [3]

:[2]
push.v self.myString
call.i ord(argc=1)
pushi.e 22
sub.i.v
pop.v.v self.textImage
b [4]

:[3]
push.v self.myString
call.i string_upper(argc=1)
call.i ord(argc=1)
pushi.e 65
sub.i.v
pop.v.v self.textImage

:[4]
pushi.e 1
pop.v.i self.init

:[5]
pushi.e 0
pop.v.i local.checkPress
pushi.e 893
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[6]
push.v self.pressed
conv.v.b
not.b
bf [9]

:[7]
push.v self.pressable
conv.v.b
bf [9]

:[8]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i local.checkPress

:[13]
pushloc.v local.checkPress
conv.v.b
bf [20]

:[14]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [19]

:[15]
pushi.e 2
pop.v.i self.pressedBuffer
pushi.e 1
pop.v.i self.pressed
push.s "snd_speak_and_spell_"@36648
push.v self.myString
add.v.s
call.i asset_get_index(argc=1)
call.i gml_Script_snd_play(argc=1)
pop.v.v local._snd
push.v self.buttonIndex
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
conv.i.v
b [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 1
push.v self.buttonIndex
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i max(argc=2)

:[18]
pop.v.v local._volume
pushi.e 0
conv.i.v
pushloc.v local._volume
pushloc.v local._snd
call.i audio_sound_gain(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.controller
pushi.e -9
dup.i 4
push.v [stacktop]self.finalString
push.v self.myString
add.v.v
pop.i.v [stacktop]self.finalString
push.v self.x
push.v self.controller
pushi.e -9
pop.v.v [stacktop]self.buttonx
pushi.e 1
pop.v.b self.down

:[19]
b [end]

:[20]
push.v self.pressable
conv.v.b
bf [22]

:[21]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
push.v self.pressedBuffer
pushi.e 0
cmp.i.v LTE
bf [end]

:[25]
pushi.e 0
pop.v.i self.pressed

:[end]