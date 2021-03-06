import cpp

class RawMessageFieldAccess extends FieldAccess {
    RawMessageFieldAccess(){
        this.getTarget().getName() = "pszRawMsg"
    }
}

class RawMsgAccessFunction extends Function {
    RawMsgAccessFunction(){
        any(RawMessageFieldAccess access).getEnclosingFunction() = this
        or
        exists(
            FunctionCall call | 
            call.getEnclosingFunction() = this and (
                call.getTarget().getName() = "getMSG" or
                call.getTarget().getName() = "getRawMsg"
            )
        )
    }
}

from RawMsgAccessFunction access
select access.getFile() as File, access