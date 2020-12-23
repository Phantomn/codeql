import cpp
import semmle.code.cpp.dataflow.DataFlow
import semmle.code.cpp.dataflow.TaintTracking

class RawMessageFieldAccess extends FieldAccess{
    RawMessageFieldAccess(){
        this.getTarget().getName() = "pszRawMsg"
    }
}

from
    DataFlow::Node source, DataFlow::Node sink, RawMessageFieldAccess access, WhileStmt loop
where
    TaintTracking::localTaint(source, sink) and
    source.asExpr() = access and
    sink.asExpr() = loop.getCondition().getAChild*()
select
    "Loop iterates data from:", source, sink