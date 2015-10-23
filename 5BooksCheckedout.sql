Select bo.Name, bo.[Address], COUNT(DateOut) as Booksborrowed
From Book_Loans bl
join Borrower bo
on bl.CardNo = bo.CardNo
Where CheckIN is null  
Group By bo.Name, bo.[Address]
Having COUNT(DateOut)>=5