USE [Country]
GO
/****** Object:  Table [dbo].[Adresa]    Script Date: 7/8/2016 5:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresa](
	[AdresaID] [int] NOT NULL,
	[Strada] [nvarchar](30) NULL,
	[Numar] [int] NULL,
	[LocalitateID] [int] NULL,
	[JudetID] [int] NULL,
 CONSTRAINT [PK_Adresa] PRIMARY KEY CLUSTERED 
(
	[AdresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AdresaPersoana]    Script Date: 7/8/2016 5:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdresaPersoana](
	[ID] [int] NOT NULL,
	[PersoanaID] [int] NULL,
	[AdresaID] [int] NULL,
	[TipAdresa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nomenclator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Judet]    Script Date: 7/8/2016 5:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Judet](
	[JudetID] [int] NOT NULL,
	[Denumire] [nvarchar](30) NULL,
	[Cod] [int] NULL,
 CONSTRAINT [PK_Judet] PRIMARY KEY CLUSTERED 
(
	[JudetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localitate]    Script Date: 7/8/2016 5:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localitate](
	[LocalitateID] [int] NOT NULL,
	[JudetID] [int] NULL,
	[Denumire] [nvarchar](30) NULL,
 CONSTRAINT [PK_Localitate] PRIMARY KEY CLUSTERED 
(
	[LocalitateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persoana]    Script Date: 7/8/2016 5:58:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persoana](
	[PersoanaID] [int] NOT NULL,
	[Nume] [nvarchar](30) NULL,
	[Prenume] [nvarchar](30) NULL,
 CONSTRAINT [PK_Persoana] PRIMARY KEY CLUSTERED 
(
	[PersoanaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Adresa] ([AdresaID], [Strada], [Numar], [LocalitateID], [JudetID]) VALUES (1, N'Mihai Bravu', 11, 1, 1)
INSERT [dbo].[Adresa] ([AdresaID], [Strada], [Numar], [LocalitateID], [JudetID]) VALUES (2, N'Foisorului', 24, 3, 2)
INSERT [dbo].[Adresa] ([AdresaID], [Strada], [Numar], [LocalitateID], [JudetID]) VALUES (3, N'1 Decembrie', 26, 5, 4)
INSERT [dbo].[Adresa] ([AdresaID], [Strada], [Numar], [LocalitateID], [JudetID]) VALUES (4, N'Zizin', 3, 4, 3)
INSERT [dbo].[Adresa] ([AdresaID], [Strada], [Numar], [LocalitateID], [JudetID]) VALUES (5, N'Mihai Viteazu', 62, 2, 5)
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (1, 1, 1, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (2, 5, 1, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (3, 3, 4, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (4, 4, 3, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (5, 2, 3, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (6, 6, 2, N'Resedinta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (7, 6, 3, N'Corespondenta')
INSERT [dbo].[AdresaPersoana] ([ID], [PersoanaID], [AdresaID], [TipAdresa]) VALUES (8, 7, 3, N'Resedinta')
INSERT [dbo].[Judet] ([JudetID], [Denumire], [Cod]) VALUES (1, N'Ilfov', 13)
INSERT [dbo].[Judet] ([JudetID], [Denumire], [Cod]) VALUES (2, N'Tulcea', 5)
INSERT [dbo].[Judet] ([JudetID], [Denumire], [Cod]) VALUES (3, N'Galati', 21)
INSERT [dbo].[Judet] ([JudetID], [Denumire], [Cod]) VALUES (4, N'Cluj', 2)
INSERT [dbo].[Judet] ([JudetID], [Denumire], [Cod]) VALUES (5, N'Timisoara', 31)
INSERT [dbo].[Localitate] ([LocalitateID], [JudetID], [Denumire]) VALUES (1, 1, N'Bucuresti')
INSERT [dbo].[Localitate] ([LocalitateID], [JudetID], [Denumire]) VALUES (2, 5, N'Timisoara')
INSERT [dbo].[Localitate] ([LocalitateID], [JudetID], [Denumire]) VALUES (3, 2, N'Tulcea')
INSERT [dbo].[Localitate] ([LocalitateID], [JudetID], [Denumire]) VALUES (4, 3, N'Galati')
INSERT [dbo].[Localitate] ([LocalitateID], [JudetID], [Denumire]) VALUES (5, 4, N'Cluj')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (1, N'Petrescu', N'Adi')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (2, N'Andrei', N'Mihai')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (3, N'Ionescu', N'Dragos')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (4, N'Pavel', N'Madalina')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (5, N'Popescu', N'Diana')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (6, N'Dragomir', N'Radu')
INSERT [dbo].[Persoana] ([PersoanaID], [Nume], [Prenume]) VALUES (7, N'Tanase', N'Andreea')
ALTER TABLE [dbo].[Adresa]  WITH CHECK ADD  CONSTRAINT [FK_Adresa_Judet] FOREIGN KEY([JudetID])
REFERENCES [dbo].[Judet] ([JudetID])
GO
ALTER TABLE [dbo].[Adresa] CHECK CONSTRAINT [FK_Adresa_Judet]
GO
ALTER TABLE [dbo].[Adresa]  WITH CHECK ADD  CONSTRAINT [FK_Adresa_Localitate] FOREIGN KEY([LocalitateID])
REFERENCES [dbo].[Localitate] ([LocalitateID])
GO
ALTER TABLE [dbo].[Adresa] CHECK CONSTRAINT [FK_Adresa_Localitate]
GO
ALTER TABLE [dbo].[AdresaPersoana]  WITH CHECK ADD  CONSTRAINT [FK_Nomenclator_Adresa] FOREIGN KEY([AdresaID])
REFERENCES [dbo].[Adresa] ([AdresaID])
GO
ALTER TABLE [dbo].[AdresaPersoana] CHECK CONSTRAINT [FK_Nomenclator_Adresa]
GO
ALTER TABLE [dbo].[AdresaPersoana]  WITH CHECK ADD  CONSTRAINT [FK_Nomenclator_Persoana] FOREIGN KEY([PersoanaID])
REFERENCES [dbo].[Persoana] ([PersoanaID])
GO
ALTER TABLE [dbo].[AdresaPersoana] CHECK CONSTRAINT [FK_Nomenclator_Persoana]
GO
ALTER TABLE [dbo].[Localitate]  WITH CHECK ADD  CONSTRAINT [FK_Judet_Localitate] FOREIGN KEY([JudetID])
REFERENCES [dbo].[Judet] ([JudetID])
GO
ALTER TABLE [dbo].[Localitate] CHECK CONSTRAINT [FK_Judet_Localitate]
GO
