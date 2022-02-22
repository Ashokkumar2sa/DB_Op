
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2039-09-21 05:57:32' and sp.from_date <= '2067-08-29 13:34:20'
			and sp.company in (select name from tabCompany where parent_company = '8company')
