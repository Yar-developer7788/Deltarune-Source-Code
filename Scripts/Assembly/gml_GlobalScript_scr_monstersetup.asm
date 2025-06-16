.localvar 2 arguments

:[0]
b [210]

> gml_Script_scr_monstersetup (locals=0, argc=0)
:[1]
push.v self.myself
call.i gml_Script_scr_monster_actreset(argc=1)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_7_0"@7099
conv.s.v
push.s "Enemy"@7100
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_19_0"@7108
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_21_0"@7110
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_23_0"@7112
conv.s.v
push.s "Victory"@7113
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_25_0"@7114
conv.s.v
push.s "SimuDance"@7115
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 3
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_28_0"@7117
conv.s.v
push.s "Victory (S)"@7118
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_30_0"@7119
conv.s.v
push.s "Lecture"@7120
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 5
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_33_0"@7122
conv.s.v
push.s "CoolDance"@7123
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 1
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_35_0"@7125
conv.s.v
push.s "SimuDance"@7115
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 1
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 1
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_40_0"@7128
conv.s.v
push.s "CoolDance"@7123
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 1
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_42_0"@7130
conv.s.v
push.s "SimuDance"@7115
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 1
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 1
popaf.e

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_50_0"@7132
conv.s.v
push.s "Lancer"@7133
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 540
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 540
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_61_0"@7134
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_64_0"@7135
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_67_0"@7136
conv.s.v
push.s "Compliment"@6978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019185
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_69_0"@7137
conv.s.v
push.s "* Lancer busts in!"@7138
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_77_0"@7140
conv.s.v
push.s "Dummy"@7141
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 450
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 450
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_88_0"@7142
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_90_0"@7143
conv.s.v
push.s "Hug"@7144
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_92_0"@7145
conv.s.v
push.s "Hug Ralsei"@7146
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019185
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_96_0"@7148
conv.s.v
push.s "* The tutorial begins."@7149
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_100_0"@7150
conv.s.v
push.s "Ralsei"@4507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_112_0"@7151
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_114_0"@7152
conv.s.v
push.s "Hug"@7144
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019185
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_115_0"@7153
conv.s.v
push.s "* The tutorial begins."@7149
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[9]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [15]

:[10]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_121_0"@7154
conv.s.v
push.s "Rudinn"@7155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_132_0"@7156
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_134_0"@7157
conv.s.v
push.s "Convince"@7158
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_136_0"@7159
conv.s.v
push.s "Lecture"@7120
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [12]

:[11]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_140_0"@7160
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 6
cmp.i.v EQ
bf [29]

:[16]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_150_0"@7161
conv.s.v
push.s "Hathy"@7162
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 28
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_161_0"@7163
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_163_0"@7164
conv.s.v
push.s "Flatter"@7165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_165_0"@7166
conv.s.v
push.s "X-Flatter"@7167
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [19]

:[17]
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [19]

:[18]
pushi.e 40
pop.v.i global.plot

:[19]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [21]

:[20]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_171_0"@7168
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[24]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [26]

:[25]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_177_0"@7169
conv.s.v
push.s "S-Flatter"@7170
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 7
cmp.i.v EQ
bf [38]

:[30]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_188_0"@7171
conv.s.v
push.s "Clover"@7172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 43
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_201_0"@7173
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact
push.v self.myact
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_207_0"@7175
conv.s.v
push.s "Politics"@7176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_209_0"@7177
conv.s.v
push.s "Religion"@7178
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_211_0"@7179
conv.s.v
push.s "Sports"@7180
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[32]
push.v self.myact
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_216_0"@7181
conv.s.v
push.s "Kindness"@7182
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_218_0"@7183
conv.s.v
push.s "Cuteboys"@7184
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_220_0"@7185
conv.s.v
push.s "GunControl"@7186
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[34]
push.v self.myact
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_225_0"@7187
conv.s.v
push.s "Trees"@7188
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_227_0"@7189
conv.s.v
push.s "Ghosts"@7190
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_229_0"@7191
conv.s.v
push.s "Games"@7192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[36]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [38]

