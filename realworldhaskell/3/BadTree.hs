--bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
--bad_nodesAreSome _            _            = Nothing

nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing
