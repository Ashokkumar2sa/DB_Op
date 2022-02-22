
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2024-01-22 22:45:44' and sp.from_date <= '2039-03-03 00:36:51'
			and sp.company in (select name from tabCompany where parent_company = '5company')
