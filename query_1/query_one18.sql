
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2070-02-26 23:29:29' and sp.from_date <= '2079-01-14 03:34:18'
			and sp.company in (select name from tabCompany where parent_company = '6company')
