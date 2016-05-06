class App.TicketZoomMeta extends App.ObserverController
  model: 'Ticket'
  observe:
    number: true
    created_at: true
    escalation_time: true

  render: (ticket) =>
    @html App.view('ticket_zoom/meta')(
      ticket:     ticket
      isCustomer: @isRole('Customer')
    )
