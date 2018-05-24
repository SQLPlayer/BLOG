﻿CREATE TABLE [dbo].[DimDate] (
    [Datekey]                DATETIME      NOT NULL,
    [FullDateLabel]          NVARCHAR (20) NOT NULL,
    [DateDescription]        NVARCHAR (20) NOT NULL,
    [CalendarYear]           INT           NOT NULL,
    [CalendarYearLabel]      NVARCHAR (20) NOT NULL,
    [CalendarHalfYear]       INT           NOT NULL,
    [CalendarHalfYearLabel]  NVARCHAR (20) NOT NULL,
    [CalendarQuarter]        INT           NOT NULL,
    [CalendarQuarterLabel]   NVARCHAR (20) NULL,
    [CalendarMonth]          INT           NOT NULL,
    [CalendarMonthLabel]     NVARCHAR (20) NOT NULL,
    [CalendarWeek]           INT           NOT NULL,
    [CalendarWeekLabel]      NVARCHAR (20) NOT NULL,
    [CalendarDayOfWeek]      INT           NOT NULL,
    [CalendarDayOfWeekLabel] NVARCHAR (10) NOT NULL,
    [FiscalYear]             INT           NOT NULL,
    [FiscalYearLabel]        NVARCHAR (20) NOT NULL,
    [FiscalHalfYear]         INT           NOT NULL,
    [FiscalHalfYearLabel]    NVARCHAR (20) NOT NULL,
    [FiscalQuarter]          INT           NOT NULL,
    [FiscalQuarterLabel]     NVARCHAR (20) NOT NULL,
    [FiscalMonth]            INT           NOT NULL,
    [FiscalMonthLabel]       NVARCHAR (20) NOT NULL,
    [IsWorkDay]              NVARCHAR (20) NOT NULL,
    [IsHoliday]              INT           NOT NULL,
    [HolidayName]            NVARCHAR (20) NOT NULL,
    [EuropeSeason]           NVARCHAR (50) NULL,
    [NorthAmericaSeason]     NVARCHAR (50) NULL,
    [AsiaSeason]             NVARCHAR (50) NULL,
    CONSTRAINT [PK_DimDate_DateKey] PRIMARY KEY CLUSTERED ([Datekey] ASC)
);


GO

CREATE TRIGGER [dbo].[Trigger_DimDate]
    ON [dbo].[DimDate]
    FOR DELETE, INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON
    END
GO

CREATE NONCLUSTERED INDEX [IX_DimDate_FiscalQuarter] ON [dbo].[DimDate] (FiscalQuarter)
GO
