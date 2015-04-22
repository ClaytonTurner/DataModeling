INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Beckham Jr.','Odell', '155 Main St.', 'New York', 'NY', 10004, 2012345676, 'BetterThanDez@nfl.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Vereen','Shane', '155 First Ave.', 'New York', 'NY', 10003, 2013342543, 'NeedMoreRings@nfl.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Obama','Barack', '1600 Pennsylvania Ave.', 'Washington', 'DC', 20500, 1882345676, 'Prez@whitehouse.gov');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Romo','Antonio', '0 Rings Lane', 'Dallas', 'TX', 98765, 1807564820, 'brokenback@nfl.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Manning','Elisha', '185 Picks Road', 'East Rutherford', 'NJ', 07073, 2015591515, 'ChargersPoutyPants@nfl.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Mendel','Gregor', '1 Main St.', 'Hyncice', 'Moravia', 65745, 1998887766, 'ILikePlants@geneology.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Took','Peregrin', 'The Took Smial', 'The Shire', 'Middle-Earth', 11111, 2023435444, 'pippin@lotr.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Brandybuck','Mariadoc', 'The Brandybuck Smial', 'The Shire', 'Middle-Earth', 11111, 2023435444, 'mary@lotr.com');

INSERT INTO constituents (lastName, firstName, address, city, state, zip, phone, email)
VALUES ('Professorton','Teacher', '55 Education Avenue', 'Austin', 'TX', 78610, 1125125120, 'IAmATeacherAMA@someuniversity.edu');

INSERT INTO company_account (account_number, designation)
VALUES (12344244, 'operations');

INSERT INTO company_account (account_number, designation)
VALUES (95758494, 'endowment');

INSERT INTO company_account (account_number, designation)
VALUES (46485766, 'reserve');

INSERT INTO company_account (account_number, designation)
VALUES (44737382, 'operations');

INSERT INTO company_account (account_number, designation)
VALUES (87834733, 'campaign');

INSERT INTO company_account (account_number, designation)
VALUES (15555555, 'events');

INSERT INTO company_account (account_number, designation)
VALUES (1234474, 'salaries');
INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (350.00, 'Membership Dues', 1);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (200.00, 'Capital Campaign', 1);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (3500.00, 'Membership Dues', 4);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (2500.00, 'Membership Dues', 2);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (30.00, 'Annual Appeal', 2);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (45.00, 'Merchandise', 3);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (98.55, 'Photocopy Fees', 6);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 6);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 5);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 4);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 3);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 2);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 1);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (100.00, 'Event', 1);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (5.00, 'Event', 9);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (50.00, 'Merchandise', 9);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (15.00, 'Annual Appeal', 9);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (25.00, 'Event', 9);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (35.00, 'Event', 9);

INSERT INTO revenue (amount, payment_type, constituent_paid)
VALUES (45.00, 'Event', 9);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (12344244, 1);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (95758494, 2);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (95758494, 3);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (46485766, 4);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (44737382, 5);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (87834733, 6);

INSERT INTO Deposits (account_number, revenue_id)
VALUES (15555555, 7);

INSERT INTO event (name, description, address)
VALUES ('2015 Winter Lecture Series', 'A series of lectures on SCs most remarkable figures', 'First Baptist Church');

INSERT INTO event (name, description, address)
VALUES ('2015 Annual Meeting', 'All members attend a luncheon and speech', 'Carolina Yacht Club');

INSERT INTO event (name, description, address)
VALUES ('A Conversation on the Siege', 'A lecture on the siege of Charleston', 'Fireproof Building');

INSERT INTO event (name, description, address)
VALUES ('Archive Opening', 'A reception to celebrate the new house of the collection', 'Addlestone Library');

INSERT INTO event (name, description, address)
VALUES ('Carolina Day', 'A celebration of SCs role in the Civil War', 'The Battery');

INSERT INTO event (name, description, address)
VALUES ('2014 Winter Lecture Series', 'A series of lectures on SCs most remarkable figures', 'First Baptist Church');

INSERT INTO event (name, description, address)
VALUES ('2014 Annual Meeting', 'All members attend a luncheon and speech', 'Carolina Yacht Club');

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', '2015 Annual Meeting', 8);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', '2014 Annual Meeting', 9);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', '2015 Winter Lecture Series', 10);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', 'Carolina Day', 11);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', '2015 Annual Meeting', 12);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', 'Archive Opening', 13);

INSERT INTO Funds (account_number, date_sent, event_name, revenue_id)
VALUES (15555555, '2004-04-30 11:11:11', '2014 Winter Lecture Series', 14);


INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2006-04-30 01:01:01', 'Photocopy Fees', 6, 7);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2004-04-30 11:11:11', 'Merchandise', 3, 6);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2004-04-30 11:11:11', 'Annual Appeal', 2, 5);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2004-04-30 11:12:12', 'Membership Dues', 2, 4);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2004-04-24 11:11:11', 'Membership Dues', 4, 3);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2014-05-30 11:11:11', 'Capital Campaign', 1, 2);

INSERT INTO Pays (dateSent, typeOf, constituent_id, revenue_id)
VALUES ('2013-04-30 11:11:11', 'Membership Dues', 1, 1);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2005-12-30 23:59:59', 'Renewal Notice', 2);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2014-10-11 00:59:59', 'Payment Acknowledgement', 1);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2006-04-20 01:01:01', 'Renewal Notice', 4);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2008-09-01 09:21:01', 'Pledge Invoice', 6);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2010-10-01 01:01:01', 'Event Invitation', 3);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2006-04-30 01:01:01', 'Renewal Notice', 7);

INSERT INTO mailing (date_sent, type_of, constituent_id)
VALUES ('2006-04-30 01:01:01', 'Event Invitation', 1);
