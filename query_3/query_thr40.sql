
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Business Development Manager'
			and sp.to_date >= '2056-03-20 05:11:25' and sp.from_date <= '2080-08-18 19:59:30' and sp.company = '1company'