:[37]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_235_0"@7193
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 8
cmp.i.v EQ
bf [40]

:[39]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_244_0"@7194
conv.s.v
push.s "Pippins"@7195
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_255_0"@7196
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_257_0"@7197
conv.s.v
push.s "Bet"@7198
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_259_0"@7199
conv.s.v
push.s "X-Bet"@7200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 9
cmp.i.v EQ
bf [46]

:[41]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_269_0"@7201
conv.s.v
push.s "C.Round"@7202
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_280_0"@7203
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [44]

:[42]
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [44]

:[43]
pushi.e 40
pop.v.i global.plot

:[44]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [46]

:[45]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_288_0"@7204
conv.s.v
push.s "X-Compliment"@7205
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_291_0"@7206
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[46]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 10
cmp.i.v EQ
bf [49]

:[47]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_300_0"@7207
conv.s.v
push.s "K.Round"@7208
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
push.d 7.5
conv.d.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_311_0"@7209
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_313_0"@7210
conv.s.v
push.s "Bow"@7211
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_315_0"@7212
conv.s.v
push.s "Deep Bow"@7213
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [49]

:[48]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_324_0"@7214
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[49]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 11
cmp.i.v EQ
bf [55]

:[50]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_333_0"@7215
conv.s.v
push.s "Ponman"@7216
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_344_0"@7217
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_346_0"@7218
conv.s.v
push.s "Goodnight"@7219
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_348_0"@7220
conv.s.v
push.s "Lullaby"@7221
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [52]

:[51]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_354_0"@7222
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 12
cmp.i.v EQ
bf [57]

:[56]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_364_0"@7223
conv.s.v
push.s "Lancer"@7133
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 2400
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 2400
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e -40
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_375_0"@7224
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 13
cmp.i.v EQ
bf [63]

:[58]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_383_0"@7225
conv.s.v
push.s "Rabbick"@7226
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 38
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_394_0"@7227
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_396_0"@7228
conv.s.v
push.s "Blow On"@7229
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_398_0"@7230
conv.s.v
push.s "BreathAll"@7231
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [60]

:[59]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_403_0"@7232
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[63]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 14
cmp.i.v EQ
bf [69]

:[64]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_412_0"@7233
conv.s.v
push.s "Bloxer"@7234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 38
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_423_0"@7235
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_425_0"@7236
conv.s.v
push.s "Rearrange"@7237
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [66]

:[65]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_429_0"@7238
conv.s.v
push.s "Rival"@7239
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 15
cmp.i.v EQ
bf [75]

:[70]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_438_0"@7240
conv.s.v
push.s "Jigsawry"@7241
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_449_0"@7242
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_451_0"@7243
conv.s.v
push.s "Befriend"@7244
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [72]

:[71]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_457_0"@7245
conv.s.v
push.s "Warning"@7111
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[75]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 16
cmp.i.v EQ
bf [77]

:[76]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_466_0"@7246
conv.s.v
push.s "Clover"@7172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 80
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_480_0"@7247
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_482_0"@7248
conv.s.v
push.s "TalkBday"@7249
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_484_0"@7250
conv.s.v
push.s "TalkBoys"@7251
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_487_0"@7252
conv.s.v
push.s "TalkSports"@7253
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_490_0"@7254
conv.s.v
push.s "TalkAnimals"@7255
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_492_0"@7256
conv.s.v
push.s "TalkTrees"@7257
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 5
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 17
cmp.i.v EQ
bf [79]

:[78]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_501_0"@7258
conv.s.v
push.s "DoomTank"@7259
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_513_0"@7260
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_515_0"@7261
conv.s.v
push.s "Hug"@7144
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_518_0"@7262
conv.s.v
push.s "Flatter"@7165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_521_0"@7263
conv.s.v
push.s "Diplomacy"@7264
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_523_0"@7265
conv.s.v
push.s "Smile"@7266
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 18
cmp.i.v EQ
bf [81]

