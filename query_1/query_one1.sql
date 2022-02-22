
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager' 
			and sp.to_date >= '2062-05-13 13:10:01' and sp.from_date <= '2066-12-02 07:28:59'
			and sp.company in (select name from tabCompany where parent_company = '5company')
