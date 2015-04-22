/* Query to find all constituents with an edu email address from Texas that have supplied more than 5 revenues */
SELECT c.firstName,c.lastName FROM Constituents AS c JOIN Revenue as r ON c.id=r.constituent_paid WHERE email LIKE "%.edu" AND c.state="TX" GROUP BY c.lastName HAVING COUNT(r.id) > 5;

/* Query to find the total amount of deposits in account 15555555 that were designated for events*/
SELECT SUM(r.amount) FROM Revenue AS r JOIN Deposits AS d ON d.revenue_id=r.id JOIN Company_Account AS ca ON d.account_number=ca.account_number WHERE d.account_number=15555555 AND ca.designation="events";

/* Query to find the addresses for all Winter Lecture Series events in a case insensitive format */
SELECT address FROM Event WHERE name COLLATE UTF8_GENERAL_CI LIKE "%winter lecture series%";

/* Query to find all payments between the current datetime and May 1st, 2004 */
SELECT * FROM Pays WHERE dateSent < now() AND dateSent > '2004-04-31 23:59:59';

/* Query to find the amount of mailings sent to the constituent with the most mailings */
SELECT MAX(m_count) FROM (SELECT COUNT(*) m_count FROM Mailing AS m JOIN Constituents AS c ON m.constituent_id=c.id GROUP BY c.id) AS counts;
