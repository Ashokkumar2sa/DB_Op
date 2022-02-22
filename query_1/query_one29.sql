
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2069-05-28 00:57:19' and sp.from_date <= '2093-01-21 03:18:38'
			and sp.company in (select name from tabCompany where parent_company = '7company')
