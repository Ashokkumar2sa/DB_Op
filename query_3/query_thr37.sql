
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Secretary'
			and sp.to_date >= '2022-10-19 06:12:05' and sp.from_date <= '2039-08-28 06:48:59' and sp.company = '11company'
