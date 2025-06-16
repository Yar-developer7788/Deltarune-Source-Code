.localvar 2 arguments
.localvar 24738 _jpmode 11746

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
pop.v.b local._jpmode
push.v self.search
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [8]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [12]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [20]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [21]

:[6]
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [22]

:[7]
b [26]

:[8]
pushloc.v local._jpmode
conv.v.b
bf [10]

:[9]
push.s "ビクトリー"@24739
conv.s.v
b [11]

:[10]
push.s "Victory"@7113
conv.s.v

:[11]
pop.v.v self.targetstring
b [26]

:[12]
pushloc.v local._jpmode
conv.v.b
bf [14]

:[13]
push.s "ガン"@24740
conv.s.v
b [15]

:[14]
push.s "Gun"@24741
conv.s.v

:[15]
pop.v.v self.targetstring
b [26]

:[16]
pushloc.v local._jpmode
conv.v.b
bf [18]

:[17]
push.s "ちぎりき"@24742
conv.s.v
b [19]

:[18]
push.s "Flail"@24743
conv.s.v

:[19]
pop.v.v self.targetstring
b [26]

:[20]
push.s "Birthday Boy"@24744
pop.v.s self.targetstring
b [26]

:[21]
push.s "Jifts"@24745
pop.v.s self.targetstring
b [26]

:[22]
pushloc.v local._jpmode
conv.v.b
bf [24]

:[23]
push.s "いたい"@24746
conv.s.v
push.s "うーん"@24747
conv.s.v
push.s "しぎりき"@24748
conv.s.v
push.s "ヒーローけしマシン"@24749
conv.s.v
push.s "うーん"@24747
conv.s.v
push.s "があん"@24750
conv.s.v
call.i choose(argc=6)
pop.v.v self.targetstring
b [25]

:[24]
push.s "Perish"@24751
conv.s.v
push.s "Hurt"@24752
conv.s.v
push.s "Falil"@24753
conv.s.v
push.s "Hero Eraser"@24763
conv.s.v
push.s "Zappy Shooter"@24764
conv.s.v
push.s "Guun"@24756
conv.s.v
call.i choose(argc=6)
pop.v.v self.targetstring

:[25]
b [26]

:[26]
popz.v
pushi.e 1
pop.v.i self.init
push.v self.depth
push.e 1
add.i.v
pop.v.v self.depth

:[end]