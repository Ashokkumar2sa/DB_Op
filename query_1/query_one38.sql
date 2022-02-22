
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2055-01-17 02:17:33' and sp.from_date <= '2061-04-21 08:06:40'
			and sp.company in (select name from tabCompany where parent_company = '6company')
