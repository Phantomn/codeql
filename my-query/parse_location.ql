import cpp

class ParseFunction extends Function {
    ParseFunction(){
        this.getName() = "parse" or
        this.getName() = "parse2"
    }
}

from ParseFunction parse
select parse.getFile() as File, parse