window w_account_summary
{
    // Properties
    title = "Account Summary"
    width = 600
    height = 400

    // Controls
    datawindow dw_account_summary
    button btn_refresh

    // Constructor
    event open()
    {
        // Initialize DataWindow
        dw_account_summary.dataobject = "d_account_summary"
        dw_account_summary.settransobject(sqlca)
        dw_account_summary.retrieve()
    }

    // Refresh Button Click Event
    event clicked(button btn_refresh)
    {
        dw_account_summary.retrieve()
    }
}
