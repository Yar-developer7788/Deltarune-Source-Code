.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
push.s " "@353
pop.v.s self.lyric
pushi.e 1
pop.v.i self.textalpha
pushi.e 1
pop.v.i self.creditalpha
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
push.i 165574
setowner.e
push.s " "@353
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.line
push.i 169005
setowner.e
push.i 16777215
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.linecolor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]