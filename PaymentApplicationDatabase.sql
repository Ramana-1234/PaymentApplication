create database payment_Application;
use payment_Application;
CREATE TABLE user_details (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address TEXT NOT NULL);

INSERT INTO user_details (user_name, password, first_name, last_name, phone, email, address) VALUES
('venkat_ramana', 'ramana123', 'Venkat', 'ramana', '9441798591', 'ramana@gmail.com', '6-94 sugarcane raosd ,RCPM , AP'),
('mahendra_varma', 'varma123', 'mahendra', 'varma', '9848752652', 'varma@gmail.com', '589 Main raod, kakinada,AP'),
('sai_madhav', 'password789', 'sai', 'madhav', '6301354789', 'madhav@gmail.com', '155 gandhi St, vizag,AP'),
('tulsi_das', 'password101', 'tulsi', 'das', '1236547890', 'das@mail.com', '256 MVP, vizag, AP'),
('vinesh_kumar', 'password202', 'vinesh', 'kumar', '9988776655', 'vk@mail.com', '389 waltair St, vizag, AP');

CREATE TABLE user_account_details (
    user_account_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    account_open_date DATE NOT NULL,
    current_wallet_balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    linked_bank_accounts_count INT NOT NULL DEFAULT 0,
    wallet_pin VARCHAR(4) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user_details(user_id));
    
    INSERT INTO user_account_details (user_id, account_open_date, current_wallet_balance, linked_bank_accounts_count, wallet_pin) VALUES
(1,'2020-08-15',  9000.00, 2, '9874'),
(2,'2017-04-10',  6000.00, 1, '4789'),
(3,'2019-06-25',  350.00, 1, '1236'),
(4,'2024-05-10',  200.00, 2, '6321'),
(5,'2023-02-01',  3600.00, 1, '2580');


CREATE TABLE bank_accounts (
    bank_account_id INT AUTO_INCREMENT PRIMARY KEY,
    user_account_id INT NOT NULL,
    user_id INT NOT NULL,
    account_number VARCHAR(20) NOT NULL,
    ifsc_code VARCHAR(15) NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    bank_account_branch_location VARCHAR(100) NOT NULL,
    is_active VARCHAR(10) NOT NULL,
    FOREIGN KEY (user_account_id) REFERENCES user_account_details(user_account_id),
    FOREIGN KEY (user_id) REFERENCES user_details(user_id));

INSERT INTO bank_accounts (user_account_id, user_id, account_number, ifsc_code, bank_name, bank_account_branch_location, is_active) VALUES
(6, 1, '123456789012', 'ABCD1234567', 'State Bank', 'City Branch 1', TRUE),
(7, 2, '987654321098', 'EFGH7654321', 'National Bank', 'City Branch 2', TRUE),
(8, 3, '112233445566', 'IJKL1122334', 'Global Bank', 'City Branch 3', TRUE),
(9, 4, '998877665544', 'MNOP9988776', 'City Bank', 'City Branch 4', TRUE),
(10, 5, '556677889900', 'QRST5566778', 'International Bank', 'City Branch 5', TRUE);


CREATE TABLE source_types (
    source_id INT AUTO_INCREMENT PRIMARY KEY,
    source_type_code VARCHAR(50) NOT NULL UNIQUE);
    
    INSERT INTO source_types (source_type_code) VALUES
('Bank Account'),
('Wallet Account'),
('Third Party Transaction');


ALTER TABLE source_types ADD COLUMN source_type_description  VARCHAR(20)NOT NULL ;

ALTER TABLE source_types MODIFY COLUMN source_type_description VARCHAR(100) NOT NULL;

UPDATE source_types  SET source_type_description = source_type_code  WHERE source_id > 0; 

UPDATE source_types SET source_type_code = 'BA' WHERE source_id=1;


UPDATE source_types SET source_type_code = 'WA' WHERE source_id=2;

UPDATE source_types SET source_type_code = 'TPA' WHERE source_id=3;


CREATE TABLE transaction_details (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_date_time DATETIME NOT NULL,
    source_id INT NOT NULL,
    destination_id INT NOT NULL,
    source_type_id INT NOT NULL,
    destination_type_id INT NOT NULL,
    FOREIGN KEY (source_type_id) REFERENCES source_types(source_id),
    FOREIGN KEY (destination_type_id) REFERENCES source_types(source_id)
);

INSERT INTO transaction_details (transaction_date_time, source_id, destination_id, source_type_id, destination_type_id) VALUES
('2023-09-01 10:00:00', 1, 2, 1, 2),
('2023-09-02 11:30:00', 2, 3, 2, 1),
('2023-09-03 12:45:00', 3, 4, 1, 3),
('2023-09-04 14:15:00', 4, 5, 3, 2),
('2023-09-05 15:30:00', 5, 1, 2, 1);


    





