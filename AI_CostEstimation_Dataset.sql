USE [master]
GO
/****** Object:  Database [AICostEstimation]    Script Date: 5/24/2024 3:41:46 PM ******/
CREATE DATABASE [AICostEstimation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AICostEstimation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AICostEstimation.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AICostEstimation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AICostEstimation_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AICostEstimation] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AICostEstimation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AICostEstimation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AICostEstimation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AICostEstimation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AICostEstimation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AICostEstimation] SET ARITHABORT OFF 
GO
ALTER DATABASE [AICostEstimation] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AICostEstimation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AICostEstimation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AICostEstimation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AICostEstimation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AICostEstimation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AICostEstimation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AICostEstimation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AICostEstimation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AICostEstimation] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AICostEstimation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AICostEstimation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AICostEstimation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AICostEstimation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AICostEstimation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AICostEstimation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AICostEstimation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AICostEstimation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AICostEstimation] SET  MULTI_USER 
GO
ALTER DATABASE [AICostEstimation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AICostEstimation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AICostEstimation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AICostEstimation] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AICostEstimation] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AICostEstimation]
GO
/****** Object:  Table [dbo].[Dataset]    Script Date: 5/24/2024 3:41:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dataset](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectComplexity] [nvarchar](50) NULL,
	[TechnologyStack] [nvarchar](50) NULL,
	[TeamSize] [int] NULL,
	[DevelopmentMethodology] [nvarchar](50) NULL,
	[ProjectDomain] [nvarchar](50) NULL,
	[ProjectTimeline] [int] NULL,
	[RiskFactors] [nvarchar](50) NULL,
	[ClientRequirements] [nvarchar](100) NULL,
	[QualityMetrics] [nvarchar](50) NULL,
	[ExternalFactors] [nvarchar](50) NULL,
	[Project_Duration] [int] NULL,
	[Project_Cost] [int] NULL,
	[Number_of_Resources] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dataset] ON 

INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (1, N'High', N'Java,Python,Oracle', 20, N'Agile', N'Healthcare', 6, N'Resource Constraints', N'Create API''s to integrate with front end.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 8, 90000, 26)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (2, N'Low', N'Java,Python,Redis, Cassandra', 5, N'Waterfall', N'Financial Services', 7, N'Resource Constraints', N'Implement caching for backend system', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 10, 15000, 8)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (3, N'Low', N'Java,Python,MongoDB', 10, N'Kanban', N'Supply Chain', 12, N'Technical Complexity', N'Create API''s to integrate with front end.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 15, 15000, 8)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (4, N'Medium', N'Java,Python,Oracle, Angular', 50, N'Agile', N'Healthcare Insurance', 36, N'Uncertain Requirements', N'Front\Backend design and implementation', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 38, 60000, 57)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (5, N'Low', N'Java,Python,Kafka, IBM MQ''s, redis', 15, N'Waterfall', N'Healthcare', 10, N'Resource Constraints', N'Integration of backend with third party systems.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 12, 20000, 15)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (6, N'High', N'Java, kafka, Azure functions', 12, N'Agile', N'Supply Chain', 8, N'Dependency on Third-party Components', N'Integration of backend with third party systems.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 9, 45000, 18)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (7, N'High', N'Python, Azure', 25, N'Kanban', N'Financial Services', 24, N'Technological Risks', N'Azure migration of legacy applications', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 30, 40000, 26)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (8, N'Low', N'Azure cloud', 2, N'Agile', N'Healthcare Insurance', 6, N'Stakeholder Expectations', N'Design marketing strategies with AB testing on Azure.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 10, 15000, 5)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (9, N'High', N'Java,Python,Oracle, Cassandra, Azure queues', 100, N'Kanban', N'Healthcare', 60, N'Regulatory Compliance', N'Create applications for operations ecosystem.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 70, 200000, 11)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (10, N'High', N'Angular, python, MongoDB, AWS', 500, N'Agile', N'Supply Chain', 60, N'Dependency on Third-party Components', N'Create an application for truck route optimization.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 62, 300000, 48)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (11, N'Medium', N'Java,Python,Oracle, Angular', 30, N'Agile', N'Healthcare', 24, N'Uncertain Requirements', N'Develop a system to enable faster patient enrollement', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 30, 60000, 26)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (12, N'Medium', N'Java,Python,Oracle', 38, N'Waterfall', N'Healthcare Insurance', 13, N'Stakeholder Expectations', N'Create API''s to transfer data into MDM.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 13, 76000, 40)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (13, N'High', N'Java,Python,Kafka, IBM MQ''s, redis', 45, N'Agile', N'Financial Services', 20, N'Dependency on Third-party Components', N'Integrate backend with third party payment systems.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 25, 100000, 50)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (14, N'Low', N'Java,Python,Redis, Cassandra', 10, N'Agile', N'Supply Chain', 8, N'Technological Risks', N'Create a system for optimizing inventory management', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 12, 20000, 14)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (15, N'High', N'Azure cloud, Azure data lake.', 80, N'Waterfall', N'Healthcare Insurance', 25, N'Regulatory Compliance', N'Create a system for patient data sharing.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 30, 90000, 86)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (16, N'High', N'Java,Python,Oracle, Azure', 65, N'Agile', N'Healthcare', 6, N'Technological Risks', N'Migrate PHI and PII data from on prem to Azure data lake.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 6, 40000, 70)
INSERT [dbo].[Dataset] ([ID], [ProjectComplexity], [TechnologyStack], [TeamSize], [DevelopmentMethodology], [ProjectDomain], [ProjectTimeline], [RiskFactors], [ClientRequirements], [QualityMetrics], [ExternalFactors], [Project_Duration], [Project_Cost], [Number_of_Resources]) VALUES (17, N'Medium', N'Java,Python,Oracle', 7, N'Kanban', N'Financial Services', 6, N'Technological Risks', N'Create API''s to integrate with front end.', N'Number of defects, test coverage, CSAP', N'Changes in technology trends and budget.', 8, 30000, 10)
SET IDENTITY_INSERT [dbo].[Dataset] OFF
USE [master]
GO
ALTER DATABASE [AICostEstimation] SET  READ_WRITE 
GO
