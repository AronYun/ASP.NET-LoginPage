CREATE TABLE [System].[dbo].[Log] (
     [lg01] VARCHAR(255) --操作帳號
    ,[lg02] DATETIME --操作時間
    ,[lg03] VARCHAR(255) --URL
    ,[lg04] VARCHAR(255) --事件名稱
    ,[lg05] VARCHAR(255) --IP
	,[lg06] VARCHAR(255) --備註
	PRIMARY KEY([lg01], [lg02], [lg03], [lg05])
);

