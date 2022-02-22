
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2007-03-06 06:54:50' and sp.from_date <= '2061-07-13 05:05:12'
			and sp.company in (select name from tabCompany where parent_company = '5company')
