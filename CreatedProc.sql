Create Proc FindingBranch @BranchName varchar(30),  @Author varchar(30)
as
Select b.Title, bc.No_of_Copies, lb.BranchName, ba.Author
From Library_Branch lb 
join Book_Copies bc
on lb.BranchID=bc.BranchID
join Book_Authors ba
on ba.BookID = bc.BookID
join Book b
on b.BookID=ba.BookID
Where BranchName = @BranchName and  Author = @Author

