module Route exposing (Route(..), parse, parser)

import Url
import Url.Parser as Parser exposing ((</>), (<?>), int, map, s, string, top)


type Route
    = Top
    | Vision
    | Team
    | Works
    | Company


parse : Url.Url -> Maybe Route
parse url =
    Parser.parse parser url


parser : Parser.Parser (Route -> a) a
parser =
    Parser.oneOf
        [ s "soranome.com"
            </> Parser.oneOf
                    [ map Top top
                    , map Vision (s "vision")
                    , map Team (s "team")
                    , map Works (s "works")
                    , map Company (s "company")
                    ]
        , Parser.oneOf
            [ map Top top
            , map Vision (s "vision")
            , map Team (s "team")
            , map Works (s "works")
            , map Company (s "company")
            ]
        ]
