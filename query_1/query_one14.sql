
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Software Developer' 
			and sp.to_date >= '2002-12-12 20:46:11' and sp.from_date <= '2006-09-27 07:45:31'
			and sp.company in (select name from tabCompany where parent_company = '8company')
