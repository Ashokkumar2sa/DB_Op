
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary' 
			and sp.to_date >= '2067-10-16 18:55:14' and sp.from_date <= '2088-10-16 22:43:38'
			and sp.company in (select name from tabCompany where parent_company = '8company')
