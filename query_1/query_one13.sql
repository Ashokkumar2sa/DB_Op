
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2076-09-23 18:31:57' and sp.from_date <= '2091-06-07 04:01:16'
			and sp.company in (select name from tabCompany where parent_company = '1company')
