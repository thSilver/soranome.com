module View.Top exposing (viewTop)

import Browser
import Html exposing (Html, a, br, h1, li, nav, section, text, ul, h2, img)
import Html.Attributes exposing (class, href, src)


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
        , h2 [] [img [src "./assets/images/logotype.png"][]]
        -- , nav []
        --     [ ul []
        --         [ li [] [ a [ href "/vision" ] [ text "vision" ] ]
        --         , li [] [ a [ href "/team" ] [ text "team" ] ]
        --         , li [] [ a [ href "/works" ] [ text "works" ] ]
        --         , li [] [ a [ href "/company" ] [ text "company" ] ]
        --         ]
        --     ]
        ]
