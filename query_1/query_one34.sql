
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales' 
			and sp.to_date >= '2099-03-27 02:30:40' and sp.from_date <= '2099-08-12 15:17:47'
			and sp.company in (select name from tabCompany where parent_company = '8company')
