.localvar 2 arguments

:[0]
push.v self.MyTurn
pushi.e 1
cmp.i.v EQ
bf [22]

:[1]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [4]

:[2]
push.v self.CursorX
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.CursorX
pushi.e 1
sub.i.v
pop.v.v self.CursorX

:[4]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [7]

:[5]
push.v self.CursorX
pushi.e 15
cmp.i.v LT
bf [7]

:[6]
push.v self.CursorX
pushi.e 1
add.i.v
pop.v.v self.CursorX

:[7]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [10]

:[8]
push.v self.CursorY
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.CursorY
pushi.e 1
sub.i.v
pop.v.v self.CursorY

:[10]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [13]

:[11]
push.v self.CursorY
pushi.e 5
cmp.i.v LT
bf [13]

:[12]
push.v self.CursorY
pushi.e 1
add.i.v
pop.v.v self.CursorY

:[13]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [22]

:[14]
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypushaf]self.TileYouCanBuild
push.v self.CursorY
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [22]

:[15]
push.v self.HouseCount
push.e 1
add.i.v
pop.v.v self.HouseCount
push.i 167453
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.CursorY
conv.v.i
popaf.e
push.i 167462
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.CursorX
conv.v.i
push.v [arraypopaf]self.TileHasHouse
push.v self.CursorY
conv.v.i
popaf.e
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i 729.hasplayerplacedhouses
pushi.e 21
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushi.e 757
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.CursorY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.base_xpos
push.v self.CursorX
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 757
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.CursorY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
push.v self.base_xpos
push.v self.CursorX
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 255
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.CursorY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 20
add.i.v
push.v self.base_xpos
push.v self.CursorX
pushi.e 40
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i gml_Script_scr_fx_housesquare(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[17]
popz.i
call.i gml_Script_scr_simtown_canbuild_check(argc=0)
popz.v
push.v self.GameOver
pushi.e 1
cmp.i.v EQ
bt [19]

:[18]
push.v self.HouseCount
push.v self.HouseCountMax
cmp.v.v GTE
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i self.MyTurn
pushi.e 1
pop.v.i self.TurnCon
pushi.e 0
pop.v.i self.HouseCount

:[22]
push.v self.TurnCon
pushi.e 1
cmp.i.v EQ
bf [32]

:[23]
call.i gml_Script_scr_simtown_canbuild_check(argc=0)
popz.v
push.v self.GameOver
pushi.e 1
cmp.i.v EQ
bf [29]

:[24]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 729
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 0
pop.v.i global.mnfight
pushi.e 3
pop.v.i global.myfight
pushi.e 1
pop.v.i 729.actcon
pushi.e -1
pop.v.i 729.acting
pushi.e 1
pop.v.i 729.endbattle
push.v self.actresult
pop.v.v 729.actresult

:[26]
pushi.e 5
pop.v.i self.TurnCon
pushi.e 0
pop.v.i self.MyTurn
pushi.e 729
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.actcon

:[28]
popenv [27]
b [32]

:[29]
pushi.e 729
pushenv [31]

:[30]
push.s "obj_rouxls_simtown_slash_Step_0_gml_93_0"@26877
conv.s.v
push.s "* Finished!/%"@26878
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[31]
popenv [30]
pushi.e 5
pop.v.i self.TurnCon
pushi.e 0
pop.v.i self.MyTurn

:[32]
push.v self.TurnCon
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
call.i gml_Script_scr_simtown_canbuild_check(argc=0)
popz.v
pushi.e 0
pop.v.i self.RouxlsWaitTimer
pushi.e 0
pop.v.i self.RouxlsHousesBuilt
pushi.e 3
pop.v.i self.TurnCon

:[34]
push.v self.TurnCon
pushi.e 3
cmp.i.v EQ
bf [51]

:[35]
push.v self.RouxlsWaitTimer
pushi.e 1
add.i.v
pop.v.v self.RouxlsWaitTimer
push.v self.RouxlsWaitTimer
pushi.e 10
cmp.i.v GTE
bf [51]

:[36]
push.v self.RouxlsHousesBuilt
push.v self.RouxlsHouseMax
push.v self.RalseiDistract
sub.v.v
cmp.v.v LT
bf [38]

:[37]
push.v self.GameOver
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [50]

:[40]
pushi.e 0
pop.v.i self.found

:[41]
push.v self.found
pushi.e 0
cmp.i.v EQ
bf [47]

:[42]
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.RandomHouseX
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.RandomHouseY
push.v self.RandomHouseY
pushi.e 6
cmp.i.v EQ
bf [44]

:[43]
pushi.e 5
pop.v.i self.RandomHouseY

:[44]
pushi.e -1
push.v self.RandomHouseX
conv.v.i
push.v [arraypushaf]self.TileRouxlsCanBuild
push.v self.RandomHouseY
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1
pop.v.i self.found

:[46]
b [41]

:[47]
push.i 167453
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.RandomHouseX
conv.v.i
push.v [arraypopaf]self.TileYouCanBuild
push.v self.RandomHouseY
conv.v.i
popaf.e
push.i 167462
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.RandomHouseX
conv.v.i
push.v [arraypopaf]self.TileHasHouse
push.v self.RandomHouseY
conv.v.i
popaf.e
call.i gml_Script_scr_simtown_canbuild_check(argc=0)
popz.v
push.v self.RouxlsHousesBuilt
pushi.e 1
add.i.v
pop.v.v self.RouxlsHousesBuilt
pushi.e 0
pop.v.i self.RouxlsWaitTimer
pushi.e 21
dup.i 0
push.i 0
cmp.i.i LTE
bt [49]

:[48]
pushi.e 757
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.RandomHouseY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
push.v self.RandomHouseX
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 757
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.RandomHouseY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_camerax(argc=0)
push.v self.RandomHouseX
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
conv.i.v
call.i irandom(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 16711680
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.RandomHouseY
pushi.e 1
add.i.v
pushi.e 40
mul.i.v
add.v.v
pushi.e 40
add.i.v
pushi.e 20
add.i.v
call.i gml_Script_camerax(argc=0)
push.v self.RandomHouseX
pushi.e 40
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i gml_Script_scr_fx_housesquare(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [48]

:[49]
popz.i
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [51]

:[50]
pushi.e 4
pop.v.i self.TurnCon

:[51]
push.v self.TurnCon
pushi.e 4
cmp.i.v EQ
bf [69]

:[52]
push.v self.GameOver
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.TurnCon
b [69]

:[54]
pushi.e 1
pop.v.i 729.talked
pushi.e 5
pop.v.i self.TurnCon
pushi.e 0
pop.v.i self.Myturn
push.v self.RouxlsTurn
push.e 1
add.i.v
pop.v.v self.RouxlsTurn
pushi.e 0
pop.v.i self.HouseTensionCost
push.v self.RalseiDistract
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.RalseiDistractTwice

:[56]
push.v self.RalseiDistract
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.v self.RalseiDistractTwice
pushi.e 1
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.i self.RalseiDistractTwice

:[61]
pushi.e 0
pop.v.i self.RalseiDistract
push.v self.RouxlsTurn
pushi.e 2
cmp.i.v GT
bf [63]

:[62]
pushi.e 3
pop.v.i self.RouxlsHouseMax

:[63]
push.v self.RouxlsTurn
pushi.e 5
cmp.i.v GT
bf [65]

:[64]
pushi.e 4
pop.v.i self.RouxlsHouseMax

:[65]
pushi.e 729
pushenv [68]

:[66]
push.v self.buildedblockstimer
pushi.e 50
cmp.i.v LT
bf [68]

:[67]
pushi.e 50
pop.v.i self.buildedblockstimer

:[68]
popenv [66]

:[69]
push.v self.CursorX
pushi.e 40
mul.i.v
pop.v.v self.CursorIdealVisualX
push.v self.CursorY
pushi.e 40
mul.i.v
pushi.e 80
add.i.v
pop.v.v self.CursorIdealVisualY
push.v self.CursorVisualX
push.v self.CursorIdealVisualX
cmp.v.v GT
bf [71]

:[70]
push.v self.CursorVisualX
pushi.e 20
sub.i.v
pop.v.v self.CursorVisualX

:[71]
push.v self.CursorVisualX
push.v self.CursorIdealVisualX
cmp.v.v LT
bf [73]

:[72]
push.v self.CursorVisualX
pushi.e 20
add.i.v
pop.v.v self.CursorVisualX

:[73]
push.v self.CursorVisualY
push.v self.CursorIdealVisualY
cmp.v.v GT
bf [75]

:[74]
push.v self.CursorVisualY
pushi.e 20
sub.i.v
pop.v.v self.CursorVisualY

:[75]
push.v self.CursorVisualY
push.v self.CursorIdealVisualY
cmp.v.v LT
bf [end]

:[76]
push.v self.CursorVisualY
pushi.e 20
add.i.v
pop.v.v self.CursorVisualY

:[end]