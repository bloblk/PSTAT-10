PSTAT10db <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")

EMPLOYEE <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/EMPLOYEE.txt")
CUSTOMER <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/CUSTOMER.txt")
PRODUCT <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/PRODUCT.txt")
SALES_ORDER <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/SALES_ORDER.txt")
SALES_ORDER_LINE <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/SALES_ORDER_LINE.txt")
INVOICES <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/INVOICES.txt")
DEPARTMENT <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/DEPARTMENT.txt")
EMPLOYEE_PHONE <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/EMPLOYEE_PHONE.txt")
STOCK_TOTAL <- read.csv ("C:/Users/Seewoo Kwon/OneDrive/Documents/PSTAT 10/STOCK_TOTAL.txt")

dbWriteTable(PSTAT10db, "EMPLOYEE", EMPLOYEE)
dbWriteTable(PSTAT10db, "CUSTOMER", CUSTOMER)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINES", SALES_ORDER_LINE)
dbWriteTable(PSTAT10db, "INVOICES", INVOICES)
dbWriteTable(PSTAT10db, "DEPARTMENT", DEPARTMENT)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(PSTAT10db, "STOCK_TOTAL", STOCK_TOTAL)

dbListTables(PSTAT10db)

customer_tuples <- dbGetQuery(PSTAT10db, "SELECT * FROM CUSTOMER")
customer_tuples







