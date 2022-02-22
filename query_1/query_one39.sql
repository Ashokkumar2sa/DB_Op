
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2029-01-31 14:10:41' and sp.from_date <= '2031-09-12 04:18:17'
			and sp.company in (select name from tabCompany where parent_company = '2company')
