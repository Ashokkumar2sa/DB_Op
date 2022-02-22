
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary' 
			and sp.to_date >= '2065-11-20 22:46:07' and sp.from_date <= '2079-10-18 14:18:59'
			and sp.company in (select name from tabCompany where parent_company = '1company')
