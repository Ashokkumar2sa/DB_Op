
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2025-09-25 20:37:34' and sp.from_date <= '2086-05-09 13:52:26'
			and sp.company in (select name from tabCompany where parent_company = '4company')
