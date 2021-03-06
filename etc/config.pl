+{
    maintenance => 0,
    twitter => {
        keys => {
            consumer_key => 'consumer_ket',
            consumer_secret => 'consumer_secret',
            token => 'token',
            token_secret => 'token_secret'
        },
    },
    link => {
        to_image => 1, # post a link to keyword image
        to_wikipedia => 0 # not work
    },
    wikipedia => {
        base_url => 'http://ja.wikipedia.org/w/api.php',
        category => '?format=json&action=query&list=categorymembers&cmlimit=500&cmtitle=Category:'
    },
    google => {
        base_url => 'http://ajax.googleapis.com/',
        search_image => 'ajax/services/search/images?v=1.0&q='
    },
    random_twitter_week => {
        1 => [
            '今日は月曜日！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '今日は月曜日だね、ブルーマンデーなんて吹っ飛ばせ！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '月曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '月曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊ばねば！',
            '今日は月曜日！一週間頑張って！休日はお兄ちゃんと%sで遊ぶにゃにゃん！',
            '月曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊ばねば！'
        ],
        2 => [
            '今日は火曜日だよ！辛いと思うけど頑張って！休日はお兄ちゃんと%sでランデブー！',
            '今日は火曜日だよお兄ちゃん！気が滅入ると思うけど頑張って！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '火曜日だよお兄ちゃん！気が滅入ると思うけど頑張って！休日はお兄ちゃんと%sでらんらんらん。',
            '火曜日だよお兄ちゃん！帰ったらマッサージするよ！だから休日はお兄ちゃんと%sだよ・・・。',
            '火曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊ぼ・・・。',
            '今日は火曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊ぶですよー！'
        ],
        3 => [
            '今日は水曜日！休日はお兄ちゃんと%sで・・・きゃは！',
            '水曜日だよお兄ちゃん！折り返し地点だよ！早くお兄ちゃんと%sで遊びたいにゃん！。',
            '今日は水曜日！休日はお兄ちゃんと%sでムフーー！',
            '今日は水曜日！休日はお兄ちゃんと%sでムフフフ！',
            '今日は水曜日！折り返し地点だよ！休日はお兄ちゃんと%sで遊ぶぞ！',
            '水曜日だよお兄ちゃん！早くお兄ちゃんと%sで遊びたいにゃー。'
        ],
        4 => [
            '今日は木曜日！明日は花金だから頑張って！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '木曜日だよお兄ちゃん！明日は花金だから頑張って！休日はお兄ちゃんと%sで遊ぶにゃー！。',
            '今日は木曜日！明日は花金だから頑張って！休日はお兄ちゃんと%sでムフフ・・・。',
            '木曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊びたいなぁ。',
            '今日は木曜日！休日はお兄ちゃんと%sで遊びたいにゃ！。',
            '木曜日だよお兄ちゃん！辛い時かもだけど頑張って！休日はお兄ちゃんと%sで遊びたいなぁ。'
        ],
        5 => [
            '今日は花金の金曜日！休日はお兄ちゃんと%sで遊ぶよ！ #TGIF',
            '今日は花金の金曜日だにゃん！休日はお兄ちゃんと%sで遊ぶのだー！ #TGIF',
            '今日は花金の金曜日！休日はお兄ちゃんと%sでにゃんにゃんにゃー！ #TGIF',
            '今日は花金の金曜日だにゃん！休日はお兄ちゃんと%sで遊ぶにゃん！ #TGIF',
            '今日は金曜日！楽しみだった休日はお兄ちゃんと%sで遊ぶから早く帰ってきて！ #TGIF',
            '金曜日だよお兄ちゃん！休日はお兄ちゃんと%sで遊ぶから早く帰ってきて！ #TGIF'
        ],
        6 => [
            'やったー！土曜日！今日はお兄ちゃんと%sで遊ぶにゃー！。',
            'やったー！土曜日！今日はお兄ちゃんと%sだなんてどうにかなっちゃう///',
            '今日は念願の土曜日！今日はお兄ちゃんと%sでいっぱい遊ぶにゃー！。',
            '今日は土曜日！今日はお兄ちゃんと%sでずっと一緒///',
            '土曜日だよ！今日は絶対にお兄ちゃんと%sでランデブーするのにゃ！',
            '土曜日だよ！早く起きてお兄ちゃん！休日はお兄ちゃんと%sで遊んでくれるよね？。'
        ],
        7 => [
            '今日は日曜日・・。もう終わり・・。来週の休日はお兄ちゃんと%sでにゃんにゃん！',
            '今日は日曜日だぁ。楽しい時間もおわりかぁ。来週の休日はお兄ちゃんと%sで遊ぼ///',
            '日曜日だよお兄ちゃん。次の休日はお兄ちゃんと%sで遊ぼ///',
            '日曜日だよお兄ちゃん。来週の休日はお兄ちゃんと%sでランデブするのだ！',
            '日曜日だねお兄ちゃん。休日の最後にお兄ちゃんと%sで遊ぼう！',
            '今日は日曜日だから休日終わりだね・・。来週の休日はお兄ちゃんと%sで遊びたいなぁ。'
        ],
    },
    search_category => [
        '1970年以前のコンピュータゲーム',
        '1971年のコンピュータゲーム',
        '1972年のコンピュータゲーム',
        '1973年のコンピュータゲーム',
        '1974年のコンピュータゲーム',
        '1975年のコンピュータゲーム',
        '1976年のコンピュータゲーム',
        '1977年のコンピュータゲーム',
        '1978年のコンピュータゲーム',
        '1979年のコンピュータゲーム',
        '1980年のコンピュータゲーム',
        '1981年のコンピュータゲーム',
        '1982年のコンピュータゲーム',
        '1983年のコンピュータゲーム',
        '1984年のコンピュータゲーム',
        '1985年のコンピュータゲーム',
        '1986年のコンピュータゲーム',
        '1987年のコンピュータゲーム',
        '1988年のコンピュータゲーム',
        '1989年のコンピュータゲーム',
        '1990年のコンピュータゲーム',
        '1991年のコンピュータゲーム',
        '1992年のコンピュータゲーム',
        '1993年のコンピュータゲーム',
        '1994年のコンピュータゲーム',
        '1995年のコンピュータゲーム',
        '1996年のコンピュータゲーム',
        '1997年のコンピュータゲーム',
        '1998年のコンピュータゲーム',
        '1999年のコンピュータゲーム',
        '2000年のコンピュータゲーム',
        '2001年のコンピュータゲーム',
        '2002年のコンピュータゲーム',
        '2003年のコンピュータゲーム',
        '2004年のコンピュータゲーム',
        '2005年のコンピュータゲーム',
        '2006年のコンピュータゲーム',
        '2007年のコンピュータゲーム',
        '2008年のコンピュータゲーム',
        '2009年のコンピュータゲーム',
        '2010年のコンピュータゲーム',
        '2011年のコンピュータゲーム',
        '2012年のコンピュータゲーム',
        '2013年のコンピュータゲーム',
        '2014年のコンピュータゲーム',
        '2015年のコンピュータゲーム',
        '1971年のアーケードゲーム',
        '1972年のアーケードゲーム',
        '1973年のアーケードゲーム',
        '1974年のアーケードゲーム',
        '1975年のアーケードゲーム',
        '1976年のアーケードゲーム',
        '1977年のアーケードゲーム',
        '1978年のアーケードゲーム',
        '1979年のアーケードゲーム',
        '1980年のアーケードゲーム',
        '1981年のアーケードゲーム',
        '1982年のアーケードゲーム',
        '1983年のアーケードゲーム',
        '1984年のアーケードゲーム',
        '1985年のアーケードゲーム',
        '1986年のアーケードゲーム',
        '1987年のアーケードゲーム',
        '1988年のアーケードゲーム',
        '1989年のアーケードゲーム',
        '1990年のアーケードゲーム',
        '1991年のアーケードゲーム',
        '1992年のアーケードゲーム',
        '1993年のアーケードゲーム',
        '1994年のアーケードゲーム',
        '1995年のアーケードゲーム',
        '1996年のアーケードゲーム',
        '1997年のアーケードゲーム',
        '1998年のアーケードゲーム',
        '1999年のアーケードゲーム',
        '2000年のアーケードゲーム',
        '2001年のアーケードゲーム',
        '2002年のアーケードゲーム',
        '2003年のアーケードゲーム',
        '2004年のアーケードゲーム',
        '2005年のアーケードゲーム',
        '2006年のアーケードゲーム',
        '2007年のアーケードゲーム',
        '2008年のアーケードゲーム',
        '2009年のアーケードゲーム',
        '2010年のアーケードゲーム',
        '2011年のアーケードゲーム',
        '2012年のアーケードゲーム',
        '2013年のアーケードゲーム',
        '2014年のアーケードゲーム',
        '2015年のアーケードゲーム'
    ]
};
