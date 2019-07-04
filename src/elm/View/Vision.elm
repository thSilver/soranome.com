module View.Vision exposing (viewVision)

import Browser
import Html exposing (Html, h1, p, section, text)
import Html.Attributes exposing (class)


viewVision : Bool -> Html msg
viewVision isCurrentPage =
    section
        [ class "vision"
        , if isCurrentPage then
            class "open"

          else
            class "close"
        ]
        [ h1 [] [ text "about us" ]
        , p [] [ text "宇宙は挑戦しろのある未知の分野です。" ]
        , p [] [ text "私たちsorano meは、宇宙からの視点が地球の暮らしをアップデートすると信じています。" ]
        , p [] [ text "宇宙分野の敷居を下げ、熱量のある人材を育て、チャレンジのサイクルを高速で回すことで、暮らしをアップデートする数々の宇宙ビジネスの芽を育てます。" ]
        ]
