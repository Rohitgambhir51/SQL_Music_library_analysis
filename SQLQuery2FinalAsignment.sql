SELECT 
    ID, 
    Age, 
    Experience, 
    Income, 
    Family, 
    CCAvg, 
    Education, 
    Mortgage, 
    Securities_Account, 
    CD_Account, 
    Online, 
    CreditCard, 
    Personal_Loan
FROM 
    Bank_Personal_Loan_Modelling
WHERE 
    Age BETWEEN 25 AND 60                  -- Targeting working-age population
    AND Income > 60                        -- Targeting customers with higher income
    AND Education >= 2                     -- Targeting customers with at least a graduate level education
    AND CCAvg > 2                          -- Targeting customers with higher credit card usage
    AND Mortgage IS NULL OR Mortgage < 50  -- Targeting customers with lower or no mortgage
    AND Securities_Account = 0             -- Excluding those with securities account as they might have other investment priorities
    AND CD_Account = 0                     -- Excluding those with CD account as they might be more conservative in investments
    AND Online = 1                         -- Targeting customers who use online banking
    AND CreditCard = 1                     -- Targeting customers who are already comfortable with using credit
ORDER BY 
    Income DESC,                           -- Prioritize customers by income level
    CCAvg DESC;                            -- Prioritize customers by credit card spending

	--#All the query above are contributed by all the group members: Rohit Gambhir, Kuan-Wen Chang, Dhwani Goyal, Amit Kandpal ,Falooto Sinmiloluwa
