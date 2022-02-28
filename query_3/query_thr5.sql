
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Business Development Manager'
			and sp.to_date >= '2022-12-27 11:04:29' and sp.from_date <= '2059-07-22 17:47:36' and sp.company = '15company'
