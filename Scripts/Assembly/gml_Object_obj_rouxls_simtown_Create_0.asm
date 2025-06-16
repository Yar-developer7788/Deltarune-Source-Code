.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
b [3]

:[2]
call.i gml_Script_camerax(argc=0)

:[3]
pop.v.v self.base_xpos
pushbltn.v builtin.room
pushi.e 202
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
b [6]

:[5]
call.i gml_Script_cameray(argc=0)

:[6]
pop.v.v self.base_ypos
pushi.e 0
pop.v.i self.maker
pushbltn.v builtin.room
pushi.e 202
cmp.i.v NEQ
bf [8]

:[7]
push.v 729.depth
pushi.e 9997
add.i.v
pop.v.v self.depth
b [9]

:[8]
push.i 840000
pop.v.i self.depth

:[9]
pushi.e 150
pop.v.i self.AvailableTension
pushi.e 0
pop.v.i self.HouseTensionCost
pushi.e 0
pop.v.i self.HouseCount
pushi.e 1
pop.v.i self.HouseCountMax
pushi.e 0
pop.v.i self.RouxlsTurn
pushi.e 2
pop.v.i self.RouxlsHouseMax
pushi.e 0
pop.v.i self.RalseiDistract
pushi.e 0
pop.v.i self.RalseiDistractTwice
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [17]

:[11]
pushi.e 0
pop.v.i self.j

:[12]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [16]

:[13]
push.i 167461
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileLand
push.v self.j
conv.v.i
popaf.e
push.i 167462
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileHasHouse
push.v self.j
conv.v.i
popaf.e
push.i 167453
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
push.i 167460
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
push.i 171878
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tileHouseY
push.v self.j
conv.v.i
popaf.e
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 755
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 100
add.i.v
push.v self.base_xpos
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 20
add.i.v
call.i collision_point(argc=5)
conv.v.b
bf [15]

:[14]
push.i 167461
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.TileLand
push.v self.j
conv.v.i
popaf.e

:[15]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [12]

:[16]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[17]
push.i 167462
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.TileHasHouse
pushi.e 0
popaf.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 11
push.v [arraypopaf]self.TileHasHouse
pushi.e 5
popaf.e
pushi.e 0
pop.v.i self.CursorX
pushi.e 0
pop.v.i self.CursorY
pushi.e 0
pop.v.i self.CursorVisualX
pushi.e 0
pop.v.i self.CursorVisualY
pushi.e 0
pop.v.i self.YourAvailableTileTotal
pushi.e 0
pop.v.i self.RouxlsAvailableTileTotal
pushi.e 0
pop.v.i self.GameOver
pushi.e -1
pop.v.i self.MyTurn
pushi.e 0
pop.v.i self.TurnCon
push.s "* Build a house!"@26873
pop.v.s self.StatusMessage
call.i gml_Script_scr_simtown_canbuild_check(argc=0)
popz.v
call.i gml_Script_scr_simtown_reset_cursor(argc=0)
popz.v
pushi.e 0
pop.v.i self.siner
push.s "tie"@26711
pop.v.s self.actresult
pushi.e 2078
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.specialCursor
pushi.e -100
push.v self.specialCursor
pushi.e -9
pop.v.i [stacktop]self.depth
push.d 0.2
push.v self.specialCursor
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.flyaway

:[end]