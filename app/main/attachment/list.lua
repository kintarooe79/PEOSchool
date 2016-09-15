slot.set_layout("custom")

ui.container {
    attr = { class = "row spaceline" },
    content = function()
        ui.container {
            attr = { class = "col-md-12 well" },
            content = function()
                ui.container {
                    attr = { class = "row" },
                    content = function()
			                ui.container {
			                    attr = { class = "col-md-8 col-md-offset.2" },
			                    content = function()
	                                ui.container {
	                                    attr = { class = "label label-warning-tbox" },
	                                    content = function()
	                                        ui.heading { level = 1, attr = { class = "uppercase" }, content = function() slot.put(_ "Documentazione") end }
	                                    end
	                                }
			                    end
			                }
                    end
                }
						   ui.container {
                         attr = { class = "row" },
                         content = function()
											ui.container {
						                   attr = { class = "col-md-12 well-inside paper" },
						                   content = function()  
														ui.container {
			                                    attr = { class = "row" },
			                                    content = function()
			                                       ui.image {attr = { class = "icon-small" }, static = "png/Logo_of_Google_Drive.png" }
																ui.link {
	                                                attr = { class = "uppercase h2" },
	                                                mode = "redirect",
	                                                text = _("Archivio Pubblico")
	                                             }
										                end
										            } 
														ui.container {
			                                    attr = { class = "row spaceline" },
			                                    content = function()
			                                       ui.image {attr = { class = "icon-small" }, static = "png/open-data.png" }
																ui.link {
			                                          attr = { class = "uppercase h2" },
			                                          mode = "redirect",
			                                          text = _("Open Data")
			                                       }
										                end
										            }
														ui.container {
			                                    attr = { class = "row spaceline" },
			                                    content = function()
			                                       ui.image {attr = { class = "icon-small" }, static = "png/YouTube-Logo.png" }
																ui.link {
			                                          attr = { class = "uppercase h2" },
			                                          mode = "redirect",
			                                          text = _("Play list video pubblica")
			                                       }
										                end
										            }
														ui.container {
			                                    attr = { class = "row spaceline" },
			                                    content = function()
			                                       ui.image {attr = { class = "icon-small" }, static = "png/icon_forum.png" }
																ui.link {
			                                          attr = { class = "uppercase h2" },
			                                          mode = "redirect",
			                                          text = _("Forum, gruppi social o altri luoghi di discussione")
			                                       }
										                end
										            }		
		                               end
		                           }							            
                         end
                     }								                         
                end
	         }
	 end
}
