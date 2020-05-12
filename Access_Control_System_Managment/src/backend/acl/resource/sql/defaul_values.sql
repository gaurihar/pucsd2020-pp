USE ACL;
/* user_info values*/

insert into user_info (first_name,last_name,username,email,password,is_user_root) values('ACL','SYSTEM','root','acl.system@acl.com','password',1);

/* groups*/
insert into groups(group_name) values('root');

/*permission table */
insert into permission(permission_num,permission_info) values(100,"read");
insert into permission(permission_num,permission_info) values(010,"write");
insert into permission(permission_num,permission_info) values(001,"execute");
insert into permission(permission_num,permission_info) values(110,"read write");
insert into permission(permission_num,permission_info) values(101,"read excute");
insert into permission(permission_num,permission_info) values(111,"read write excute");



/* resources types*/
insert into resources_type values(1,"File");
insert into resources_type values(2,"Folder");

/* resources*/
insert into resources(resource_type_id,resource_parent,resource_name,resource_path) values(2,0,'ACL_STORAGE','/home/Gauri/ACL');

insert into user_group (groups_id,user_id) values(1,1);

insert into user_permission (resource_id,user_id,permission_num) values(1,1,1);

insert into group_permission (resource_id,groups_id,permission_num) values(1,1,1);

