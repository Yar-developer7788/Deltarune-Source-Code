.localvar 2 arguments

:[0]
b [40]

> gml_Script_scr_textsound_ch1 (locals=0, argc=0)
:[1]
pushi.e 1
pop.v.i self.playtextsound
call.i gml_Script_button2_h_ch1(argc=0)
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
bf [39]

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
bf [13]

:[10]
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
pop.v.i self.playcheck
push.v self.pos
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
b [13]

:[12]
pushi.e 0
pop.v.i self.play

:[13]
push.v self.getchar
push.s " "@353
cmp.s.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.play

:[15]
push.v self.getchar
push.s "^"@6154
cmp.s.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.play

:[17]
push.v self.getchar
push.s "!"@6155
cmp.s.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.play

:[19]
push.v self.getchar
push.s "."@6156
cmp.s.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.play

:[21]
push.v self.getchar
push.s "?"@4913
cmp.s.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.play

:[23]
push.v self.getchar
push.s ","@6157
cmp.s.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.play

:[25]
push.v self.getchar
push.s ":"@6158
cmp.s.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i self.play

:[27]
push.v self.getchar
push.s "/"@4448
cmp.s.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.play

:[29]
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.play

:[31]
push.v self.getchar
push.s "|"@6160
cmp.s.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.play

:[33]
push.v self.getchar
push.s "*"@6161
cmp.s.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i self.play

:[35]
push.v self.play
pushi.e 1
cmp.i.v EQ
bf [39]

:[36]
push.v self.textsound
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1327
pushenv [38]

:[37]
pushi.e 1
pop.v.i self.mouthmove

:[38]
popenv [37]

:[39]
exit.i

:[40]
push.i [function]gml_Script_scr_textsound_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_textsound_ch1
popz.v

:[end]