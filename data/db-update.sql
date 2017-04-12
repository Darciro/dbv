USE deploy_database

UPDATE wp_options SET option_value="http://newurl.com" WHERE option_name="siteurl";
UPDATE wp_options SET option_value="http://newurl.com" WHERE option_name="home";

