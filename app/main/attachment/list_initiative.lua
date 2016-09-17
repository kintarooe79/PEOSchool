slot.set_layout("custom")
local initiative_id = param.get_id()
local resource = Resource:all_resources_by_type(initiative_id, "archive_url") 

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
                if resource ~= nil and resource.type == "archive_url" then
                  if string.find(resource.url, "https://drive.google.com/") then
                    ui.container {
                      attr = { class = "row" },
                      content = function()
                        ui.image {attr = { class = "icon-small" }, static = "png/Logo_of_Google_Drive.png" }
                        ui.link {
                          attr = { class = "uppercase h2", target = "_blank" },
                          external = resource.url,
                          text = _("Archivio Pubblico")
                        }
                      end
                    }
                  end 
                end
                if resource ~= nil and resource.type == "open_data_url" then
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
                end
                if resource ~= nil and resource.type == "playlist_video_url" then
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
                end
                if resource ~= nil and resource.type == "social_url" then
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
              end
            }							            
          end
        }								                         
      end
    }
  end
}
