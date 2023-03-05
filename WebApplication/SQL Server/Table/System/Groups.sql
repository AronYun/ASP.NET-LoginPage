CREATE TABLE [System].[dbo].[Group] (
     [gp01] INT NOT NULL PRIMARY KEY --權限群組代碼
    ,[gp02] VARCHAR(255) NOT NULL DEFAULT 'SQL' --建檔人員
    ,[gp03] DATETIME NOT NULL DEFAULT GETDATE() --建檔時間
    ,[gp04] VARCHAR(255) NOT NULL DEFAULT 'SQL' --修改人員
    ,[gp05] DATETIME NOT NULL DEFAULT GETDATE() --修改時間
	,[gp06] VARCHAR(255) --備註
	,[gp07] NVARCHAR(255) --權限群組名稱
	,[gp08] BIT NOT NULL DEFAULT 0 --網站登入權限
);
ALTER TABLE [System].[dbo].[Group] ADD [gp09] BIT NOT NULL DEFAULT 0; --系統日誌開關

SELECT * FROM [System].[dbo].[Group];

INSERT INTO [System].[dbo].[Group] ([gp01], [gp02], [gp03], [gp04], [gp05], [gp06], [gp07], [gp08])
VALUES (3 --[gp01]
      , 'SQL' --[gp02]
      , GETDATE() --[gp03]
      , 'SQL' --[gp04]
      , GETDATE() --[gp05]
      , '' --[gp06]
      , '普通用戶' --[gp07]
      , 1 --[gp08]
);

