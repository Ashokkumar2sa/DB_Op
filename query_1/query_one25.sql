
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Engineer' 
			and sp.to_date >= '2074-04-11 03:11:58' and sp.from_date <= '2078-08-23 03:36:04'
			and sp.company in (select name from tabCompany where parent_company = '6company')
