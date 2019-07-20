module View.Top exposing (viewTop)

import Browser
import Html exposing (Html, a, br, h1, li, nav, section, text, ul)
import Html.Attributes exposing (class, href)


viewTop : Bool -> Html msg
viewTop isCurrentPage =
    section
        [ class "top"
        , if isCurrentPage then
            class "open"

          else
            class "close"
        ]
        [ h1 []
            [ text "日常を、"
            , br [] []
            , text "宇宙ビジネスで"
            , br [] []
            , text "豊かにする。"
            ]
        , nav []
            [ ul []
                [ li [] [ a [ href "/vision" ] [ text "about us" ] ]
                , li [] [ a [ href "/team" ] [ text "member" ] ]
                , li [] [ a [ href "/works" ] [ text "case" ] ]
                , li [] [ a [ href "/company" ] [ text "company" ] ]
                ]
            ]
        ]
