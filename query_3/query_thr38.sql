
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2003-09-28 14:53:09' and sp.from_date <= '2078-06-03 20:36:58' and sp.company = '8company'
