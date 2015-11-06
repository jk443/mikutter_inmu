# -*- coding: utf-8 -*-

Plugin.create(:mikutter_ninja) do
  command(
          :mikutter_ninja,
          name: '忍殺語',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline
          ) do |opt|
    to_name   = opt.messages[0].user.idname
    from_name = Service.primary.user

    postfix = []

    greets = "ドーモ、@"+to_name + "=サン、"+"@"+from_name+"デス。"

    n_msg = ""
    #greets.shuffle!
    #postfix.shuffle!
    msg = greets

    farewell = "サツバツ！"




    Service.primary.post(:message => msg,
                         :replyto => opt.messages[0])
  end
end
