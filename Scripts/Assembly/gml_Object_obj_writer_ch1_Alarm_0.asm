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
b [7]

:[2]
push.v self.first_alarm
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.pos
pushi.e 2
cmp.i.v GTE
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
call.i gml_Script_scr_textsound_ch1(argc=0)
popz.v

:[7]
push.v self.pos
push.v self.length
cmp.v.v LTE
bf [9]

:[8]
push.i 68097
setowner.e
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[9]
push.v self.first_alarm
pushi.e 0
cmp.i.v EQ
bf [14]

:[10]
pushi.e 1
conv.i.v
push.v self.mystring
call.i string_char_at(argc=2)
pop.v.v self.getchar
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [12]

:[11]
push.v self.pos
pushi.e 3
add.i.v
pop.v.v self.pos
b [13]

:[12]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[13]
pushi.e 1
pop.v.i self.first_alarm
b [end]

:[14]
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
push.s "&"@6153
cmp.s.v EQ
bf [16]

:[15]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[16]
push.v self.getchar
push.s "\\"@6159
cmp.s.v EQ
bf [18]

:[17]
push.v self.pos
pushi.e 3
add.i.v
pop.v.v self.pos

:[18]
push.v self.getchar
push.s "/"@4448
cmp.s.v EQ
bf [22]

:[19]
pushi.e 1
pop.v.i self.halt
push.v self.nextchar
push.s "%"@14906
cmp.s.v EQ
bf [21]

:[20]
pushi.e 2
pop.v.i self.halt

:[21]
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[22]
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
bf [24]

:[23]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[24]
push.v self.getchar
push.s "^"@6154
cmp.s.v EQ
bf [44]

:[25]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 0
cmp.i.v GT
bf [44]

:[26]
push.v self.nextchar
push.s "1"@9475
cmp.s.v EQ
bf [28]

:[27]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 5
add.i.v
pop.i.v [array]self.alarm

:[28]
push.v self.nextchar
push.s "2"@4175
cmp.s.v EQ
bf [30]

:[29]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 10
add.i.v
pop.i.v [array]self.alarm

:[30]
push.v self.nextchar
push.s "3"@2741
cmp.s.v EQ
bf [32]

:[31]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 15
add.i.v
pop.i.v [array]self.alarm

:[32]
push.v self.nextchar
push.s "4"@608
cmp.s.v EQ
bf [34]

:[33]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 20
add.i.v
pop.i.v [array]self.alarm

:[34]
push.v self.nextchar
push.s "5"@5306
cmp.s.v EQ
bf [36]

:[35]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 30
add.i.v
pop.i.v [array]self.alarm

:[36]
push.v self.nextchar
push.s "6"@3595
cmp.s.v EQ
bf [38]

:[37]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 40
add.i.v
pop.i.v [array]self.alarm

:[38]
push.v self.nextchar
push.s "7"@9476
cmp.s.v EQ
bf [40]

:[39]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 60
add.i.v
pop.i.v [array]self.alarm

:[40]
push.v self.nextchar
push.s "8"@9477
cmp.s.v EQ
bf [42]

:[41]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 90
add.i.v
pop.i.v [array]self.alarm

:[42]
push.v self.nextchar
push.s "9"@9478
cmp.s.v EQ
bf [44]

:[43]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 150
add.i.v
pop.i.v [array]self.alarm

:[44]
push.v self.pos
pushi.e 1
add.i.v
pop.v.v self.pos

:[end]