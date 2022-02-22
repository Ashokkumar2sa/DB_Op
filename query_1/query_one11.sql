
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher' 
			and sp.to_date >= '2075-04-12 14:29:16' and sp.from_date <= '2094-01-29 06:09:13'
			and sp.company in (select name from tabCompany where parent_company = '4company')
