

Select distinct bl.CardNo, b.name
From Book_Loans bl 
right outer join Borrower b
on bl.CardNo = b.CardNo
Where bl.CheckIn is not null 


