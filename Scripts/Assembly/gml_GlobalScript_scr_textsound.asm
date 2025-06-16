.localvar 2 arguments

:[0]
b [50]

> gml_Script_scr_textsound (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.i self.playtextsound
call.i gml_Script_button2_h(argc=0)
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.playtextsound

:[3]
push.v self.skippable
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.playtextsound

:[5]
push.v self.playtextsound
pushi.e 1
cmp.i.v EQ
bf [49]

:[6]
push.v self.rate
pushi.e 2
cmp.i.v LTE
bf [8]

:[7]
push.v self.pos
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
b [9]

:[8]
push.v self.pos
pushi.e 1
sub.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar

:[9]
pushi.e 1
pop.v.i self.play
pushi.e 0
pop.v.i self.playcheck
push.v self.getchar
push.s "&"@6153
cmp.s.v EQ
bt [11]

:[10]
push.v self.getchar
push.s "\n"@150
cmp.s.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [16]

:[13]
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [15]

:[14]
pushi.e 1
pop.v.i self.playcheck
push.v self.pos
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
b [16]

:[15]
pushi.e 0
pop.v.i self.play

:[16]
push.v self.getchar
push.s " "@353
cmp.s.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.play

:[18]
push.v self.getchar
push.s "^"@6154
cmp.s.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.play

:[20]
push.v self.getchar
push.s "!"@6155
cmp.s.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.play

:[22]
push.v self.getchar
push.s "."@6156
cmp.s.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.play

:[24]
push.v self.getchar
push.s "?"@4913
cmp.s.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.play

:[26]
push.v self.getchar
push.s ","@6157
cmp.s.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i self.play

:[28]
push.v self.getchar
push.s ":"@6158
cmp.s.v EQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.play

:[30]
push.v self.getchar
push.s "/"@4448
cmp.s.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.play

:[32]
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.play

:[34]
push.v self.getchar
push.s "|"@6160
cmp.s.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.play

:[36]
push.v self.getchar
push.s "*"@6161
cmp.s.v EQ
bf [38]

:[37]
pushi.e 0
pop.v.i self.play

:[38]
push.v self.play
pushi.e 1
cmp.i.v EQ
bf [49]

:[39]
push.v self.textsound
pushi.e 7
cmp.i.v EQ
bf [41]

:[40]
pushi.e 34
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 34
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.qv
push.d 0.9
push.d 0.15
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.qp
push.v self.qp
push.v self.qv
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e 2
pop.v.i self.sound_timer
b [46]

:[41]
push.v self.textsound
pushi.e 35
cmp.i.v EQ
bf [43]

:[42]
pushi.e 36
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
pushi.e 36
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 2
pop.v.i self.sound_timer
b [46]

:[43]
push.v self.textsound
pushi.e 22
cmp.i.v EQ
bf [45]

:[44]
pushi.e 22
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v
pushi.e 22
conv.i.v
call.i gml_Script_snd_play(argc=1)
pop.v.v self.qv
pushi.e 2
pop.v.i self.sound_timer
b [46]

:[45]
push.v self.textsound
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
pushi.e 60
pushenv [48]

:[47]
pushi.e 1
pop.v.i self.mouthmove

:[48]
popenv [47]
push.v self.miniface_pos
push.e 1
add.i.v
pop.v.v self.miniface_pos

:[49]
exit.i

:[50]
push.i [function]gml_Script_scr_textsound
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_textsound
popz.v

:[end]