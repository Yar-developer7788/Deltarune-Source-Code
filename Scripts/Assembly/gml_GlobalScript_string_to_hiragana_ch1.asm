.localvar 2 arguments
.localvar 723 str 4628
.localvar 10706 result 4629
.localvar 12130 lastch 4630
.localvar 107 i 4631
.localvar 12131 ch 4632
.localvar 12133 halfkata 4633
.localvar 12135 daku_from 4634
.localvar 12137 daku_to 4635
.localvar 773 pos 4636
.localvar 12139 handaku_from 4637
.localvar 12141 handaku_to 4638

:[0]
b [23]

> gml_Script_string_to_hiragana_ch1 (locals=11, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.str
push.s ""@157
pop.v.s local.result
push.s ""@157
pop.v.s local.lastch
pushi.e 1
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.str
call.i string_length(argc=1)
cmp.v.v LTE
bf [21]

:[3]
pushloc.v local.i
pushloc.v local.str
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
pushi.e 12449
cmp.i.v GTE
bf [5]

:[4]
pushloc.v local.ch
pushi.e 12534
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v local.ch
pushi.e 96
sub.i.v
pop.v.v local.ch
b [20]

:[8]
pushloc.v local.ch
push.i 65377
cmp.i.v GTE
bf [10]

:[9]
pushloc.v local.ch
push.i 65439
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [20]

:[12]
push.s "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜"@12132
pop.v.s local.halfkata
pushloc.v local.ch
push.i 65376
sub.i.v
pushloc.v local.halfkata
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.lastch
push.s ""@157
cmp.s.v NEQ
bf [20]

:[13]
pushloc.v local.ch
pushi.e 12443
cmp.i.v EQ
bf [17]

:[14]
push.s "かきくけこさしすせそたちつてとはひふへほ"@12134
pop.v.s local.daku_from
push.s "がぎぐげござじずぜぞだぢづでどばびぶべぼ"@12136
pop.v.s local.daku_to
pushloc.v local.daku_from
pushloc.v local.lastch
call.i string_pos(argc=2)
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v NEQ
bf [16]

:[15]
pushloc.v local.pos
pushloc.v local.daku_to
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch

:[16]
b [20]

:[17]
pushloc.v local.ch
pushi.e 12444
cmp.i.v EQ
bf [20]

:[18]
push.s "はひふへほ"@12138
pop.v.s local.handaku_from
push.s "ぱぴぷぺぽ"@12140
pop.v.s local.handaku_to
pushloc.v local.handaku_from
pushloc.v local.lastch
call.i string_pos(argc=2)
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
pushloc.v local.pos
pushloc.v local.handaku_to
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch

:[20]
pushloc.v local.ch
call.i chr(argc=1)
pop.v.v local.lastch
push.v local.result
pushloc.v local.lastch
add.v.v
pop.v.v local.result
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[21]
pushloc.v local.result
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_string_to_hiragana_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.string_to_hiragana_ch1
popz.v

:[end]