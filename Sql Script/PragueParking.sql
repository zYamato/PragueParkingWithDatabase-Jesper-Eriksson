USE [PragueParking]
GO
/****** Object:  Table [dbo].[ParkedVehicle]    Script Date: 2020-02-10 22:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParkedVehicle](
	[ParkedVehicleID] [int] IDENTITY(1,1) NOT NULL,
	[RegNum] [nvarchar](10) NOT NULL,
	[ParkingSpotID] [int] NULL,
	[VehicleTypeID] [int] NULL,
	[ArriveTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ParkedVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParkingHistory]    Script Date: 2020-02-10 22:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParkingHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[RegNum] [nvarchar](10) NOT NULL,
	[LeaveTime] [datetime] NOT NULL,
	[ArriveTime] [datetime] NOT NULL,
	[PricePayed] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParkingSpot]    Script Date: 2020-02-10 22:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParkingSpot](
	[ParkingSpotID] [int] IDENTITY(1,1) NOT NULL,
	[ParkingSpotNum] [int] NOT NULL,
	[ParkingSpotCurrentSize] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ParkingSpotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 2020-02-10 22:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](25) NOT NULL,
	[TypeSize] [int] NOT NULL,
	[HourlyRate] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ParkedVehicle] ON 

INSERT [dbo].[ParkedVehicle] ([ParkedVehicleID], [RegNum], [ParkingSpotID], [VehicleTypeID], [ArriveTime]) VALUES (1, N'abc123', 1, 1, CAST(N'2020-02-10T20:01:59.020' AS DateTime))
SET IDENTITY_INSERT [dbo].[ParkedVehicle] OFF
SET IDENTITY_INSERT [dbo].[ParkingSpot] ON 

INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (1, 1, 2)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (2, 2, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (3, 3, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (4, 4, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (5, 5, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (6, 6, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (7, 7, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (8, 8, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (9, 9, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (10, 10, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (11, 11, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (12, 12, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (13, 13, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (14, 14, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (15, 15, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (16, 16, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (17, 17, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (18, 18, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (19, 19, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (20, 20, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (21, 21, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (22, 22, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (23, 23, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (24, 24, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (25, 25, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (26, 26, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (27, 27, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (28, 28, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (29, 29, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (30, 30, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (31, 31, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (32, 32, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (33, 33, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (34, 34, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (35, 35, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (36, 36, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (37, 37, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (38, 38, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (39, 39, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (40, 40, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (41, 41, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (42, 42, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (43, 43, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (44, 44, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (45, 45, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (46, 46, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (47, 47, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (48, 48, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (49, 49, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (50, 50, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (51, 51, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (52, 52, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (53, 53, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (54, 54, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (55, 55, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (56, 56, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (57, 57, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (58, 58, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (59, 59, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (60, 60, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (61, 61, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (62, 62, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (63, 63, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (64, 64, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (65, 65, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (66, 66, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (67, 67, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (68, 68, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (69, 69, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (70, 70, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (71, 71, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (72, 72, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (73, 73, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (74, 74, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (75, 75, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (76, 76, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (77, 77, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (78, 78, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (79, 79, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (80, 80, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (81, 81, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (82, 82, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (83, 83, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (84, 84, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (85, 85, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (86, 86, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (87, 87, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (88, 88, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (89, 89, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (90, 90, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (91, 91, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (92, 92, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (93, 93, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (94, 94, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (95, 95, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (96, 96, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (97, 97, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (98, 98, 0)
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (99, 99, 0)
GO
INSERT [dbo].[ParkingSpot] ([ParkingSpotID], [ParkingSpotNum], [ParkingSpotCurrentSize]) VALUES (100, 100, 0)
SET IDENTITY_INSERT [dbo].[ParkingSpot] OFF
SET IDENTITY_INSERT [dbo].[VehicleType] ON 

INSERT [dbo].[VehicleType] ([TypeID], [TypeName], [TypeSize], [HourlyRate]) VALUES (1, N'Car', 1, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[VehicleType] ([TypeID], [TypeName], [TypeSize], [HourlyRate]) VALUES (2, N'Motorcycle', 2, CAST(20 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[VehicleType] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ParkedVe__34C6A0A6F81056BC]    Script Date: 2020-02-10 22:34:27 ******/
ALTER TABLE [dbo].[ParkedVehicle] ADD UNIQUE NONCLUSTERED 
(
	[RegNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ParkedVehicle]  WITH CHECK ADD FOREIGN KEY([ParkingSpotID])
REFERENCES [dbo].[ParkingSpot] ([ParkingSpotID])
GO
ALTER TABLE [dbo].[ParkedVehicle]  WITH CHECK ADD FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleType] ([TypeID])
GO
ALTER TABLE [dbo].[ParkedVehicle]  WITH CHECK ADD CHECK  ((len([RegNum])>(2)))
GO
ALTER TABLE [dbo].[ParkingHistory]  WITH CHECK ADD CHECK  ((len([RegNum])>(2)))
GO
/****** Object:  StoredProcedure [dbo].[Add Vehicle]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Add Vehicle]
@RegNum NVARCHAR(10),
@ParkingSpotID INT,
@VehicleTypeID INT

AS
BEGIN
	DECLARE @CurrentSize INT
	SET @CurrentSize = (SELECT p.ParkingSpotCurrentSize FROM ParkingSpot p
	WHERE @ParkingSpotID = p.ParkingSpotID)
	IF @VehicleTypeID = 1 AND @CurrentSize < 2
		INSERT INTO ParkedVehicle(RegNum,ParkingSpotID,VehicleTypeID,ArriveTime)
		VALUES(@RegNum,@ParkingSpotID,@VehicleTypeID,GETDATE())
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize =  ParkingSpotCurrentSize + 1
		WHERE ParkingSpotID = @ParkingSpotID
	IF @VehicleTypeID = 2 AND @CurrentSize = 0
			INSERT INTO ParkedVehicle(RegNum,ParkingSpotID,VehicleTypeID,ArriveTime)
			VALUES(@RegNum,@ParkingSpotID,@VehicleTypeID,GETDATE())
			UPDATE ParkingSpot
			SET ParkingSpotCurrentSize = 2
			WHERE ParkingSpotID = @ParkingSpotID
END
GO
/****** Object:  StoredProcedure [dbo].[Get Current Price]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Get Current Price] @RegNum NVARCHAR(10), @PriceToPay MONEY OUTPUT
AS
BEGIN

DECLARE @ArriveTime DATETIME
SET @ArriveTime = (SELECT p.ArriveTime FROM ParkedVehicle p WHERE RegNum = @RegNum)

DECLARE @VehicleType INT
SET @VehicleType = (SELECT p.VehicleTypeID FROM ParkedVehicle p WHERE RegNum = @RegNum)

DECLARE @DateDifference INT
SET @DateDifference = DATEDIFF(MINUTE, @ArriveTime, GETDATE())

	 IF @VehicleType = 2
		IF @DateDifference > 5 AND @DateDifference > 120
			SET @PriceToPay = 20 + ((@DateDifference/60) * 20)
		ELSE
			SET @PriceToPay = 0
	IF @VehicleType = 2
		IF @DateDifference > 5 AND @DateDifference < 120
			SET @PriceToPay = 40
	ELSE
		IF @DateDifference > 5 AND @DateDifference > 120
			SET @PriceToPay = 10 + ((@DateDifference/60) * 10)
		IF @DateDifference > 5 AND @DateDifference < 120
			SET @PriceToPay = 20
		ELSE
			SET @PriceToPay = 0
RETURN
END;
GO
/****** Object:  StoredProcedure [dbo].[Move Vehicle]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Move Vehicle] @RegNum NVARCHAR(10), @ParkingSpotID INT
AS
BEGIN
UPDATE ParkedVehicle 
SET
	ParkingSpotID = @ParkingSpotID
WHERE RegNum = @RegNum
END
GO
/****** Object:  StoredProcedure [dbo].[Show Empty Spots]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Show Empty Spots]
AS
BEGIN
	SELECT * FROM ParkingSpot p
	WHERE p.ParkingSpotID NOT IN (SELECT ParkingSpotID FROM ParkedVehicle)
END
GO
/****** Object:  StoredProcedure [dbo].[Show Parked Cars]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Show Parked Cars]
AS
BEGIN
SELECT p.ParkingSpotNum, pv.RegNum, pv.VehicleTypeID, pv.ArriveTime FROM ParkingSpot p
INNER JOIN ParkedVehicle pv
ON p.ParkingSpotID = pv.ParkingSpotID
END
GO
/****** Object:  StoredProcedure [dbo].[Vehicle Leaving]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Vehicle Leaving] 
@RegNum NVARCHAR(10)

AS
BEGIN
	SELECT p.ParkingSpotID
	FROM ParkingSpot p
	INNER JOIN ParkedVehicle pv
	ON pv.ParkingSpotID = p.ParkingSpotID
	WHERE pv.RegNum = @RegNum

	 DECLARE @ArriveTime DATETIME
	 SET @ArriveTime = (SELECT ArriveTime FROM ParkedVehicle WHERE RegNum = @RegNum)

	DECLARE @ParkingID INT
	SET @ParkingID = (SELECT ParkingSpotID FROM ParkedVehicle WHERE RegNum = @RegNum)

	DECLARE @ParkingCurrentSize INT
	SET @ParkingCurrentSize = (SELECT p.ParkingSpotCurrentSize FROM ParkingSpot p WHERE p.ParkingSpotID = @ParkingID)

	 DECLARE @VehicleType INT
	 SET @VehicleType = (SELECT VehicleTypeID FROM ParkedVehicle WHERE RegNum = @RegNum)

	 DECLARE @DateDifference INT
	 SET @DateDifference = DATEDIFF(MINUTE,@ArriveTime, GETDATE())

	 DECLARE @PriceToPay MONEY
	 IF @VehicleType = 2
		IF @DateDifference > 5 AND @DateDifference > 120
			SET @PriceToPay = 20 + ((@DateDifference/60) * 20)
		ELSE
			SET @PriceToPay = 0
	IF @VehicleType = 2
		IF @DateDifference > 5 AND @DateDifference < 120
			SET @PriceToPay = 40
	ELSE
		IF @DateDifference > 5 AND @DateDifference > 120
			SET @PriceToPay = 10 + ((@DateDifference/60) * 10)
		IF @DateDifference > 5 AND @DateDifference < 120
			SET @PriceToPay = 20
		ELSE
			SET @PriceToPay = 0

	INSERT INTO ParkingHistory(RegNum, LeaveTime, ArriveTime, PricePayed)
	VALUES(@RegNum, GETDATE(), @ArriveTime, @PriceToPay);

	DELETE FROM ParkedVehicle WHERE RegNum = @RegNum
	IF @VehicleType = 1 AND @ParkingCurrentSize = 1
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 0
		WHERE ParkingSpotID = @ParkingID
	IF @VehicleType = 1 AND @ParkingCurrentSize = 2
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 1
		WHERE ParkingSpotID = @ParkingID
	IF @VehicleType = 2
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 0
		WHERE ParkingSpotID = @ParkingID
END;
GO
/****** Object:  StoredProcedure [dbo].[Vehicle Leaving Free]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Vehicle Leaving Free] 
@RegNum NVARCHAR(10)

AS
BEGIN
	SELECT p.ParkingSpotID
	FROM ParkingSpot p
	INNER JOIN ParkedVehicle pv
	ON pv.ParkingSpotID = p.ParkingSpotID
	WHERE pv.RegNum = @RegNum

	DECLARE @ParkingID INT
	SET @ParkingID = (SELECT ParkingSpotID FROM ParkedVehicle WHERE RegNum = @RegNum)

	DECLARE @ParkingSpotID INT
	SET @ParkingSpotID = (SELECT p.ParkingSpotID FROM ParkingSpot p WHERE p.ParkingSpotID = @ParkingID)

	DECLARE @ParkingCurrentSize INT
	SET @ParkingCurrentSize = (SELECT p.ParkingSpotCurrentSize FROM ParkingSpot p WHERE p.ParkingSpotID = @ParkingID)

	 DECLARE @ArriveTime DATETIME
	 SET @ArriveTime = (SELECT ArriveTime FROM ParkedVehicle WHERE RegNum = @RegNum)

	 DECLARE @VehicleType INT
	 SET @VehicleType = (SELECT VehicleTypeID FROM ParkedVehicle WHERE RegNum = @RegNum)

	 DECLARE @PriceToPay MONEY
	 SET @PriceToPay = 0

	INSERT INTO ParkingHistory(RegNum, LeaveTime, ArriveTime, PricePayed)
	VALUES(@RegNum, GETDATE(), @ArriveTime, @PriceToPay);


	DELETE FROM ParkedVehicle WHERE RegNum = @RegNum
	IF @VehicleType = 1 AND @ParkingCurrentSize = 1
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 0
		WHERE ParkingSpotID = @ParkingID
	IF @VehicleType = 1 AND @ParkingCurrentSize = 2
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 1
		WHERE ParkingSpotID = @ParkingID
	IF @VehicleType = 2
		UPDATE ParkingSpot 
		SET ParkingSpotCurrentSize = 0
		WHERE ParkingSpotID = @ParkingID
END;
GO
/****** Object:  StoredProcedure [dbo].[Where is Parked]    Script Date: 2020-02-10 22:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Where is Parked] @RegNum NVARCHAR(10)
AS
BEGIN
SELECT p.ParkingSpotNum, pv.RegNum, pv.VehicleTypeID, pv.ArriveTime FROM ParkingSpot p
INNER JOIN ParkedVehicle pv
ON p.ParkingSpotID = pv.ParkingSpotID
WHERE pv.Regnum = @RegNum
END
GO
