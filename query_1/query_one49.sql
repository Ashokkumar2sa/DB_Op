
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2086-06-14 11:59:32' and sp.from_date <= '2096-06-03 23:57:53'
			and sp.company in (select name from tabCompany where parent_company = '3company')
