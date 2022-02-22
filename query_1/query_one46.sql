
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2011-05-19 00:13:13' and sp.from_date <= '2036-12-09 15:30:21'
			and sp.company in (select name from tabCompany where parent_company = '8company')
