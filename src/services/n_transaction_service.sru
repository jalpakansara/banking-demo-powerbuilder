nvo n_transaction_service
{
    // Function to perform a transaction
    public function integer of_perform_transaction(n_transaction_entity ao_transaction)
    {
        // Simulate a database insert
        insert into transactions (account_id, type, amount, date)
        values (:ao_transaction.account_id, :ao_transaction.type, :ao_transaction.amount, :ao_transaction.date)
        using sqlca;

        if sqlca.sqlcode = 0 then
            return 1 // Success
        else
            return -1 // Failure
        end if
    }
}
