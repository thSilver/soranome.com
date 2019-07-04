module View.Top exposing (viewTop)

import Browser
import Html exposing (Html, a, h1, li, nav, section, text, ul)
import Html.Attributes exposing (class, href)


viewTop : Html msg
viewTop =
    section [ class "top" ]
        [ h1 [] [ text "sorano me inc." ]
        , nav []
            [ ul []
                [ li [] [ a [ href "/vision" ] [ text "about us" ] ]
                , li [] [ a [ href "/team" ] [ text "member" ] ]
                , li [] [ a [ href "/works" ] [ text "case" ] ]
                , li [] [ a [ href "/company" ] [ text "company" ] ]
                ]
            ]
        ]
