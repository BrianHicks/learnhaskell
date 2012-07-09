-- define types
type CustomerID = Int
type ReviewBody = String

data BookInfo = Book Int String [String]
                deriving (Show)

bookID      (Book id _     _      ) = id
bookTitle   (Book _  title _      ) = title
bookAuthors (Book _  _     authors) = authors

data BookReview = BookReview BookInfo CustomerID String

type BookRecord = (BookInfo, BookReview)

-- billing information
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

data Customer = Customer {
    customerID      :: CustomerID,
    customerName    :: String,
    customerAddress :: Address
    } deriving (Show)

-- application of the defined types
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]
