
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2017-09-22 23:24:15' and sp.from_date <= '2051-03-06 01:09:51'
			and sp.company in (select name from tabCompany where parent_company = '7company')
