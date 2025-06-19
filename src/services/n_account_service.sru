nvo n_account_service
{
    // Function to fetch account details
    public function integer of_get_account_details(string as_account_id, ref n_account_entity ao_account)
    {
        // Simulate a database call
        select account_id, account_name, balance
        into :ao_account.account_id, :ao_account.account_name, :ao_account.balance
        from accounts
        where account_id = :as_account_id
        using sqlca;

        if sqlca.sqlcode = 0 then
            return 1 // Success
        else
            return -1 // Failure
        end if
    }
}
