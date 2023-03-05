CREATE TABLE [System].[dbo].[Account] (
     [ac01] VARCHAR(255) NOT NULL PRIMARY KEY --帳號
    ,[ac02] VARCHAR(255) NOT NULL DEFAULT 'SQL' --建檔人員
    ,[ac03] DATETIME NOT NULL DEFAULT GETDATE() --建檔時間
    ,[ac04] VARCHAR(255) NOT NULL DEFAULT 'SQL' --修改人員
    ,[ac05] DATETIME NOT NULL DEFAULT GETDATE() --修改時間
	,[ac06] VARCHAR(255) --備註
	,[ac07] VARCHAR(255) --密碼
	,[ac08] BIT NOT NULL DEFAULT 1 --帳號狀態
	,[ac09] NVARCHAR(255) NOT NULL DEFAULT ''--姓氏
	,[ac10] NVARCHAR(255) NOT NULL DEFAULT 'SQL' --名字
	,[ac11] INT NOT NULL DEFAULT 0 --權限群組代碼
);


SELECT * FROM [System].[dbo].[Account];


INSERT INTO [System].[dbo].[Account] ([ac01] , [ac02], [ac03], [ac04], [ac05], [ac06], [ac07], [ac08], [ac09], [ac10], [ac11])
VALUES ('test' --[ac01]
      , 'SQL' --[ac02]
      , GETDATE() --[ac03]
      , 'SQL' --[ac04]
      , GETDATE() --[ac05]
      , '' --[ac06]
      , '098F6BCD4621D373CADE4E832627B4F6' --[ac07]
      , 1 --[ac08]
      , '系統' --[ac09]
      , '測試員' --[ac10]
      , 0 --[ac11]
);


