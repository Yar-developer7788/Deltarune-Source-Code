.localvar 2 arguments

:[0]
b [44]

> gml_Script_scr_simtown_canbuild_check (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.YourAvailableTileTotal
pushi.e 0
pop.v.i self.RouxlsAvailableTileTotal
pushi.e 0
pop.v.i self.GameOver
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [39]

:[3]
pushi.e 0
pop.v.i self.j

:[4]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [38]

:[5]
push.i 48598557
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.j
conv.v.i
popaf.e
push.i 48598564
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileLand
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [33]

:[9]
push.v self.j
pushi.e 0
cmp.i.v GT
bf [17]

:[10]
pushi.e 0
pop.v.i self.k

:[11]
push.v self.k
pushi.e 3
cmp.i.v LT
bf [17]

:[12]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
push.v self.k
add.v.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.i 48598557
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.j
conv.v.i
popaf.e

:[14]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
push.v self.k
add.v.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.i 48598564
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
popaf.e

:[16]
push.v self.k
pushi.e 1
add.i.v
pop.v.v self.k
b [11]

:[17]
push.v self.j
pushi.e 5
cmp.i.v LT
bf [25]

:[18]
pushi.e 0
pop.v.i self.k

:[19]
push.v self.k
pushi.e 3
cmp.i.v LT
bf [25]

:[20]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
push.v self.k
add.v.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.i 48598557
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.j
conv.v.i
popaf.e

:[22]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
push.v self.k
add.v.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
pushi.e 1
add.i.v
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.i 48598564
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
popaf.e

:[24]
push.v self.k
pushi.e 1
add.i.v
pop.v.v self.k
b [19]

:[25]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.i 48598557
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.j
conv.v.i
popaf.e

:[27]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.i 48598564
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
popaf.e

:[29]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.i 48598557
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.j
conv.v.i
popaf.e

:[31]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.i 48598564
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
popaf.e

:[33]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileYouCanBuild
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.v self.YourAvailableTileTotal
pushi.e 1
add.i.v
pop.v.v self.YourAvailableTileTotal

:[35]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileRouxlsCanBuild
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.RouxlsAvailableTileTotal
pushi.e 1
add.i.v
pop.v.v self.RouxlsAvailableTileTotal

:[37]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [4]

:[38]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[39]
push.v self.YourAvailableTileTotal
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i self.GameOver

:[41]
push.v self.RouxlsAvailableTileTotal
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
pop.v.i self.GameOver

:[43]
exit.i

:[44]
push.i [function]gml_Script_scr_simtown_canbuild_check
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_simtown_canbuild_check
popz.v

:[end]