:[80]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_530_0"@7267
conv.s.v
push.s "Lancer"@7133
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_541_0"@7268
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_544_0"@7269
conv.s.v
push.s "Anything"@2837
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_547_0"@7270
conv.s.v
push.s "X-Anything"@7271
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[81]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 19
cmp.i.v EQ
bf [83]

:[82]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pop.v.v self._armordf
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_556_0"@7273
conv.s.v
push.s "Susie"@4904
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e -5
push.v self._armordf
add.v.i
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_567_0"@7274
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_570_0"@7275
conv.s.v
push.s "Anything"@2837
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_573_0"@7276
conv.s.v
push.s "Sing"@7277
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[83]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 20
cmp.i.v EQ
bf [85]

:[84]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_580_0"@7278
conv.s.v
push.s "JEVIL"@7279
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 3500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 3500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_591_0"@7280
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_596_0"@7281
conv.s.v
push.s "Pirouette"@7282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_597_0"@7283
conv.s.v
push.s "Random#Chaos"@7284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_602_0"@7286
conv.s.v
push.s "Hypnosis"@7287
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_603_0"@7288
conv.s.v
push.s "Induce#TIRED"@7289
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[85]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 21
cmp.i.v EQ
bf [89]

:[86]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_612_0"@7290
conv.s.v
push.s "K.Round"@7208
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_623_0"@7291
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushi.e -5
pushi.e 246
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_624_0"@7292
conv.s.v
push.s "Checkers"@7293
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e

:[88]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_626_0"@7294
conv.s.v
push.s "Bow"@7211
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_628_0"@7295
conv.s.v
push.s "Susie's Idea"@7296
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 22
cmp.i.v EQ
bf [91]

:[90]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_637_0"@7297
conv.s.v
push.s "Rudinn Ranger"@7298
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 45
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_648_0"@7299
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_650_0"@7300
conv.s.v
push.s "Convince"@7158
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_652_0"@7301
conv.s.v
push.s "Compliment"@6978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[91]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 23
cmp.i.v EQ
bf [93]

:[92]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_661_0"@7302
conv.s.v
push.s "Head Hathy"@7303
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 190
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 190
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_672_0"@7304
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_674_0"@7305
conv.s.v
push.s "Flirt"@7306
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_676_0"@7307
conv.s.v
push.s "X-Flirt"@7308
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[93]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 25
cmp.i.v EQ
bf [100]

:[94]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_683_0"@7309
conv.s.v
push.s "King"@7310
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 2800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 2800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_694_0"@7311
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_699_0"@7312
conv.s.v
push.s "Talk"@7313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_705_0"@7314
conv.s.v
push.s "Talk"@7313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_711_0"@7315
conv.s.v
push.s "Talk"@7313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
pushi.e -5
pushi.e 5
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_721_0"@7316
conv.s.v
push.s "Courage"@7317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_722_0"@7318
conv.s.v
push.s "Defense#Boost"@7319
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 62
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e

:[96]
pushi.e -5
pushi.e 6
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_731_0"@7320
conv.s.v
push.s "RedBuster"@7321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_732_0"@7322
conv.s.v
push.s "Red#Damage"@7323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[98]
pushi.e -5
pushi.e 7
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_741_0"@7324
conv.s.v
push.s "DualHeal"@7325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_742_0"@7326
conv.s.v
push.s "Heals#everyone"@7327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e

:[100]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 30
cmp.i.v EQ
bf [105]

:[101]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_760_0"@7328
conv.s.v
push.s "Ambyu-Lance"@7329
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 84
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_772_0"@7330
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [103]

:[102]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_778_0"@7331
conv.s.v
push.s "Avoid"@7332
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_784_0"@7333
conv.s.v
push.s "GetHit"@7334
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
b [104]

:[103]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_791_0"@7335
conv.s.v
push.s "Hospitality"@7336
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e

:[104]
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_797_0"@7337
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_801_0"@7339
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_805_0"@7342
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[105]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 31
cmp.i.v EQ
bf [115]

:[106]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_811_0"@7346
conv.s.v
push.s "Poppup"@7347
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [109]

:[107]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [109]

:[108]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[112]
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 77
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_823_0"@7348
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_827_0"@7349
conv.s.v
push.s "Click"@7350
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_833_0"@7351
conv.s.v
push.s "Block"@7352
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [114]

