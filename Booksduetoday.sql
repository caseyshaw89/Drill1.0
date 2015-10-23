Select b.Title, bo.Name, bo.[Address], bl.DueDate, lb.BranchName
From Book b 
join Book_Loans bl
on b.BookID=bl.BookID
join Borrower bo
on bl.CardNo = bo.CardNo
join Library_Branch lb
on bl.BranchID = lb.BranchID

Where BranchName = 'Sharpstown' and 
DueDate='2015-10-22'

