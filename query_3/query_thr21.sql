
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2027-04-19 08:47:59' and sp.from_date <= '2068-02-03 09:48:11' and sp.company = '11company'
