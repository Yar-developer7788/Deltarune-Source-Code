.localvar 2 arguments
.localvar 36646 checkPress 18333
.localvar 9830 _snd 18334
.localvar 36713 _volume 18335

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
bf [29]

:[14]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [28]

:[15]
pushi.e 2
pop.v.i self.pressedBuffer
pushi.e 1
pop.v.i self.pressed
pushi.e 1130
pushenv [17]

:[16]
pushi.e 7
pop.v.i self.image_timer

:[17]
popenv [16]
push.s "snd_speak_and_spell_"@36648
push.v self.myString
add.v.s
call.i asset_get_index(argc=1)
call.i gml_Script_snd_play(argc=1)
pop.v.v local._snd
push.v self.buttonIndex
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
conv.i.v
b [20]

:[19]
pushi.e 0
conv.i.v
pushi.e 1
push.v self.buttonIndex
pushi.e 4
conv.i.d
div.d.v
sub.v.i
call.i max(argc=2)

:[20]
pop.v.v local._volume
pushi.e 0
conv.i.v
pushloc.v local._volume
pushloc.v local._snd
call.i audio_sound_gain(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 15
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
pushi.e 1130
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [28]

:[21]
pushi.e 1130
pushenv [27]

:[22]
push.v self.forcefield_id
push.v other.forcefield_id
cmp.v.v EQ
bf [24]

:[23]
push.v self.myString
push.v other.myString
cmp.v.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v other.myString
pop.v.v self.myString

:[27]
popenv [22]

:[28]
b [end]

:[29]
push.v self.pressable
conv.v.b
bf [31]

:[30]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [end]

:[33]
push.v self.pressedBuffer
pushi.e 0
cmp.i.v LTE
bf [end]

:[34]
pushi.e 0
pop.v.i self.pressed

:[end]