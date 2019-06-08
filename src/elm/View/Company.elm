module View.Company exposing (viewCompany)

import Browser
import Html exposing (Html, h1, li, p, section, table, td, text, th, tr, ul)
import Html.Attributes exposing (class, id)


viewCompany : Html msg
viewCompany =
    section [ id "company", class "company" ]
        [ h1 []
            [ text "company" ]
        , table
            []
            [ tr []
                [ th [] [ text "社名" ]
                , td [] [ text "株式会社 sorano me" ]
                ]
            , tr []
                [ th [] [ text "住所" ]
                , td [] [ text "東京都" ]
                ]
            , tr []
                [ th [] [ text "設立" ]
                , td [] [ text "2019年9月" ]
                ]
            , tr []
                [ th [] [ text "代表" ]
                , td [] [ text "城戸 彩乃" ]
                ]
            , tr []
                [ th [] [ text "事業内容" ]
                , td []
                    [ ul []
                        [ li [] [ text "宇宙関連のコンテンツ作成・マーケティング" ]
                        , li [] [ text "宇宙ビジネス関連のコンサルティング" ]
                        , li [] [ text "メディアの開発・運営" ]
                        ]
                    ]
                ]
            ]
        ]
