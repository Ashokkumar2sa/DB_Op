
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2019-07-22 15:09:05' and sp.from_date <= '2097-07-25 09:59:10'
			and sp.company in (select name from tabCompany where parent_company = '1company')
