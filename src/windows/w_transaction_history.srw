window w_transaction_history
{
    // Properties
    title = "Transaction History"
    width = 800
    height = 500

    // Controls
    datawindow dw_transaction_history
    button btn_refresh

    // Constructor
    event open()
    {
        // Initialize DataWindow
        dw_transaction_history.dataobject = "d_transaction_history"
        dw_transaction_history.settransobject(sqlca)
        dw_transaction_history.retrieve()
    }

    // Refresh Button Click Event
    event clicked(button btn_refresh)
    {
        dw_transaction_history.retrieve()
    }
}
