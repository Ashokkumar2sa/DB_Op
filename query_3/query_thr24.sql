
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Designer'
			and sp.to_date >= '2063-08-07 22:30:24' and sp.from_date <= '2074-09-09 12:13:25' and sp.company = '16company'
