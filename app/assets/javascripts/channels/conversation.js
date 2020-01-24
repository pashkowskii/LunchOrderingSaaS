App.conversation = App.cable.subscriptions.create("ConversationChannel", {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {
    if (data.mention) {
        swal({
            title: 'You have a new message!',
            text: "Check your inbox",
            icon: "info",
            button: false
        });
    }

    let conversation = $('#replace-conversation').find("[data-conversation-id='" + data['conversation_id'] + "']");

    conversation.find('ul').append(data['message']);

    let messages_list = conversation.find('.messages-list');
    let height = messages_list[0].scrollHeight;
    messages_list.scrollTop(height);
  },
  speak: function(message) {
    return this.perform('speak', {
      message: message
    });
  }
});

$(document).on('submit', '.new_message', function(e) {
  e.preventDefault();
  let values = $(this).serializeArray();
  App.conversation.speak(values);
  $(this).trigger('reset');
});
