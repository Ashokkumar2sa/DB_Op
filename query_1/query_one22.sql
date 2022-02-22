
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Project Manager' 
			and sp.to_date >= '2076-11-28 23:22:14' and sp.from_date <= '2084-01-14 02:04:24'
			and sp.company in (select name from tabCompany where parent_company = '4company')
