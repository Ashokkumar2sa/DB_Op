
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2072-01-12 22:34:31' and sp.from_date <= '2083-12-09 11:20:57' and sp.company = '12company'
