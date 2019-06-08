module View.Team exposing (viewTeam)

import Browser
import Html exposing (Html, h1, section, text)
import Html.Attributes exposing (class, id)


viewTeam : Html msg
viewTeam =
    section [ id "team", class "team" ]
        [ h1 [] [ text "member" ]
        ]
