
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2086-03-06 01:03:53' and sp.from_date <= '2097-09-05 09:38:51'
			and sp.company in (select name from tabCompany where parent_company = '8company')
