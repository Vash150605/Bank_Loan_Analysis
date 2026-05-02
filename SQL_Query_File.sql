CREATE TABLE loan_data (
    Loan_ID INT PRIMARY KEY,
	Age INT,
	Income FLOAT,
	Employment_Length_Years INT,
	Home_Ownership VARCHAR(50),
	Loan_Intent VARCHAR(50),
	Loan_Amount FLOAT,
	Interest_Rate FLOAT,
	Loan_Status INT
);

-- Query 1: Overall Default Rate
SELECT
    COUNT(*) as Total_Loans,
	SUM(Loan_Status) as Total_Defaults,
	(SUM(Loan_Status) * 100.0 / COUNT(*)) as Default_Rate_Percentage
FROM loan_data;

-- Query 2: Default Rate by Home Ownership
SELECT
    Home_Ownership,
	COUNT(*) as Total_Loans,
	ROUND(AVG(Loan_Status) * 100, 2) as Default_Rate
FROM loan_data
GROUP BY Home_Ownership
ORDER BY Default_Rate DESC;