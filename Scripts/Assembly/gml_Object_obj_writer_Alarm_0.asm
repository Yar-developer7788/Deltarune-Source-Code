.localvar 2 arguments

:[0]
push.v self.rate
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
b [8]

:[2]
push.v self.sound_timer
push.e 1
sub.i.v
pop.v.v self.sound_timer
push.v self.first_alarm
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.pos
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
push.v self.sound_timer
pushi.e 0
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i gml_Script_scr_textsound(argc=0)
popz.v

:[8]
push.v self.pos
push.v self.length
cmp.v.v LTE
bf [10]

:[9]
push.i 68097
setowner.e
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
b [11]

:[10]
pushi.e 1
pop.v.i self.reachedend

:[11]
push.v self.first_alarm
pushi.e 0
cmp.i.v EQ
bf [16]

:[12]
pushi.e 1
conv.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [14]

:[13]
push.v self.pos
pushi.e 3
add.i.v
pop.v.v self.pos
b [15]

:[14]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[15]
pushi.e 1
pop.v.i self.first_alarm
b [end]

:[16]
push.v self.pos
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
push.v self.pos
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.getchar
push.s "`"@6238
cmp.s.v EQ
bf [18]

:[17]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos
exit.i

:[18]
push.v self.getchar
push.s "&"@6153
cmp.s.v EQ
bt [20]

:[19]
push.v self.getchar
push.s "\n"@150
cmp.s.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[23]
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [25]

:[24]
push.v self.pos
pushi.e 3
add.i.v
pop.v.v self.pos

:[25]
push.v self.getchar
push.s "/"@4448
cmp.s.v EQ
bf [29]

:[26]
pushi.e 1
pop.v.i self.halt
push.v self.nextchar
push.s "%"@14906
cmp.s.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.halt

:[28]
push.i 68097
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[29]
push.v self.pos
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
push.v self.pos
pushi.e 1
add.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.nextchar
push.v self.getchar
push.s "|"@6160
cmp.s.v EQ
bf [31]

:[30]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[31]
push.v self.getchar
push.s "^"@6154
cmp.s.v EQ
bf [51]

:[32]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [51]

:[33]
push.v self.nextchar
push.s "1"@9475
cmp.s.v EQ
bf [35]

:[34]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm

:[35]
push.v self.nextchar
push.s "2"@4175
cmp.s.v EQ
bf [37]

:[36]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 10
add.i.v
pop.i.v [array]self.alarm

:[37]
push.v self.nextchar
push.s "3"@2741
cmp.s.v EQ
bf [39]

:[38]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 15
add.i.v
pop.i.v [array]self.alarm

:[39]
push.v self.nextchar
push.s "4"@608
cmp.s.v EQ
bf [41]

:[40]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 20
add.i.v
pop.i.v [array]self.alarm

:[41]
push.v self.nextchar
push.s "5"@5306
cmp.s.v EQ
bf [43]

:[42]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 30
add.i.v
pop.i.v [array]self.alarm

:[43]
push.v self.nextchar
push.s "6"@3595
cmp.s.v EQ
bf [45]

:[44]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 40
add.i.v
pop.i.v [array]self.alarm

:[45]
push.v self.nextchar
push.s "7"@9476
cmp.s.v EQ
bf [47]

:[46]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 60
add.i.v
pop.i.v [array]self.alarm

:[47]
push.v self.nextchar
push.s "8"@9477
cmp.s.v EQ
bf [49]

:[48]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 90
add.i.v
pop.i.v [array]self.alarm

:[49]
push.v self.nextchar
push.s "9"@9478
cmp.s.v EQ
bf [51]

:[50]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 150
add.i.v
pop.i.v [array]self.alarm

:[51]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[end]