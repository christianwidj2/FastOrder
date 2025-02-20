USE [FoodOrderingDB]
GO
/****** Object:  UserDefinedTableType [dbo].[OrderDetails]    Script Date: 1/3/2025 2:11:29 AM ******/
CREATE TYPE [dbo].[OrderDetails] AS TABLE(
	[OrderNo] [varchar](max) NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[OrderDate] [datetime] NULL
)
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](max) NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[OrderDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[CardNo] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CvvNo] [int] NULL,
	[Address] [varchar](max) NULL,
	[PaymentMode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Username] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Postcode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([PaymentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[Cart_Crud]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Cart_Crud]
	@Action VARCHAR(20),
    @ProductId INT = NULL,
	@Quantity INT = NULL,
	@UserId INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	-- SELECT
	IF @Action = 'SELECT'
    BEGIN
        SELECT c.ProductId, p.Name, p.ImageUrl, p.Price, c.Quantity, c.Quantity AS Qty, p.Quantity AS PrdQty 
		FROM dbo.Carts c
		INNER JOIN dbo.Products p ON p.ProductId = c.ProductId
		WHERE c.UserId = @UserId
    END

	--INSERT
	IF @Action = 'INSERT'
    BEGIN
        INSERT INTO dbo.Carts(ProductId, Quantity, UserId)
		VALUES (@ProductId, @Quantity, @UserId)
    END

	-- UPDATE
	IF @Action = 'UPDATE'
    BEGIN
        UPDATE dbo.Carts
		SET Quantity = @Quantity
		WHERE ProductId = @ProductId AND UserId = @UserId
    END

	-- DELETE
	IF @Action = 'DELETE'
    BEGIN
        DELETE FROM dbo.Carts
		WHERE ProductId = @ProductId AND UserId = @UserId
    END

	-- GET BY ID (PRODUCT ID & USER ID)
	IF @Action = 'GETBYID'
    BEGIN
        SELECT * FROM dbo.Carts
		WHERE ProductId = @ProductId AND UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[Category_Crud]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Category_Crud]
	-- Add the parameters for the stored procedure here
	@Action VARCHAR(20),
	@CategoryId INT = NULL,
	@Name VARCHAR(255) = NULL,
	@IsActive BIT = false,
	@ImageUrl VARCHAR(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--SELECT
	IF @Action = 'SELECT'
		BEGIN
			SELECT * FROM dbo.Categories ORDER BY CreatedDate DESC
		END

	--SELECT ACTIVE
	IF @Action = 'ACTIVECATEGORY'
		BEGIN
			SELECT * FROM dbo.Categories WHERE IsActive = 1
		END
    
	--INSERT
	IF @Action = 'INSERT'
		BEGIN
			INSERT INTO dbo.Categories(Name, ImageUrl, IsActive, CreatedDate)
			VALUES (@Name, @ImageUrl, @IsActive, GETDATE())
		END

	-- UPDATE
	IF @Action = 'UPDATE'
		BEGIN
			DECLARE @UPDATE_IMAGE VARCHAR(20)
			SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
			IF @UPDATE_IMAGE = 'NO'
				BEGIN
					UPDATE dbo.Categories
					SET Name = @Name, IsActive = @IsActive
					WHERE CategoryID = @CategoryId
				END
			ELSE
				BEGIN
					UPDATE dbo.Categories
					SET Name = @Name, ImageUrl = @ImageUrl, IsActive = @IsActive
					WHERE CategoryID = @CategoryId
				END
		END

	-- DELETE
	IF @Action = 'DELETE'
		BEGIN
			DELETE FROM dbo.Categories WHERE CategoryID = @CategoryId
		END

	-- GET BY ID
	IF @Action = 'GETBYID'
	BEGIN
		SELECT * FROM dbo.Categories WHERE CategoryID = @CategoryId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ContactSp]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContactSp]
	@Action VARCHAR(20),
	@ContactId INT = NULL,
	@Name VARCHAR(255) = NULL,
	@Email VARCHAR(50) = NULL,
	@Subject VARCHAR(200) = NULL,
	@Message VARCHAR(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- INSERT
	IF @Action = 'INSERT'
	BEGIN
		INSERT INTO dbo.Contact(Name, Email, Subject, Message, CreatedDate)
		VALUES(@Name, @Email, @Subject, @Message, GETDATE())
	END

	-- SELECT
	IF @Action = 'SELECT'
	BEGIN
		SELECT ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS [SrNo], * FROM dbo.Contact
	END

	-- DELETE BY ADMIN
	IF @Action = 'DELETE'
	BEGIN
		DELETE FROM dbo.Contact WHERE ContactId = @ContactId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Dashboard]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Dashboard]
	@Action VARCHAR(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @Action = 'CATEGORY'
	BEGIN
		SELECT COUNT(*) FROM dbo.Categories
	END

	IF @Action = 'PRODUCT'
	BEGIN
		SELECT COUNT(*) FROM dbo.Products
	END

	IF @Action = 'ORDER'
	BEGIN
		SELECT COUNT(*) FROM dbo.Orders
	END

	IF @Action = 'DELIVERED'
	BEGIN
		SELECT COUNT(*) FROM dbo.Orders WHERE Status = 'Delivered'
	END

	IF @Action = 'PENDING'
	BEGIN
		SELECT COUNT(*) FROM dbo.Orders WHERE Status IN ('Pending', 'Delivery')
	END

	IF @Action = 'USER'
	BEGIN
		SELECT COUNT(*) FROM dbo.Users
	END

	IF @Action = 'CONTACT'
	BEGIN
		SELECT COUNT(*) FROM dbo.Contact
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Invoice]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Invoice]
	@Action VARCHAR(20),
	@PaymentId INT = NUll,
	@UserId INT = NULL,
	@OrderDetailsId INT = NULL,
	@Status VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- GET INVOICE BY ID
	IF @Action = 'INVOICBYID'
	BEGIN
		SELECT ROW_NUMBER() OVER(ORDER BY(SELECT 1)) AS [SrNo], o.OrderNo, p.Name, p.Price, o.Quantity,
		(p.Price * o.Quantity) AS TotalPrice, o.OrderDate, o.Status FROM Orders o
		INNER JOIN Products p ON p.ProductId = o.ProductId
		WHERE o.PaymentId = @PaymentId AND o.UserId = @UserId
	END

	-- SELECT ORDER HISTORY
	IF @Action = 'ODRHISTORY'
	BEGIN
		SELECT DISTINCT o.PaymentId, p.PaymentMode, p.CardNo FROM Orders o
		INNER JOIN Payments p ON p.PaymentId = o.PaymentId
		WHERE o.UserId = @UserId
	END

	-- GET ORDER STATUS
	IF @Action = 'GETSTATUS'
	BEGIN
		SELECT o.OrderDetailsId, o.OrderNo, (pr.Price * o.Quantity) AS TotalPrice, o.Status,
		o.OrderDate, p.PaymentMode, pr.Name FROM Orders o
		INNER JOIN Payments p ON p.PaymentId = o.PaymentId
		INNER JOIN Products pr ON pr.ProductId = o.ProductId
	END

	-- GET ORDER STATUS BY ID
	IF @Action = 'STATUSBYID'
	BEGIN
		SELECT OrderDetailsId, Status FROM Orders
		WHERE OrderDetailsId = @OrderDetailsId
	END

	-- UPDATE ORDER STATUS
	IF @Action = 'UPDTSTATUS'
	BEGIN
		UPDATE dbo.Orders
		SET Status = @Status WHERE OrderDetailsId = @OrderDetailsId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Product_Crud]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Crud]
    @Action VARCHAR(20),
    @ProductId INT = NULL,
    @Name VARCHAR(255) = NULL,
    @Description VARCHAR(MAX) = NULL,
    @Price DECIMAL(18,2) = NULL,
    @Quantity INT = NULL,
    @ImageUrl VARCHAR(MAX) = NULL,
    @CategoryId INT = NULL,
    @IsActive BIT = 1
