
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Engineer' 
			and sp.to_date >= '2028-08-01 06:34:18' and sp.from_date <= '2064-06-11 10:34:07'
			and sp.company in (select name from tabCompany where parent_company = '4company')
