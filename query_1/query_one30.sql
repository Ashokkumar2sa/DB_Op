
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2036-09-22 19:39:47' and sp.from_date <= '2098-09-08 20:06:31'
			and sp.company in (select name from tabCompany where parent_company = '3company')