AS
BEGIN
    SET NOCOUNT ON;

    -- SELECT
    IF @Action = 'SELECT'
    BEGIN
        SELECT p.*, c.Name AS CategoryName from dbo.Products p
		INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId ORDER BY p.CreatedDate DESC
    END

	-- SELECT ACTIVE
    IF @Action = 'ACTIVEPRODUCT'
    BEGIN
        SELECT p.*, c.Name AS CategoryName from dbo.Products p
		INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId
		WHERE p.IsActive = 1
    END

    -- INSERT
    IF @Action = 'INSERT'
    BEGIN
        INSERT INTO dbo.Products(Name, Description, Price, Quantity, ImageUrl, CategoryId, IsActive, CreatedDate)
        VALUES (@Name, @Description, @Price, @Quantity, @ImageUrl, @CategoryId, @IsActive, GETDATE())
    END

    -- UPDATE
    IF @Action = 'UPDATE'
	BEGIN
		DECLARE @UPDATE_IMAGE VARCHAR(20)
		SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)
		IF @UPDATE_IMAGE = 'NO'
			BEGIN
				UPDATE dbo.Products
				SET Name = @Name, Description = @Description, Price = @Price, Quantity = @Quantity,
				CategoryId = @CategoryId, IsActive = @IsActive
				WHERE ProductId = @ProductId
			END
		ELSE
			BEGIN
				UPDATE dbo.Products
				SET Name = @Name, Description = @Description, Price = @Price, Quantity = @Quantity,
				ImageUrl = @ImageUrl, CategoryId = @CategoryId, IsActive = @IsActive
				WHERE ProductId = @ProductId
			END
	END

	-- UPDATE QUANTITY
	IF @Action = 'QTYUPDATE'
	BEGIN
		UPDATE dbo.Products SET Quantity = @Quantity
		WHERE ProductId = @ProductId
	END

    -- DELETE
    IF @Action = 'DELETE'
    BEGIN
        DELETE FROM dbo.Products WHERE ProductId = @ProductId
    END

    -- GET BY ID
    IF @Action = 'GETBYID'
    BEGIN
        SELECT * FROM dbo.Products WHERE ProductId = @ProductId
    END

