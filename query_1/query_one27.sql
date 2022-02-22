
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2032-09-23 00:36:23' and sp.from_date <= '2072-01-23 17:10:51'
			and sp.company in (select name from tabCompany where parent_company = '5company')
