
local initiative = Initiative:by_id(param.get("initiative_id"))
local url = param.get("link", atom.string)
local url_type = param.get("type", atom.string)

local Archive_type = "https://drive.google.com"
local open_data_type = "https://"
local play_list_type = "https://www.youtube.com"
local social_type = "https://"


local initiator = Initiator:by_pk(initiative.id, app.session.member_id)
if initiator and initiator.accepted and not initiative.issue.half_frozen and not initiative.issue.closed and not initiative.revoked then
	if url == "" then
		local resource = Resource:all_resources_by_type(initiative.id, url_type)
		if resource ~= nil then
			resource:destroy()
		end
    	elseif url_type == "archive_url" then
	if string.find(url, Archive_type) then
        	local resource = Resource:all_resources_by_type(initiative.id, "archive_url")
		if resource == nil then
			resource = Resource:new()
		end
		resource.initiative_id = initiative.id
		resource.url = url
		resource.type = "archive_url"
        	resource:save()
        	slot.put_into("notice", _"Archive url changed")
        	return true
	else
		slot.put_into("error", _"Wrong archive URL: only URL in the format \"https:\/\/...\" are acceptable.")
        	return false
	end
    elseif url_type == "open_data_url" then
	if url == "" or string.find(url, open_data_type) then
        	local resource = Resource:all_resources_by_type(initiative.id, "open_data_url")
        	resource.url = url
		resource.initiative_id = initiative.id
		resource.type = "open_data_url"
        	resource:save()
        	slot.put_into("notice", _"Open Data url changed")
        	return true
	else
		slot.put_into("error", _"Wrong archive URL: only URL in the format \"https:\/\/...\" are acceptable.")
        	return false
	end
    elseif url_type == "playlist_video_url" then
	if url == "" or string.find(url, play_list_type) then
        	local resource = Resource:all_resources_by_type(initiative.id, "playlist_video_url")
        	resource.url = url
		resource.initiative_id = initiative.id
		resource.type = "playlist_video_url"
        	resource:save()
        	slot.put_into("notice", _"Play List Video url changed")
        	return true
	else
		slot.put_into("error", _"Wrong archive URL: only URL in the format \"https:\/\/...\" are acceptable.")
        	return false
	end
    elseif url_type == "social_url" then
	if url == "" or string.find(url, social_type) then
        	local resource = Resource:all_resources_by_type(initiative.id, "social_url")
        	resource.url = url
		resource.initiative_id = initiative.id
		resource.type = "social_url"
        	resource:save()
        	slot.put_into("notice", _"Social url changed")
        	return true
	else
		slot.put_into("error", _"Wrong archive URL: only URL in the format \"https:\/\/...\" are acceptable.")
        	return false
	end
    end
else
    slot.put_into("error", _"You must be an initiator to update the URL.")
    return false
end
