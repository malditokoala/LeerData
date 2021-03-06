USE [CursosOnlineDev]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 11/18/2020 8:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoId] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaPublicacion] [datetime2](7) NULL,
	[FotoPortada] [varbinary](max) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 11/18/2020 8:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[PrecioId] [int] IDENTITY(1,1) NOT NULL,
	[PrecioActual] [decimal](18, 4) NOT NULL,
	[Promocion] [decimal](18, 4) NOT NULL,
	[CursoId] [int] NOT NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[PrecioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([CursoId], [Titulo], [Descripcion], [FechaPublicacion], [FotoPortada]) VALUES (1, N'Net Core con React y firebase ', N'Programacion con React y javascript', CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[Curso] ([CursoId], [Titulo], [Descripcion], [FechaPublicacion], [FotoPortada]) VALUES (2, N'Curso de Asp.net', N'Programacion con C#', CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[Precio] ON 

INSERT [dbo].[Precio] ([PrecioId], [PrecioActual], [Promocion], [CursoId]) VALUES (1, CAST(900.0000 AS Decimal(18, 4)), CAST(9.9000 AS Decimal(18, 4)), 1)
INSERT [dbo].[Precio] ([PrecioId], [PrecioActual], [Promocion], [CursoId]) VALUES (2, CAST(650.0000 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), 2)
SET IDENTITY_INSERT [dbo].[Precio] OFF
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_PRECIO_CURSO] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_PRECIO_CURSO]
GO
