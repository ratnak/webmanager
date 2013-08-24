module WebsiteMenuItemsHelper

def mainmenu_for_select
  MainMenu.all.collect { |m| [m.title, m.id] }
end

end
