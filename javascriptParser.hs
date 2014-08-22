import Language.Javascript.Parser

main = do
    source <- readFile "example.js"
    print $ parser source "example.js"
    let result = parse source "example.js"
    case result of
        Left error -> print error
        Right ast -> putStrLn $ renderToString ast
