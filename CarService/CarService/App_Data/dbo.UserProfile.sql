CREATE TABLE [dbo].[UserProfile] (
    [UserId]   INT            IDENTITY (1, 1) NOT NULL,
    [UserName] NVARCHAR (MAX) NOT NULL,
    [Password] NVARCHAR(MAX) NOT NULL, 
    [FirstName] NVARCHAR(MAX) NOT NULL, 
    [LastName] NVARCHAR(MAX) NOT NULL, 
    [Activated] BIT NOT NULL, 
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

