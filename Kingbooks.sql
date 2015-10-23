
Select b.Title, bc.No_of_Copies, lb.BranchName, ba.Author
From Library_Branch lb 
join Book_Copies bc
on lb.BranchID=bc.BranchID
join Book_Authors ba
on ba.BookID = bc.BookID
join Book b
on b.BookID=ba.BookID
Where BranchName = 'Central' and  Author = 'Stephen King'