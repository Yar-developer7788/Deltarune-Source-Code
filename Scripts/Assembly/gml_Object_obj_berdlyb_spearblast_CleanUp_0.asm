.localvar 2 arguments

:[0]
push.v self.mypath
call.i path_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.mypath
call.i path_delete(argc=1)
popz.v

:[end]