:[113]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_841_0"@7353
conv.s.v
push.s "Avoid"@7332
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e

:[114]
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_847_0"@7354
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_850_0"@7355
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_853_0"@7356
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[115]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 32
cmp.i.v EQ
bf [120]

:[116]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_859_0"@7357
conv.s.v
push.s "Tasque"@7358
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 75
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_871_0"@7359
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_874_0"@7360
conv.s.v
push.s "Petting"@7361
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [118]

:[117]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_881_0"@7362
conv.s.v
push.s "Roar"@7363
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_887_0"@7364
conv.s.v
push.s "SoftVoice"@7365
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
b [119]

:[118]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_894_0"@7366
conv.s.v
push.s "PettingX"@7367
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[119]
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_900_0"@7368
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_904_0"@7369
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_908_0"@7370
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[120]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 33
cmp.i.v EQ
bf [127]

:[121]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_914_0"@7371
conv.s.v
push.s "Werewire"@7372
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bt [123]

:[122]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [124]

:[123]
push.e 1

:[124]
bf [126]

:[125]
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[126]
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 79
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_926_0"@7373
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_929_0"@7374
conv.s.v
push.s "JiggleJiggle"@7375
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_934_0"@7376
conv.s.v
push.s "ThrowWire"@7377
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_935_0"@7378
conv.s.v
push.s "Toss Kris#to free#wire"@7379
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_939_0"@7380
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_943_0"@7381
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_947_0"@7382
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[127]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 34
cmp.i.v EQ
bf [135]

:[128]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_953_0"@7383
conv.s.v
push.s "Maus"@7384
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_965_0"@7385
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_968_0"@7386
conv.s.v
push.s "TrapOne"@7387
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [130]

:[129]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_974_0"@7388
conv.s.v
push.s "Upgrade"@7389
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_980_0"@7390
conv.s.v
push.s "TrapAll"@7391
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
b [134]

:[130]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_987_0"@7392
conv.s.v
push.s "Fear"@7393
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [133]

:[132]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_987_1"@7394
conv.s.v
push.s "Compliment"@6978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[133]
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_980_0"@7390
conv.s.v
push.s "TrapAll"@7391
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e

:[134]
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_993_0"@7395
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_997_0"@7396
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1001_0"@7397
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[135]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 35
cmp.i.v EQ
bf [140]

:[136]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1008_0"@7398
conv.s.v
push.s "Virovirokun"@7399
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 240
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 84
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1019_0"@7400
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1022_0"@7401
conv.s.v
push.s "TakeCare"@7402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [138]

:[137]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1028_0"@7403
conv.s.v
push.s "TakeCareX"@7404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
b [139]

:[138]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1047_0"@7405
conv.s.v
push.s "TakeCareX"@7404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[139]
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1053_0"@7406
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1057_0"@7407
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1061_0"@7408
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e
push.i 28019192
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulnoe
pushi.e 0
popaf.e

:[140]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 36
cmp.i.v EQ
bf [142]

:[141]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1068_0"@7409
conv.s.v
push.s "Swatchling"@7410
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1079_0"@7411
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1082_0"@7412
conv.s.v
push.s "Warmify"@7413
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1099_0"@7414
conv.s.v
push.s "Redder#2 stages"@7415
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1085_0"@7416
conv.s.v
push.s "Coldify"@7417
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1103_0"@7418
conv.s.v
push.s "Bluer#2 stages"@7419
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1088_0"@7420
conv.s.v
push.s "Half-Warm"@7421
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019193
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1107_0"@7422
conv.s.v
push.s "Redder#1 stage"@7423
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1091_0"@7425
conv.s.v
push.s "Half-Cold"@7426
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019194
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1111_0_b"@7427
conv.s.v
push.s "Bluer#1 stage"@7428
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 0
popaf.e

:[142]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 37
cmp.i.v EQ
bf [149]

:[143]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1097_0"@7430
conv.s.v
push.s "Cap'n"@7431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1108_0"@7432
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1111_0"@7433
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [145]

