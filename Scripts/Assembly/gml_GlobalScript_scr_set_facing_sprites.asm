.localvar 2 arguments

:[0]
b [81]

> gml_Script_scr_set_facing_sprites (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self._actorname
push.v arg.argument0
pop.v.v self.name
push.v self._actorname
call.i is_string(argc=1)
conv.v.b
bf [79]

:[2]
push.v self._actorname
push.s "kris"@68
cmp.s.v EQ
bf [7]

:[3]
push.s "kris"@68
pop.v.s self.name
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.s "krislight"@10160
pop.v.s self._actorname

:[5]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "krisdark"@10161
pop.v.s self._actorname

:[7]
push.v self._actorname
push.s "susie"@70
cmp.s.v EQ
bf [16]

:[8]
push.s "susie"@70
pop.v.s self.name
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
push.s "susielight"@10162
pop.v.s self._actorname
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [11]

:[10]
push.s "susielighteyes"@10163
pop.v.s self._actorname

:[11]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [16]

:[12]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.s "susiedark"@10164
pop.v.s self._actorname

:[14]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [16]

:[15]
push.s "susiedarkeyes"@10165
pop.v.s self._actorname

:[16]
push.v self._actorname
push.s "ralsei"@72
cmp.s.v EQ
bf [21]

:[17]
push.s "ralsei"@72
pop.v.s self.name
pushglb.v global.chapter
pushi.e 1
cmp.i.v LTE
bf [19]

:[18]
push.s "ralseihat"@10166
pop.v.s self._actorname

:[19]
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
bf [21]

:[20]
push.s "ralseinohat"@10167
pop.v.s self._actorname

:[21]
push.v self._actorname
push.s "noelle"@74
cmp.s.v EQ
bf [26]

:[22]
push.s "noelle"@74
pop.v.s self.name
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.s "noellelight"@10168
pop.v.s self._actorname

:[24]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.s "noelledark"@10169
pop.v.s self._actorname

:[26]
push.v self._actorname
push.s "berdly"@4870
cmp.s.v EQ
bf [31]

:[27]
push.s "berdly"@4870
pop.v.s self.name
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.s "berdlylight"@10170
pop.v.s self._actorname

:[29]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "berdlydark"@10171
pop.v.s self._actorname

:[31]
push.v self._actorname
push.s "krislight"@10160
cmp.s.v EQ
bf [33]

:[32]
pushi.e 663
pop.v.i self.usprite
pushi.e 658
pop.v.i self.rsprite
pushi.e 661
pop.v.i self.dsprite
pushi.e 660
pop.v.i self.lsprite

:[33]
push.v self._actorname
push.s "krisdark"@10161
cmp.s.v EQ
bf [35]

:[34]
pushi.e 654
pop.v.i self.usprite
pushi.e 653
pop.v.i self.rsprite
pushi.e 651
pop.v.i self.dsprite
pushi.e 655
pop.v.i self.lsprite

:[35]
push.v self._actorname
push.s "susielight"@10162
cmp.s.v EQ
bf [37]

:[36]
pushi.e 980
pop.v.i self.usprite
pushi.e 977
pop.v.i self.rsprite
pushi.e 981
pop.v.i self.dsprite
pushi.e 975
pop.v.i self.lsprite

:[37]
push.v self._actorname
push.s "susielighteyes"@10163
cmp.s.v EQ
bf [39]

:[38]
pushi.e 854
pop.v.i self.usprite
pushi.e 852
pop.v.i self.rsprite
pushi.e 848
pop.v.i self.dsprite
pushi.e 850
pop.v.i self.lsprite

:[39]
push.v self._actorname
push.s "susiedark"@10164
cmp.s.v EQ
bf [41]

:[40]
pushi.e 993
pop.v.i self.usprite
pushi.e 986
pop.v.i self.rsprite
pushi.e 990
pop.v.i self.dsprite
pushi.e 983
pop.v.i self.lsprite
push.i 28478219
setowner.e
pushi.e 997
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.specialsprite
pushi.e 996
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.specialsprite

:[41]
push.v self._actorname
push.s "susiedarkeyes"@10165
cmp.s.v EQ
bf [43]

:[42]
pushi.e 826
pop.v.i self.usprite
pushi.e 824
pop.v.i self.rsprite
pushi.e 820
pop.v.i self.dsprite
pushi.e 822
pop.v.i self.lsprite
pushi.e 997
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.specialsprite
pushi.e 996
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.specialsprite

:[43]
push.v self._actorname
push.s "susieunhappy"@10172
cmp.s.v EQ
bf [48]

:[44]
push.s "susie"@70
pop.v.s self.name
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 826
pop.v.i self.usprite
pushi.e 825
pop.v.i self.rsprite
pushi.e 821
pop.v.i self.dsprite
pushi.e 823
pop.v.i self.lsprite
b [47]

:[46]
pushi.e 854
pop.v.i self.usprite
pushi.e 853
pop.v.i self.rsprite
pushi.e 849
pop.v.i self.dsprite
pushi.e 851
pop.v.i self.lsprite

:[47]
pushi.e 997
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.specialsprite
pushi.e 996
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.specialsprite

:[48]
push.v self._actorname
push.s "noellelight"@10168
cmp.s.v EQ
bf [50]

:[49]
pushi.e 752
pop.v.i self.usprite
pushi.e 751
pop.v.i self.rsprite
pushi.e 749
pop.v.i self.dsprite
pushi.e 750
pop.v.i self.lsprite

:[50]
push.v self._actorname
push.s "noelledark"@10169
cmp.s.v EQ
bf [52]

:[51]
pushi.e 728
pop.v.i self.usprite
pushi.e 719
pop.v.i self.lsprite
pushi.e 724
pop.v.i self.rsprite
pushi.e 718
pop.v.i self.dsprite

:[52]
push.v self._actorname
push.s "berdlylight"@10170
cmp.s.v EQ
bf [54]

:[53]
pushi.e 707
pop.v.i self.usprite
pushi.e 706
pop.v.i self.rsprite
pushi.e 704
pop.v.i self.dsprite
pushi.e 705
pop.v.i self.lsprite

:[54]
push.v self._actorname
push.s "berdlydark"@10171
cmp.s.v EQ
bf [56]

:[55]
pushi.e 676
pop.v.i self.usprite
pushi.e 670
pop.v.i self.lsprite
pushi.e 674
pop.v.i self.rsprite
pushi.e 668
pop.v.i self.dsprite

:[56]
push.v self._actorname
push.s "berdlyunhappy"@10173
cmp.s.v EQ
bf [58]

:[57]
pushi.e 676
pop.v.i self.usprite
pushi.e 671
pop.v.i self.lsprite
pushi.e 675
pop.v.i self.rsprite
pushi.e 669
pop.v.i self.dsprite

:[58]
push.v self._actorname
push.s "ralseihat"@10166
cmp.s.v EQ
bf [60]

:[59]
push.s "ralsei"@72
pop.v.s self.name
pushi.e 1012
pop.v.i self.usprite
pushi.e 1015
pop.v.i self.rsprite
pushi.e 1010
pop.v.i self.dsprite
pushi.e 1013
pop.v.i self.lsprite
pushi.e 1497
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.specialsprite

:[60]
push.v self._actorname
push.s "ralseinohat"@10167
cmp.s.v EQ
bf [62]

:[61]
push.s "ralsei"@72
pop.v.s self.name
pushi.e 799
pop.v.i self.usprite
pushi.e 795
pop.v.i self.rsprite
pushi.e 785
pop.v.i self.dsprite
pushi.e 791
pop.v.i self.lsprite

:[62]
push.v self._actorname
push.s "ralseiunhappy"@10174
cmp.s.v EQ
bf [64]

:[63]
push.s "ralsei"@72
pop.v.s self.name
pushi.e 799
pop.v.i self.usprite
pushi.e 796
pop.v.i self.rsprite
pushi.e 786
pop.v.i self.dsprite
pushi.e 792
pop.v.i self.lsprite

:[64]
push.v self._actorname
push.s "lancer"@4751
cmp.s.v EQ
bf [66]

:[65]
push.s "lancer"@4751
pop.v.s self.name
pushi.e 1291
pop.v.i self.usprite
pushi.e 1294
pop.v.i self.rsprite
pushi.e 1286
pop.v.i self.dsprite
pushi.e 1298
pop.v.i self.lsprite

:[66]
push.v self._actorname
push.s "toriel"@544
cmp.s.v EQ
bf [68]

:[67]
push.s "toriel"@544
pop.v.s self.name
pushi.e 892
pop.v.i self.usprite
pushi.e 895
pop.v.i self.rsprite
pushi.e 901
pop.v.i self.dsprite
pushi.e 898
pop.v.i self.lsprite

:[68]
push.v self._actorname
push.s "alphys"@555
cmp.s.v EQ
bf [70]

:[69]
push.s "alphys"@555
pop.v.s self.name
pushi.e 920
pop.v.i self.usprite
pushi.e 923
pop.v.i self.rsprite
pushi.e 919
pop.v.i self.dsprite
pushi.e 921
pop.v.i self.lsprite

:[70]
push.v self._actorname
push.s "car"@10175
cmp.s.v EQ
bf [72]

:[71]
pushi.e 887
pop.v.i self.usprite
pushi.e 886
pop.v.i self.dsprite
pushi.e 885
pop.v.i self.lsprite
pushi.e 884
pop.v.i self.rsprite

:[72]
push.v self._actorname
push.s "queen"@3525
cmp.s.v EQ
bf [74]

:[73]
push.s "queen"@3525
pop.v.s self.name
pushi.e 770
pop.v.i self.usprite
pushi.e 767
pop.v.i self.dsprite
pushi.e 768
pop.v.i self.lsprite
pushi.e 769
pop.v.i self.rsprite

:[74]
push.v self._actorname
push.s "queenchair"@10176
cmp.s.v EQ
bf [76]

:[75]
push.s "queen"@3525
pop.v.s self.name
pushi.e 762
pop.v.i self.usprite
pushi.e 762
pop.v.i self.dsprite
pushi.e 762
pop.v.i self.lsprite
pushi.e 762
pop.v.i self.rsprite
pushi.e 761
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.specialsprite
pushi.e 760
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.specialsprite

:[76]
push.v self._actorname
push.s "asgore"@9293
cmp.s.v EQ
bf [78]

:[77]
push.s "asgore"@9293
pop.v.s self.name
pushi.e 1064
pop.v.i self.usprite
pushi.e 1059
pop.v.i self.dsprite
pushi.e 1061
pop.v.i self.lsprite
pushi.e 1062
pop.v.i self.rsprite

:[78]
b [80]

:[79]
push.v self._actorname
pop.v.v self.usprite
push.v self._actorname
pop.v.v self.dsprite
push.v self._actorname
pop.v.v self.rsprite
push.v self._actorname
pop.v.v self.lsprite
push.v self._actorname
pop.v.v self.sprite_index

:[80]
push.i 28478219
setowner.e
push.v self.dsprite
pushi.e -1
pushi.e 0
pop.v.v [array]self.specialsprite
push.v self.rsprite
pushi.e -1
pushi.e 1
pop.v.v [array]self.specialsprite
push.v self.usprite
pushi.e -1
pushi.e 2
pop.v.v [array]self.specialsprite
push.v self.lsprite
pushi.e -1
pushi.e 3
pop.v.v [array]self.specialsprite
push.v self.dsprite
pop.v.v self.dtsprite
push.v self.rsprite
pop.v.v self.rtsprite
push.v self.usprite
pop.v.v self.utsprite
push.v self.lsprite
pop.v.v self.ltsprite
exit.i

:[81]
push.i [function]gml_Script_scr_set_facing_sprites
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_set_facing_sprites
popz.v

:[end]