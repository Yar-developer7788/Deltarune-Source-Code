.localvar 2 arguments

:[0]
b [146]

> gml_Script_scr_speaker (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self._speaker
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 6
pop.v.i global.typer

:[3]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 4
pop.v.i global.typer

:[5]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.v self._speaker
push.s "silent"@9278
cmp.s.v EQ
bf [7]

:[6]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i global.typer

:[10]
push.v self._speaker
push.s "silent"@9278
cmp.s.v EQ
bf [12]

:[11]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 36
pop.v.i global.typer

:[15]
push.v self._speaker
push.s "balloon"@6391
cmp.s.v EQ
bt [17]

:[16]
push.v self._speaker
push.s "enemy"@9279
cmp.s.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 50
pop.v.i global.typer

:[20]
push.v self._speaker
push.s "sans"@429
cmp.s.v EQ
bf [22]

:[21]
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc

:[22]
push.v self._speaker
push.s "undyne"@3641
cmp.s.v EQ
bt [24]

:[23]
push.v self._speaker
push.s "und"@9280
cmp.s.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 17
pop.v.i global.typer
pushi.e 9
pop.v.i global.fc

:[27]
push.v self._speaker
push.s "temmie"@9281
cmp.s.v EQ
bt [29]

:[28]
push.v self._speaker
push.s "tem"@9282
cmp.s.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
pushi.e 21
pop.v.i global.typer

:[32]
push.v self._speaker
push.s "jevil"@9283
cmp.s.v EQ
bf [34]

:[33]
pushi.e 35
pop.v.i global.typer

:[34]
push.v self._speaker
push.s "catti"@3970
cmp.s.v EQ
bf [36]

:[35]
pushi.e 13
pop.v.i global.fc

:[36]
push.v self._speaker
push.s "jockington"@5670
cmp.s.v EQ
bt [38]

:[37]
push.v self._speaker
push.s "joc"@9284
cmp.s.v EQ
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
pushi.e 14
pop.v.i global.fc

:[41]
push.v self._speaker
push.s "catty"@3930
cmp.s.v EQ
bt [43]

:[42]
push.v self._speaker
push.s "caddy"@9285
cmp.s.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 16
pop.v.i global.fc

:[46]
push.v self._speaker
push.s "bratty"@3864
cmp.s.v EQ
bt [48]

:[47]
push.v self._speaker
push.s "bra"@9286
cmp.s.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 17
pop.v.i global.fc

:[51]
push.v self._speaker
push.s "rouxls"@6221
cmp.s.v EQ
bt [53]

:[52]
push.v self._speaker
push.s "rou"@9287
cmp.s.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
pushi.e 18
pop.v.i global.fc

:[56]
push.v self._speaker
push.s "burgerpants"@3556
cmp.s.v EQ
bt [58]

:[57]
push.v self._speaker
push.s "bur"@9288
cmp.s.v EQ
b [59]

:[58]
push.e 1

:[59]
bf [61]

:[60]
pushi.e 19
pop.v.i global.fc

:[61]
push.v self._speaker
push.s "spamton"@5523
cmp.s.v EQ
bf [65]

:[62]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushi.e 66
pop.v.i global.typer
b [65]

:[64]
pushi.e 68
pop.v.i global.typer

:[65]
push.v self._speaker
push.s "sneo"@9289
cmp.s.v EQ
bf [67]

:[66]
pushi.e 67
pop.v.i global.typer

:[67]
push.v self._speaker
push.s "susie"@70
cmp.s.v EQ
bt [69]

:[68]
push.v self._speaker
push.s "sus"@7044
cmp.s.v EQ
b [70]

:[69]
push.e 1

:[70]
bf [74]

:[71]
pushi.e 1
pop.v.i global.fc
pushi.e 10
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [74]

:[72]
pushi.e 30
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
pushi.e 47
pop.v.i global.typer

:[74]
push.v self._speaker
push.s "ralsei"@72
cmp.s.v EQ
bt [76]

:[75]
push.v self._speaker
push.s "ral"@9290
cmp.s.v EQ
b [77]

:[76]
push.e 1

:[77]
bf [82]

:[78]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 45
pop.v.i global.typer

:[80]
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
pushi.e 6
pop.v.i global.typer

:[82]
push.v self._speaker
push.s "noelle"@74
cmp.s.v EQ
bt [84]

:[83]
push.v self._speaker
push.s "noe"@9291
cmp.s.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [91]

:[86]
pushi.e 3
pop.v.i global.fc
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
pushi.e 12
pop.v.i global.typer
b [89]

:[88]
pushi.e 56
pop.v.i global.typer

:[89]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 59
pop.v.i global.typer

:[91]
push.v self._speaker
push.s "toriel"@544
cmp.s.v EQ
bt [93]

:[92]
push.v self._speaker
push.s "tor"@9292
cmp.s.v EQ
b [94]

:[93]
push.e 1

:[94]
bf [96]

:[95]
pushi.e 4
pop.v.i global.fc
pushi.e 7
pop.v.i global.typer

:[96]
push.v self._speaker
push.s "asgore"@9293
cmp.s.v EQ
bt [98]

:[97]
push.v self._speaker
push.s "asg"@9294
cmp.s.v EQ
b [99]

:[98]
push.e 1

:[99]
bf [101]

:[100]
pushi.e 10
pop.v.i global.fc
pushi.e 18
pop.v.i global.typer

:[101]
push.v self._speaker
push.s "king"@3479
cmp.s.v EQ
bt [103]

:[102]
push.v self._speaker
push.s "kin"@9295
cmp.s.v EQ
b [104]

:[103]
push.e 1

:[104]
bf [110]

:[105]
pushi.e 20
pop.v.i global.fc
pushi.e 33
pop.v.i global.typer
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [108]

:[106]
pushglb.v global.plot
pushi.e 235
cmp.i.v LT
bf [108]

:[107]
pushi.e 36
pop.v.i global.typer

:[108]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
pushi.e 48
pop.v.i global.typer

:[110]
push.v self._speaker
push.s "rudy"@4146
cmp.s.v EQ
bt [112]

:[111]
push.v self._speaker
push.s "rud"@9296
cmp.s.v EQ
b [113]

:[112]
push.e 1

:[113]
bf [115]

:[114]
pushi.e 15
pop.v.i global.fc
pushi.e 55
pop.v.i global.typer

:[115]
push.v self._speaker
push.s "lancer"@4751
cmp.s.v EQ
bt [117]

:[116]
push.v self._speaker
push.s "lan"@9297
cmp.s.v EQ
b [118]

:[117]
push.e 1

:[118]
bf [121]

:[119]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e 46
pop.v.i global.typer

:[121]
push.v self._speaker
push.s "berdly"@4870
cmp.s.v EQ
bt [123]

:[122]
push.v self._speaker
push.s "ber"@9298
cmp.s.v EQ
b [124]

:[123]
push.e 1

:[124]
bf [130]

:[125]
pushi.e 12
pop.v.i global.fc
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
pushi.e 13
pop.v.i global.typer
b [128]

:[127]
pushi.e 57
pop.v.i global.typer

:[128]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 77
pop.v.i global.typer

:[130]
push.v self._speaker
push.s "alphys"@555
cmp.s.v EQ
bt [132]

:[131]
push.v self._speaker
push.s "alp"@9299
cmp.s.v EQ
b [133]

:[132]
push.e 1

:[133]
bf [135]

:[134]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer

:[135]
push.v self._speaker
push.s "queen"@3525
cmp.s.v EQ
bt [137]

:[136]
push.v self._speaker
push.s "que"@9300
cmp.s.v EQ
b [138]

:[137]
push.e 1

:[138]
bf [140]

:[139]
pushi.e 21
pop.v.i global.fc
pushi.e 58
pop.v.i global.typer

:[140]
push.v self._speaker
push.s "queen_2"@9301
cmp.s.v EQ
bt [142]

:[141]
push.v self._speaker
push.s "que_2"@9302
cmp.s.v EQ
b [143]

:[142]
push.e 1

:[143]
bf [145]

:[144]
pushi.e 21
pop.v.i global.fc
pushi.e 62
pop.v.i global.typer

:[145]
exit.i

:[146]
push.i [function]gml_Script_scr_speaker
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_speaker
popz.v

:[end]