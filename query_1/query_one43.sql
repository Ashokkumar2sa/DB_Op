
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Engineer' 
			and sp.to_date >= '2027-11-06 06:08:48' and sp.from_date <= '2089-08-14 09:02:07'
			and sp.company in (select name from tabCompany where parent_company = '8company')
