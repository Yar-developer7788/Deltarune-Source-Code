.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
pop.v.v self.y
call.i gml_Script_camerax(argc=0)
pushi.e 140
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.i 174118
setowner.e
push.v self.i
pushi.e 2
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterSiner
push.i 174119
setowner.e
push.d 0.25
conv.d.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterImageSpeed
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterY
push.i 174122
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterXscale
push.i 174123
setowner.e
pushi.e 547
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterSprite
push.i 174124
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterVisible
push.i 174125
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterImageIndex
push.i 174126
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterRecruitID
push.i 174127
setowner.e
pushi.e 1
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterCarVisible
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 174123
setowner.e
pushi.e 299
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.coasterSprite
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.coasterY
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterY
push.i 174119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.coasterImageSpeed
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterY
push.i 174119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.coasterImageSpeed
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterY
push.i 174119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.coasterImageSpeed
push.i 174123
setowner.e
pushi.e 1775
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.coasterY
push.i 174123
setowner.e
pushi.e 1757
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.coasterSprite
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.coasterY
push.i 174123
setowner.e
pushi.e 1773
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.coasterY
push.i 174123
setowner.e
pushi.e 208
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.coasterSprite
push.i 174120
setowner.e
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.coasterY
push.i 174119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.coasterImageSpeed
push.i 174125
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.coasterImageIndex
push.i 174123
setowner.e
pushi.e 1630
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1644
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 31
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1669
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 32
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1710
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 33
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1746
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e -15
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e -15
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 34
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 288
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e -20
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1283
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 14
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 2082
conv.i.v
pushi.e -1
pushi.e 15
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 15
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 15
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 15
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 15
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 1271
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 42
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.coasterRecruitID
push.i 174123
setowner.e
pushi.e 2087
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.coasterY
push.i 174126
setowner.e
pushi.e 44
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.coasterRecruitID
pushi.e 500
conv.i.v
pushi.e -1
pushi.e 18
pop.v.v [array]self.coasterRecruitID
pushi.e 900
conv.i.v
pushi.e -1
pushi.e 19
pop.v.v [array]self.coasterRecruitID
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 174123
setowner.e
pushi.e 296
conv.i.v
pushi.e -1
pushi.e 18
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 18
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 18
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 18
pop.v.v [array]self.coasterY

:[5]
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 174123
setowner.e
pushi.e 293
conv.i.v
pushi.e -1
pushi.e 19
pop.v.v [array]self.coasterSprite
push.i 174122
setowner.e
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 19
pop.v.v [array]self.coasterXscale
push.i 174120
setowner.e
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 19
pop.v.v [array]self.coasterX
push.i 174121
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 19
pop.v.v [array]self.coasterY

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [end]

:[9]
push.i 170127
setowner.e
pushi.e 65
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_width(argc=1)
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterXscale
pushi.e 2
cmp.i.v NEQ
bf [11]

:[10]
pushi.e 65
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_width(argc=1)
add.v.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dx

:[11]
push.i 172618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
call.i sprite_get_height(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 44
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterSprite
pushi.e 547
cmp.i.v EQ
bf [13]

:[12]
push.i 174124
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterVisible

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterRecruitID
pushi.e 0
cmp.i.v GT
bf [24]

:[14]
pushi.e -5
pushi.e 600
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterRecruitID
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
b [17]

:[16]
pushi.e 0
conv.i.v

:[17]
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterVisible
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterRecruitID
pushi.e 500
cmp.i.v EQ
bf [19]

:[18]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterVisible

:[22]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.coasterRecruitID
pushi.e 900
cmp.i.v EQ
bf [24]

:[23]
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterVisible
push.i 174127
setowner.e
pushi.e -5
pushi.e 254
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.coasterCarVisible

:[24]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [8]

:[end]