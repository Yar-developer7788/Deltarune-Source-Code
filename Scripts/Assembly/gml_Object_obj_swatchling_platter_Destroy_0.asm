.localvar 2 arguments

:[0]
push.v self.platterPlate
call.i instance_destroy(argc=1)
popz.v
push.v self.platterLid
call.i instance_destroy(argc=1)
popz.v

:[end]