
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Associate'
			and sp.to_date >= '2004-02-12 01:30:34' and sp.from_date <= '2006-06-03 13:46:35' and sp.company = '13company'