:[144]
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e

:[145]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1116_0"@7435
conv.s.v
push.s "Dance X"@7436
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1119_0"@7437
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [147]

:[146]
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e

:[147]
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1123_0"@7438
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [149]

:[148]
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[149]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 38
cmp.i.v EQ
bf [156]

:[150]
push.i 28019171
setowner.e
push.s "K_K"@7439
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1142_0"@7440
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1145_0"@7441
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [152]

:[151]
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e

:[152]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1150_0"@7442
conv.s.v
push.s "Dance X"@7436
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1153_0"@7443
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [154]

:[153]
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e

:[154]
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1157_0"@7444
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [156]

:[155]
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[156]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 39
cmp.i.v EQ
bf [163]

:[157]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1165_0"@7445
conv.s.v
push.s "Sweet"@7446
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1176_0"@7447
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1179_0"@7448
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [159]

:[158]
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e

:[159]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1184_0"@7449
conv.s.v
push.s "Dance X"@7436
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1187_0"@7450
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [161]

:[160]
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e

:[161]
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1191_0"@7451
conv.s.v
push.s "Dance"@7434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v NEQ
bf [163]

:[162]
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[163]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 40
cmp.i.v EQ
bf [165]

:[164]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1199_0"@7452
conv.s.v
push.s "Werewerewire"@7453
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1753
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1753
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1210_0"@7454
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1213_0"@7455
conv.s.v
push.s "BeCold"@7456
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1218_0"@7457
conv.s.v
push.s "BeTough"@7458
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1224_0"@7459
conv.s.v
push.s "BeSweet"@7460
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1229_0"@7461
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1233_0"@7462
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[165]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 41
cmp.i.v EQ
bf [167]

:[166]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1234_0"@7463
conv.s.v
push.s "GrazeTest"@7464
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1251_0"@7465
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1254_0"@7466
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1257_0"@7467
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e

:[167]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 42
cmp.i.v EQ
bf [169]

:[168]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1259_0"@7468
conv.s.v
push.s "Tasque Manager"@7469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1367
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1367
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1276_0"@7470
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1280_0"@7471
conv.s.v
push.s "Order"@7472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1285_0"@7473
conv.s.v
push.s "OrderX"@7474
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1289_0_b"@7475
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1293_0"@7476
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[169]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 43
cmp.i.v EQ
bf [171]

:[170]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1289_0"@7477
conv.s.v
push.s "Berdly"@4907
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1985
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1985
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1312_0"@7478
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1315_0"@7479
conv.s.v
push.s "Bump"@7480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1332_0_b"@7481
conv.s.v
push.s "Ride#coaster"@7482
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1321_0"@7483
conv.s.v
push.s "BumpX"@7484
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1338_0"@7485
conv.s.v
push.s "Everyone#rides#coaster"@7486
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1337_0"@7487
conv.s.v
push.s "Bump"@7480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019193
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1354_0"@7488
conv.s.v
push.s "Ride#coaster"@7482
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescsus
pushi.e 0
popaf.e
push.i 28019195
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1347_0_b"@7490
conv.s.v
push.s "Bump"@7480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019194
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1364_0"@7491
conv.s.v
push.s "Ride#coaster"@7482
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 0
popaf.e
push.i 28019196
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostral
pushi.e 0
popaf.e

:[171]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 44
cmp.i.v EQ
bf [173]

:[172]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1347_0"@7493
conv.s.v
push.s "Mauswheel"@7494
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1753
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1753
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1367_0"@7495
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1362_0"@7496
conv.s.v
push.s "Catch"@7497
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1366_0"@7498
conv.s.v
push.s "CatchX"@7499
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1378_0"@7500
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019193
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescsus
pushi.e 0
popaf.e
push.i 28019195
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1384_0"@7501
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019194
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 0
popaf.e
push.i 28019196
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostral
pushi.e 0
popaf.e

:[173]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 45
cmp.i.v EQ
bf [175]