END
GO
/****** Object:  StoredProcedure [dbo].[Save_Orders]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Save_Orders] @tblOrders OrderDetails READONLY
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO Orders(OrderNo, ProductId, Quantity, UserId, Status, PaymentId, OrderDate)
	SELECT OrderNo, ProductId, Quantity, UserId, Status, PaymentId, OrderDate FROM @tblOrders

END
GO
/****** Object:  StoredProcedure [dbo].[Save_Payment]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Save_Payment]
	@Name VARCHAR(100) = NULL,
	@CardNo VARCHAR(50) = NULL,
	@ExpiryDate VARCHAR(50) = NULL,
	@Cvv INT = NULL,
	@Address VARCHAR(MAX) = NULL,
	@PaymentMode VARCHAR(10) = 'card',
	@InsertedId int OUTPUT
AS
BEGIN

	SET NOCOUNT ON;

	--INSERT
	BEGIN
		INSERT INTO dbo.Payments(Name, CardNo, ExpiryDate, CvvNo, Address, PaymentMode)
		VALUES (@Name, @CardNo, @ExpiryDate, @Cvv, @Address, @PaymentMode)

		SELECT @InsertedId = SCOPE_IDENTITY();
	END

END
GO
/****** Object:  StoredProcedure [dbo].[User_Crud]    Script Date: 1/3/2025 2:11:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Crud]
	@Action VARCHAR(20),
	@UserId int = NULL,
	@Name varchar(255) = NULL,
	@Username varchar(50) = NULL,
	@Mobile varchar(50) = NULL,
	@Email varchar(50) = NULL,
	@Address varchar(MAX) = NULL,
	@Postcode varchar(50) = NULL,
	@Password varchar(50) = NULL,
	@ImageUrl varchar(MAX) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	--SELECT FOR LOGIN
	IF @Action = 'SELECT4LOGIN'
	BEGIN
		SELECT * FROM dbo.Users WHERE Username = @Username AND Password = @Password
	END

	--SELECT FOR USER PROFILE
	IF @Action = 'SELECT4PROFILE'
	BEGIN
		SELECT * FROM dbo.Users WHERE UserId = @UserId
	END

	-- INSERT REGISTRATION
	IF @Action = 'INSERT'
	BEGIN
		INSERT INTO dbo.Users (Name, Username, Mobile, Email, Address, Postcode, Password, ImageUrl, CreatedDate)
		VALUES (@Name, @Username, @Mobile, @Email, @Address, @Postcode, @Password, @ImageUrl, GETDATE());
	END

	-- UPDATE PROFILE
	IF @Action = 'UPDATE'
	BEGIN
		DECLARE @UPDATE_IMAGE VARCHAR(20)
		SELECT @UPDATE_IMAGE = (CASE WHEN @ImageUrl IS NULL THEN 'NO' ELSE 'YES' END)

		IF @UPDATE_IMAGE = 'NO'
			BEGIN
				UPDATE dbo.Users
				SET Name = @Name,
					Username = @Username,
					Mobile = @Mobile,
					Email = @Email,
					Address = @Address,
					Postcode = @Postcode
				WHERE UserId = @UserId
			END
		ELSE
			BEGIN
				UPDATE dbo.Users
				SET Name = @Name,
					Username = @Username,
					Mobile = @Mobile,
					Email = @Email,
					Address = @Address,
					Postcode = @Postcode,
					ImageUrl = @ImageUrl
				WHERE UserId = @UserId
			END
	END
	
	-- SELECT FOR ADMIN
	IF @Action = 'SELECT4ADMIN'
    BEGIN
        SELECT ROW_NUMBER() OVER(ORDER BY CreatedDate DESC) AS [SrNo], UserId, Name, Username, Email, Mobile, CreatedDate
        FROM dbo.Users
    END

	-- DELETE BY ADMIN
	IF @Action = 'DELETE'
	BEGIN
		DELETE FROM dbo.Users WHERE UserId = @UserId;
	END

END
GO
