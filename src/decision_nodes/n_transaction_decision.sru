nvo n_transaction_decision
{
    // Function to validate a transaction
    public function boolean of_validate_transaction(n_transaction_entity ao_transaction)
    {
        if ao_transaction.amount <= 0 then
            return false // Invalid transaction
        end if

        if ao_transaction.type = "withdrawal" then
            n_account_service lnv_account_service
            n_account_entity lnv_account
            lnv_account_service.of_get_account_details(ao_transaction.account_id, lnv_account)

            if lnv_account.balance < ao_transaction.amount then
                return false // Insufficient funds
            end if
        end if

        return true // Valid transaction
    }
}
