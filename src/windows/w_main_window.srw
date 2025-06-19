window w_main_window
{
    // Properties
    title = "Banking Application"
    width = 800
    height = 600

    // Controls
    menu m_main_menu
    tab tab_main

    // Events
    event open()
    {
        tab_main.tabpages[1].title = "Account Summary"
        tab_main.tabpages[2].title = "Transaction History"
    }
}
