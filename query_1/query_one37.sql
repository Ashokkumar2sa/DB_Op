
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2004-07-02 23:12:20' and sp.from_date <= '2031-09-03 13:50:57'
			and sp.company in (select name from tabCompany where parent_company = '5company')
