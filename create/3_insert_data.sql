\c cs415

-- Insert data into WebUser
INSERT INTO WebUser (first_name, last_name, email, password, created_date, is_active, last_login)
VALUES
  ('Main', 'User', 'muser@email.com', '12345', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP),
  ('Willie', 'Nelson', 'willie.nelson@email.com', '12345', CURRENT_TIMESTAMP, '1', CURRENT_TIMESTAMP);
  
-- Reset sequence
ALTER SEQUENCE WebUser_web_user_id_seq RESTART WITH 100;

-- Insert data into AddressType
INSERT INTO AddressType (address_type)
VALUES ('Home'), ('Work'), ('Billing'), ('Shipping');
ALTER SEQUENCE AddressType_address_type_id_seq RESTART WITH 6;

-- Insert data into UserAddress
INSERT INTO UserAddress (web_user_id, street_1, street_2, city, st, zip, country, address_type_id, created_date)
VALUES
  (1, '100 Fake St', '', 'Fake City', 'UT', '84032', 'United States', 1, CURRENT_TIMESTAMP),
  (1, '200 Fake Ave', '', 'Faker City', 'UT', '84033', 'United States', 3, CURRENT_TIMESTAMP),
  (2, '200 Fake Ave', '', 'Fakie City', 'UT', '84033', 'United States', 1, CURRENT_TIMESTAMP);
ALTER SEQUENCE UserAddress_user_address_id_seq RESTART WITH 4;

-- Insert data into user_info
INSERT INTO UserInfo (web_user_id, profile_bio, profile_picture, created_date, modified_date)
VALUES
  (1, 'Main user of the platform.', 'main_user.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (2, 'Country music legend.', 'willie_nelson.jpg', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
ALTER SEQUENCE UserInfo_user_info_id_seq RESTART WITH 3;

-- Insert data into phone_type
INSERT INTO PhoneType (phone_type)
VALUES ('Home'), ('Work'), ('Mobile');
ALTER SEQUENCE PhoneType_phone_type_id_seq RESTART WITH 4;

-- Insert data into user_phone
INSERT INTO UserPhone (web_user_id, phone_number, phone_type_id, created_date, is_active)
VALUES
  (1, '8015551234', 1, CURRENT_TIMESTAMP, true),
  (1, '8015555678', 3, CURRENT_TIMESTAMP, true),
  (2, '8015559876', 1, CURRENT_TIMESTAMP, true);
ALTER SEQUENCE UserPhone_user_phone_id_seq RESTART WITH 4;

-- Insert data into page_data
INSERT INTO PageData (page_name, page_title, page_description, page_picture, page_menu)
VALUES
  ('home', 'Home', 'Welcome to our site!', 'home.jpg', 'Main Menu'),
  ('about', 'About Us', 'We are a company.', 'about_us.jpg', 'Main Menu'),
  ('contact', 'Contact Us', 'Contact us at 801-555-1234.', 'contact_us.jpg', 'Footer Menu');
ALTER SEQUENCE PageData_page_data_id_seq RESTART WITH 4;