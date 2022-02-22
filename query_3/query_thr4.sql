
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager'
			and sp.to_date >= '2096-09-02 23:53:33' and sp.from_date <= '2096-09-21 07:41:47' and sp.company = '13company'
