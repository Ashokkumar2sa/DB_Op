
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2063-05-29 07:08:55' and sp.from_date <= '2087-03-31 16:48:02' and sp.company = '10company'
