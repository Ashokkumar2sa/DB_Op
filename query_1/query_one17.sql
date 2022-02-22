
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2045-10-07 11:50:20' and sp.from_date <= '2083-05-22 00:39:06'
			and sp.company in (select name from tabCompany where parent_company = '8company')
