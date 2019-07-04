module View.Works exposing (viewWorks)

import Browser
import Html exposing (Html, h1, li, section, text, ul)
import Html.Attributes exposing (class)


viewWorks : Bool -> Html msg
viewWorks isCurrentPage =
    section
        [ class "works"
        , if isCurrentPage then
            class "open"

          else
            class "close"
        ]
        [ h1 [] [ text "case" ]
        , ul []
            [ li []
                [ h1 [] [ text "Opening movie." ]
                , text "SPACETIDE"
                ]
            , li []
                [ h1 [] [ text "Escape Game" ]
                , text "JAXA"
                ]
            , li []
                [ h1 [] [ text "Article" ]
                , text "MYNAVI Public"
                ]
            , li []
                [ h1 [] [ text "..." ]
                ]
            ]
        ]
