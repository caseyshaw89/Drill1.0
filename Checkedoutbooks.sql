Select lb.BranchName, Count(bl.DateOut)
From Book b 
join Book_Loans bl
on b.BookID=bl.BookID
join Borrower bo
on bl.CardNo = bo.CardNo
join Library_Branch lb
on bl.BranchID = lb.BranchID

Where CheckIN is null
Group by lb.BranchName

