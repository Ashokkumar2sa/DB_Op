
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2015-01-08 17:28:54' and sp.from_date <= '2049-06-05 22:49:36'
			and sp.company in (select name from tabCompany where parent_company = '4company')
