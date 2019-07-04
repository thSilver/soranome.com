module View.Team exposing (viewTeam)

import Browser
import Html exposing (Html, h1, section, text)
import Html.Attributes exposing (class)


viewTeam : Bool -> Html msg
viewTeam isCurrentPage =
    section
        [ class "team"
        , if isCurrentPage then
            class "open"

          else
            class "close"
        ]
        [ h1 [] [ text "member" ]
        ]
