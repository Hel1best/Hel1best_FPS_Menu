ESX = exports["es_extended"]:getSharedObject()

TriggerEvent('chat:addSuggestion', '/fps', 'Open fps boost menu')

--Menu
RegisterNetEvent('Hel1best:fpsmenu') 
AddEventHandler('Hel1best:fpsmenu', function()
  lib.showContext('hel1bestfpsmenu')
end)

--FPS Boost #1
RegisterNetEvent('Hel1best:fps1') 
AddEventHandler('Hel1best:fps1', function()
  SetTimecycleModifier('yell_tunnel_nodirect')
  lib.notify({title = '',description = 'FPS Boost',type = 'success'})
end)

--Lights Mode
RegisterNetEvent('Hel1best:fps2') 
AddEventHandler('Hel1best:fps2', function()
  SetTimecycleModifier('tunnel')
  lib.notify({title = '',description = 'Lights Mode',type = 'success'})
end)

--Graphics
RegisterNetEvent('Hel1best:fps3') 
AddEventHandler('Hel1best:fps3', function()
  SetTimecycleModifier('MP_Powerplay_blend')
  SetExtraTimecycleModifier('reflection_correct_ambient')
  lib.notify({title = '',description = 'Graphics',type = 'success'})
end)

--Simple/Reset
RegisterNetEvent('Hel1best:fps4') 
AddEventHandler('Hel1best:fps4', function()
  SetTimecycleModifier()
  ClearTimecycleModifier()
  ClearExtraTimecycleModifier()
  lib.notify({title = '',description = 'Resetedt to default',type = 'success'})
end)



lib.registerContext({
  id = 'hel1bestfpsmenu',
  title =  'FPS Menu',
  onExit = function()
  end,
  options = {
      {
          title = 'FPS Boost',
          description = 'Helps best with boosting fps',
          icon = 'far fa-newspaper',
          event = 'Hel1best:fps1',
      },
      {
        title = 'Lights Mode',
        description = 'Still looks good and boost your fps',
        icon = 'far fa-lightbulb',
        event = 'Hel1best:fps2',
    },
    {
      title = 'Graphics',
      description = 'Looks decent and boost fps',
      icon = 'far fa-newspaper',
      event = 'Hel1best:fps3',
  },
      {
          title = 'Reset',
          description = '',
          icon = 'fa fa-remove',
          event = 'Hel1best:fps4',
      },
      
  },
})
                