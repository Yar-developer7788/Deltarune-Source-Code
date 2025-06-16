.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.jp
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.jp

:[2]
push.d 0.5
pop.v.d self.squished
push.v self.jp
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.squished

:[4]
pushi.e 0
pop.v.i self.animer
call.i event_inherited(argc=0)
popz.v
pushi.e 5
pop.v.i self.type
pushi.e 0
pop.v.i self.subtype
push.s " "@353
pop.v.s self.songPlaying
pushi.e 0
pop.v.i self.ch2_allrecruited
pushi.e -5
pushi.e 630
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[5]
pushi.e -5
pushi.e 631
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[6]
pushi.e -5
pushi.e 632
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[7]
pushi.e -5
pushi.e 633
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[8]
pushi.e -5
pushi.e 634
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[9]
pushi.e -5
pushi.e 635
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
pushi.e -5
pushi.e 636
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e -5
pushi.e 640
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
pushi.e -5
pushi.e 642
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 644
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 1
pop.v.i self.ch2_allrecruited

:[end]