
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Engineer'
			and sp.to_date >= '2030-09-06 11:18:31' and sp.from_date <= '2066-12-09 03:24:37' and sp.company = '17company'
