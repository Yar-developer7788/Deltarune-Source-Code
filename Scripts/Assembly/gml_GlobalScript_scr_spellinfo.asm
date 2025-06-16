.localvar 2 arguments

:[0]
b [39]

> gml_Script_scr_spellinfo (locals=0, argc=1)
:[1]
pushi.e -1
pop.v.i self.cost
pushi.e 1
pop.v.i self.spelltarget
push.s "scr_spellinfo_slash_scr_spellinfo_gml_3_0"@7818
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s " "@353
pop.v.s self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_5_0"@7819
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_6_0"@7820
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spellanim
pushi.e 0
pop.v.i self.spellusable
push.s " "@353
pop.v.s self.spelltext
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [14]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [15]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [17]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [18]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [21]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [22]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [23]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [26]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [27]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [30]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [37]

:[13]
b [38]

:[14]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_14_0"@7822
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s " "@353
pop.v.s self.spellnameb
pushi.e 0
pop.v.i self.spelltarget
pushi.e -1
pop.v.i self.cost
push.s "scr_spellinfo_slash_scr_spellinfo_gml_18_0"@7823
conv.s.v
push.s "None"@7824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
b [38]

:[15]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_21_0"@7825
conv.s.v
push.s "Rude Sword"@7826
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_22_0"@7827
conv.s.v
push.s "RudeSword"@7828
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_23_0"@7829
conv.s.v
push.s "Rude#Damage#"@7830
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_24_0"@7831
conv.s.v
push.s "Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic."@7832
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[16]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_31_0"@7833
conv.s.v
push.s "Heal Prayer"@7834
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_32_0"@7835
conv.s.v
push.s "Heal Prayer"@7834
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_33_0"@7836
conv.s.v
push.s "Heal#Ally"@7837
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_34_0"@7838
conv.s.v
push.s "Heavenly light restores a little HP to#one party member. Depends on Magic."@7839
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 1
pop.v.i self.spelltarget
pushi.e 80
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.spellusable
b [38]

:[17]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_42_0"@7840
conv.s.v
push.s "Pacify"@7841
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_43_0"@7842
conv.s.v
push.s "Pacify"@7841
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_44_0"@7843
conv.s.v
push.s "Spare#TIRED foe"@7844
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_45_0"@7845
conv.s.v
push.s "SPARE a tired enemy by putting them to sleep."@7846
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 40
pop.v.i self.cost
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.spellusable
b [38]

:[18]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_52_0"@7847
conv.s.v
push.s "Rude Buster"@7848
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_53_0"@7849
conv.s.v
push.s "Rude Buster"@7848
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_54_0"@7850
conv.s.v
push.s "Rude#Damage#"@7830
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_55_0"@7851
conv.s.v
push.s "Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic."@7832
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 125
pop.v.i self.cost
pushi.e -5
pushi.e 2
push.v [array]self.charweapon
pushi.e 7
cmp.i.v EQ
bf [20]

:[19]
pushi.e 100
pop.v.i self.cost

:[20]
pushi.e 0
pop.v.i self.spellusable
b [38]

:[21]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_64_0"@7852
conv.s.v
push.s "Red Buster"@7853
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_65_0"@7854
conv.s.v
push.s "Red Buster"@7853
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_66_0"@7855
conv.s.v
push.s "Red#Damage#"@7856
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_67_0"@7857
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[22]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_75_0"@7858
conv.s.v
push.s "Dual Heal"@7859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_76_0"@7860
conv.s.v
push.s "Dual Heal"@7859
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_77_0"@7861
conv.s.v
push.s "Heal All#30 HP"@7862
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_78_0"@7863
conv.s.v
push.s " "@353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[23]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_86_0"@7864
conv.s.v
push.s "ACT"@7865
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_87_0"@7866
conv.s.v
push.s "ACT"@7865
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_88_0"@7867
conv.s.v
push.s "Use#action"@7868
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_89_0"@7869
conv.s.v
push.s "Do all sorts of things.#It isn't magic."@7870
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_93_0"@7871
conv.s.v
push.s "You can do many things.#Don't confuse it with magic."@7872
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc

:[25]
pushi.e 0
pop.v.i self.spelltarget
pushi.e 0
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[26]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_96_0"@7873
conv.s.v
push.s "SleepMist"@7874
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_97_0"@7875
conv.s.v
push.s "Sleep Mist"@7876
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_98_0"@7877
conv.s.v
push.s "Spare#TIRED foes"@7878
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_99_0"@7879
conv.s.v
push.s "A cold mist sweeps through,#sparing all TIRED enemies."@7880
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 80
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[27]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_107_0"@7881
conv.s.v
push.s "IceShock"@7882
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_108_0"@7883
conv.s.v
push.s "IceShock"@7882
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_109_0"@7884
conv.s.v
push.s "Damage#w/ ICE"@7885
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_110_0"@7886
conv.s.v
push.s "Deals magical ICE damage to#one enemy."@7887
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 2
pop.v.i self.spelltarget
pushi.e 40
pop.v.i self.cost
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
bf [29]

:[28]
push.v self.cost
push.d 0.5
mul.d.v
pop.v.v self.cost

:[29]
pushi.e 0
pop.v.i self.spellusable
b [38]

:[30]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_121_0"@7888
conv.s.v
push.s "SnowGrave"@7889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_122_0"@7890
conv.s.v
push.s "SnowGrave"@7889
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_123_0"@7891
conv.s.v
push.s "Fatal"@7892
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_124_0"@7893
conv.s.v
push.s "Deals the fatal damage to#all of the enemies."@7894
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 0
pop.v.i self.spelltarget
pushi.e 485
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[31]
pushi.e -5
pushi.e 924
push.v [array]self.flag
pushi.e 4
cmp.i.v LT
bf [33]

:[32]
pushi.e 3
pop.v.i self.spelltarget
b [34]

:[33]
pushi.e 1
pop.v.i self.spellanim

:[34]
pushglb.v global.maxtension
pushi.e 2
mul.i.v
pop.v.v self.cost
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
bf [36]

:[35]
push.v self.cost
push.d 0.5
mul.d.v
pop.v.v self.cost

:[36]
pushi.e 0
pop.v.i self.spellusable
b [38]

:[37]
push.s "scr_spellinfo_slash_scr_spellinfo_gml_147_0"@7895
conv.s.v
push.s "UltimatHeal"@7896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellname
push.s "scr_spellinfo_slash_scr_spellinfo_gml_148_0"@7897
conv.s.v
push.s "UltimatHeal"@7896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spellnameb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_149_0"@7898
conv.s.v
push.s "Best#healing"@7899
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldescb
push.s "scr_spellinfo_slash_scr_spellinfo_gml_150_0"@7900
conv.s.v
push.s "Heals 1 party member to the#best of Susie's ability."@7901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.spelldesc
pushi.e 1
pop.v.i self.spelltarget
pushi.e 250
pop.v.i self.cost
pushi.e 0
pop.v.i self.spellusable
b [38]

:[38]
popz.v
exit.i

:[39]
push.i [function]gml_Script_scr_spellinfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellinfo
popz.v

:[end]