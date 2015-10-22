Select lb.BranchID, lb.BranchName, b.BookID, bc.No_of_Copies, b.Title
From Library_Branch lb 
 join Book_Copies bc
on lb.BranchID = bc.BranchID
join Book b on b.BookID= bc.BookID



Where (BranchName ='Sharpstown'
and b.BookID=1)
