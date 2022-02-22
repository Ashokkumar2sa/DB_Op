
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2009-04-08 17:43:00' and sp.from_date <= '2025-01-06 09:42:41'
			and sp.company in (select name from tabCompany where parent_company = '5company')
