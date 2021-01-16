USE samples
-- insert data
delete from oauth_client_details

insert into oauth_client_details (client_id, client_secret, scope, authorized_grant_types, access_token_validity, refresh_token_validity, additional_information)
    values (
    'adminapp',
    '{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi',
    'read,write,admin',
    'authorization_code,password,refresh_token,implicit',
    9000,
    60000,
    '{}')
