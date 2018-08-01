@RequestMapping(value="/checkBox.mvc")
	public String getCheckBoxDemo(Model m)
	{
		List<String> list = new ArrayList<String>();
		list.add("item1");
		list.add("item2");
		list.add("item3");
		
		m.addAttribute("list", list);
		m.addAttribute("cForm", new CheckBoxForm());
		
		return "checkBoxDemo";
	}
	@RequestMapping(value="/checkBoxDemo.mvc")
	public String checkBoxDemo(@ModelAttribute("cForm") CheckBoxForm form ,Model m)
	{
		List<String> list = form.getList();
		System.out.println("lists : "+list);
				
		return "checkBoxDemo";
	}
	
	
