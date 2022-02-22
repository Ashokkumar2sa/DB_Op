
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary' 
			and sp.to_date >= '2088-03-06 03:22:53' and sp.from_date <= '2096-07-03 09:54:57'
			and sp.company in (select name from tabCompany where parent_company = '6company')