:[174]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1385_0"@7502
conv.s.v
push.s "Rouxls"@7503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 600
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 600
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1405_0"@7504
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1408_0"@7505
conv.s.v
push.s "Take House"@7506
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1413_0"@7507
conv.s.v
push.s "Take House 2"@7508
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 34
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1419_0"@7509
conv.s.v
push.s "Take House 3"@7510
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 59
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1425_0"@7511
conv.s.v
push.s "Take House 4"@7512
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 4
popaf.e
push.i 28019097
setowner.e
pushi.e 80
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 4
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1430_0"@7513
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1433_0_b"@7514
conv.s.v
push.s "Distract"@7515
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019194
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 0
popaf.e
push.i 28019196
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostral
pushi.e 0
popaf.e

:[175]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 46
cmp.i.v EQ
bf [183]

:[176]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1433_0"@7516
conv.s.v
push.s "Berdly"@4907
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 900
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 900
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1453_0"@7517
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [178]

:[177]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1456_0"@7518
conv.s.v
push.s "Glare"@7519
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [179]

:[178]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1456_1"@7520
conv.s.v
push.s "Play Dumb"@7521
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[179]
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [181]

:[180]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1460_0"@7522
conv.s.v
push.s "Wake"@7523
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [182]

:[181]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1460_1"@7524
conv.s.v
push.s "Play Smart"@7525
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[182]
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019190
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactnoe
pushi.e 0
popaf.e
push.i 28019191
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1465_0"@7526
conv.s.v
push.s "N-Action"@7343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamenoe
pushi.e 0
popaf.e

:[183]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 47
cmp.i.v EQ
bf [185]

:[184]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1464_0"@7527
conv.s.v
push.s "Clover"@7172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1484_0"@7528
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1487_0"@7529
conv.s.v
push.s "Topic"@7530
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1505_0"@7531
conv.s.v
push.s "Guess#favorite#thing"@7532
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1492_0"@7533
conv.s.v
push.s "Topic(Long)"@7534
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1510_0"@7535
conv.s.v
push.s "Longer#time to#guess"@7536
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1495_0"@7537
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1499_0_b"@7538
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[185]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 48
cmp.i.v EQ
bf [189]

:[186]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1499_0"@7539
conv.s.v
push.s "Queen"@7540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1510
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1510
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
pushi.e 576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [188]

:[187]
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1524_0"@7541
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
b [189]

:[188]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1529_0"@7542
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1534_0"@7544
conv.s.v
push.s "GroupLoosen"@7545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1540_0"@7546
conv.s.v
push.s "Throw"@7547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 28019186
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1552_0"@7548
conv.s.v
push.s "RedBuster"@7321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1553_0"@7549
conv.s.v
push.s "Red#Damage"@7323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 28019097
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 28019186
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1558_0"@7550
conv.s.v
push.s "DualHeal"@7325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1559_0"@7551
conv.s.v
push.s "Heals#everyone"@7327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 4
popaf.e
push.i 28019097
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 4
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1563_0"@7552
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1566_0"@7553
conv.s.v
push.s "Loosen"@7543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e

:[189]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 49
cmp.i.v EQ
bf [191]

:[190]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1564_0"@7554
conv.s.v
push.s "Spamton"@7555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 600
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 600
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e -50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1576_0"@7556
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1579_0"@7557
conv.s.v
push.s "Deal"@7558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1611_0"@7559
conv.s.v
push.s "HealDeal"@7560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1612_0"@7561
conv.s.v
push.s "DEAL &#HEAL 60"@7562
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[191]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 50
cmp.i.v EQ
bf [195]

:[192]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1591_0"@7563
conv.s.v
push.s "Spamton NEO"@7564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 4809
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 4809
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 13
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1614_0"@7565
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [194]

:[193]
push.i 28019174
setowner.e
pushi.e -27
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1643_0"@7566
conv.s.v
push.s "X-Slash"@7567
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1644_0"@7568
conv.s.v
push.s "Physical#damage"@7569
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 62
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1649_0"@7570
conv.s.v
push.s "FriedPipis"@7571
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1650_0"@7572
conv.s.v
push.s "Heals#120 HP"@7573
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 80
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
b [195]

