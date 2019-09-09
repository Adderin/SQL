  SELECT bor.name,bor.address,bor.postalcode,bor.phonenumber, 
    lib.name AS Librarian_Name, 
    lib.phonenumber AS Librarian_Phone, 
    blen.returndate, b.title AS book_title, b.cost, b.isbn_number AS ISBN
   FROM borrower bor, librarian lib, booklended blen, book b
   
   WHERE blen.returndate < CURDATE() 
   AND blen.librarycard = bor.librarycard
   AND blen.librarianid = lib.librarianid
   AND blen.ISBN_number = b.isbn_number
   AND b.cost > 10.00;
