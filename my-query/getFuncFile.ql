import cpp

class ReadFunctionCall extends FunctionCall {
    ReadFunctionCall(){
        this.getTarget().getName() = "pread" or
        this.getTarget().getName() = "read" or
        this.getTarget().getName() = "readv" or
        this.getTarget().getName() = "recvfrom" or
        this.getTarget().getName() = "recvmsg" or
        this.getTarget().getName() = "recv"
    }
}

from ReadFunctionCall call
select call.getFile() as Filename, call.getEnclosingFunction() as FuncName, call