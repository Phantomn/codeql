import cpp
import semmle.code.cpp.dataflow.TaintTracking

from Variable source_var, VariableAccess source_access, Expr sink
where
    // Find all the variable accesses that affect any expression in our code
    TaintTracking::localExprTaint(source_access,sink)
    and
    // Linking the access to the variable itself
    source_access.getTarget() = source_var
select source_var, source_var.getLocation() as source_location, sink, sink.getLocation() as sink_location