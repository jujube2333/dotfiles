Config 
    { font = "Ricty-10:bold"
    , bgColor = "black"
    , fgColor = "grey"
    , position = Top
    , lowerOnStart = False
    , commands = [
                 Run Com "id" ["-un"] "uname" 36000
                 , Run Com "date"["+'%x(%a) %H:%M'"] "date" 10
                 , Run StdinReader
                 ]
    , sepChar = "%"
    , alignSep = "||"
    , template = "%StdinReader% || <fc=#ee9a00>%date%<\fc> %uname%"
    }
