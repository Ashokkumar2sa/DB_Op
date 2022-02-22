
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2080-03-28 04:12:06' and sp.from_date <= '2080-09-03 11:28:21'
			and sp.company in (select name from tabCompany where parent_company = '3company')
