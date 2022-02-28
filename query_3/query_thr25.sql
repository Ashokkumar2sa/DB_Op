
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Secretary'
			and sp.to_date >= '2008-01-23 14:08:40' and sp.from_date <= '2095-11-05 17:51:29' and sp.company = '1company'
