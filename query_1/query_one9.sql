
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher' 
			and sp.to_date >= '2083-09-14 00:14:34' and sp.from_date <= '2093-10-15 01:31:41'
			and sp.company in (select name from tabCompany where parent_company = '7company')
