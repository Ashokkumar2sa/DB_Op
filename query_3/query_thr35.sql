
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2005-04-12 14:01:54' and sp.from_date <= '2077-09-05 21:59:08' and sp.company = '4company'