:[194]
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1664_0"@7574
conv.s.v
push.s "Snap"@7575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019186
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1670_0"@7576
conv.s.v
push.s "SnapAll"@7577
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1682_0"@7578
conv.s.v
push.s "Snap"@7575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019193
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescsus
pushi.e 0
popaf.e
push.i 28019195
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostsus
pushi.e 0
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 1
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1687_0"@7579
conv.s.v
push.s "Supercharge"@7580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 1
popaf.e
push.i 28019193
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1685_0"@7581
conv.s.v
push.s "Charge#faster"@7582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescsus
pushi.e 1
popaf.e
push.i 28019195
setowner.e
pushi.e 80
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostsus
pushi.e 1
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1698_0"@7583
conv.s.v
push.s "Snap"@7575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019194
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 0
popaf.e
push.i 28019196
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostral
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 1
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1703_0"@7584
conv.s.v
push.s "FluffyGuard"@7585
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 1
popaf.e
push.i 28019194
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1701_0"@7586
conv.s.v
push.s "Orbiting#shield"@7587
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdescral
pushi.e 1
popaf.e
push.i 28019196
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcostral
pushi.e 1
popaf.e

:[195]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 51
cmp.i.v EQ
bf [205]

:[196]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1656_0"@7588
conv.s.v
push.s "GIGA Queen"@7589
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 4500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 4500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
push.d 7.5
conv.d.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [198]

:[197]
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1730_0"@7590
conv.s.v
push.s "FireMode"@7591
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1730_1"@7592
conv.s.v
push.s "Power#Attacks"@7593
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 0
popaf.e

:[198]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1731_0"@7594
conv.s.v
push.s "SwordMode"@7595
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1731_1"@7596
conv.s.v
push.s "Power up#each hit"@7597
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 0
popaf.e

:[200]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [202]

:[201]
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1732_0"@7598
conv.s.v
push.s "LaserMode"@7599
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1732_1"@7600
conv.s.v
push.s "Fast#Attacks"@7601
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 0
popaf.e

:[202]
pushi.e -5
pushi.e 220
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [204]

:[203]
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1733_0"@7602
conv.s.v
push.s "DuckMode"@7603
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1733_1"@7604
conv.s.v
push.s "Sucky#Attacks"@7605
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 0
popaf.e

:[204]
push.i 28019097
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1738_0"@7606
conv.s.v
push.s "TurboDodge"@7607
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1739_0"@7608
conv.s.v
push.s "Better#dodge"@7609
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019097
setowner.e
pushi.e 62
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1743_0"@7610
conv.s.v
push.s "SELF-FIX"@7611
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 28019189
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1744_0"@7612
conv.s.v
push.s "Heals#100HP"@7613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 28019097
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[205]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 52
cmp.i.v EQ
bf [207]

:[206]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1727_0"@7614
conv.s.v
push.s "Jigsaw Joe"@7615
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1276_0"@7470
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1742_0"@7616
conv.s.v
push.s "Shave"@7617
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 28019189
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 28019178
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimul
pushi.e 1
popaf.e

:[207]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 53
cmp.i.v EQ
bf [209]

:[208]
push.i 28019171
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1790_0"@7618
conv.s.v
push.s "Pipis"@7619
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 28019172
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 28019126
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 28019173
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 28019174
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 28019149
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 28019148
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 28019175
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 28018790
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 28019176
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 28019177
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 28019101
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1276_0"@7470
conv.s.v
push.s "Check"@7109
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 28019179
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactsus
pushi.e 0
popaf.e
push.i 28019180
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1816_0"@7620
conv.s.v
push.s "S-Action"@7338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnamesus
pushi.e 0
popaf.e
push.i 28019181
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
push.i 28019182
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canactral
pushi.e 0
popaf.e
push.i 28019183
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_1820_0"@7621
conv.s.v
push.s "R-Action"@7340
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actnameral
pushi.e 0
popaf.e
push.i 28019184
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e

:[209]
exit.i

:[210]
push.i [function]gml_Script_scr_monstersetup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monstersetup
popz.v

:[end]