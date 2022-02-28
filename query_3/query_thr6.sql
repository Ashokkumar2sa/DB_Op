
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Associate'
			and sp.to_date >= '2013-05-16 06:43:47' and sp.from_date <= '2014-02-27 19:08:07' and sp.company = '7company'
