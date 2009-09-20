-- ----------------------------
-- Update report_config table,add isOneClickReport column.
-- ----------------------------
INSERT INTO `table_relation` VALUES ('report_config', 'report_output', 'cascade', null, 'reportId', '9', null, null, '0', '0', '0', null, '0', null, null, null);

alter table report_config add column isOneClickReport tinyint(4) not null default 0;

UPDATE `tab` SET `url`='/admin/v2report/category.do' WHERE (`id`='171');
UPDATE `tab` SET `url`='/admin/v2report/saved.do' WHERE (`id`='174');
INSERT INTO `tab` VALUES ('403', null, '7', 'One-Click Report', '0', '/admin/v2report/oneclick.do', '0');
INSERT INTO `tab` VALUES ('404', null, '7', 'Stats Report', '9', '/admin/v2report/stats.do', '0');

-- ----------------------------
-- Add New Report Config Records 
-- ----------------------------

INSERT INTO `report_config` VALUES ('100046', null, 'Sample System', 'Email Open Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '133', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100047', null, null, 'Email Click-through Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '134', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100048', null, null, 'Email Bounce Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '135', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100049', null, null, 'Email Opt-out Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '136', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100050', null, null, 'Invalid Email Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '137', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100051', null, 'Sample System', 'Name Badge Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '121', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100052', null, 'Sample System', 'Activity Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '180', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100053', null, 'Sample System', 'Due Activity Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '181', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100054', null, 'Sample System', 'Declined Donation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '141', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100055', null, 'Sample System', 'Recurring Donation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '148', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100056', null, 'Sample System', 'Declined Recurring Donation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '149', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100057', null, 'Sample System', 'Cancelled Recurring Donation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '1400', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100058', null, 'Sample System', 'Matching Donation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '146', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100059', null, 'Sample System', 'Current Membership Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '170', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100060', null, 'Sample System', 'Membership Due', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '171', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100061', null, 'Sample System', 'Membership Over Due', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '172', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100062', null, 'Sample System', 'Membership Cancellation Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '173', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100063', null, 'Sample System', 'Membership Auto Renewal Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '174', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100064', null, 'Sample System', 'Expired Membership Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '175', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100065', null, 'Sample System', 'Top Seller Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '120', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100066', null, 'Sample System', 'Transaction Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '160', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100067', null, 'Sample System', 'Declined Transaction Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '161', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100068', null, 'Sample System', 'Expired Credit Card Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '162', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100069', null, 'Sample System', 'LYBUNTS Donor Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '154', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100070', null, 'Sample System', 'SYBUNTS Donor Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '155', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100071', null, 'Sample System', 'Soft Credit Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '1401', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100072', null, 'Sample System', 'Stats Report', null, null, null, '1', '0', null, null, '0', '0', '200', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100073', null, 'Sample System', 'LYBUNTS Member Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '215', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100074', null, 'Sample System', 'LYBUNTS Event Registrant Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '216', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100075', null, 'Sample System', 'LYBUNTS Store Customer Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '217', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100076', null, 'Sample System', 'SYBUNTS Member Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '219', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100077', null, 'Sample System', 'SYBUNTS Event Registrant Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '220', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100078', null, 'Sample System', 'SYBUNTS Store Customer Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '221', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100079', null, 'Sample System', 'Social Fundraisers', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '239', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100080', null, 'Sample System', 'People Who Have Received Material', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '249', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100081', null, 'Sample System', 'Members Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '233', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100082', null, 'Sample System', 'Largest Donor(Top 1 Donor)', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '223', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100083', null, 'Sample System', 'Top 25 Donor', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '224', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100084', null, 'Sample System', 'Top 100 Donor', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '225', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100085', null, 'Sample System', 'Top 25 Members', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '231', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100086', null, 'Sample System', 'Top 100 Members', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '232', null, null, null, null, '0');
INSERT INTO `report_config` VALUES ('100087', null, 'Sample System', 'Top 100 Buyer Report', null, null, null, '1', '0', 'Standard Report', null, '0', '0', '237', null, null, null, null, '0');


-- ----------------------------
-- One-Click Report Config Records 
-- ----------------------------

INSERT INTO `report_config` VALUES ('100000', '100000', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Total Year Transactions', 'Show all transactions within this year.', '0', '1', '160', '2009-09-10 15:45:40', 'Administrator ', '2009-09-10 18:00:45', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100001', '100001', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Total Transactions This Month', 'Show all transactions within this month.', '0', '1', '160', '2009-09-10 17:42:04', 'Administrator ', '2009-09-10 17:43:07', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100002', '100002', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Total Transactions Last Month', 'Show all transactions in last month.', '0', '1', '160', '2009-09-10 17:46:47', 'Administrator ', '2009-09-10 17:46:47', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100003', '100003', 'Sample System', 'Daily Report', '', '-30772', '', '0', '0', 'Current Year Donation Total', 'Show the total amount of donations within this year.', '0', '1', '5', '2009-09-10 18:04:24', 'Administrator ', '2009-09-18 17:11:06', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100004', '100004', 'Sample System', 'Daily Report', '', '-30772', '', '0', '0', 'Current Month Donation Total', 'Show the total amount of donations within the current month.', '0', '1', '5', '2009-09-10 18:07:37', 'Administrator ', '2009-09-18 17:14:45', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100005', '100005', 'Sample System', 'Current Membership Report', '', '-30772', null, '0', '0', 'Current Year Membership Total', 'Show the total amount of membership payments within this year.', '0', '1', '170', '2009-09-10 18:10:20', 'Administrator ', '2009-09-10 18:10:20', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100006', '100006', 'Sample System', 'Current Membership Report', '', '-30772', null, '0', '0', 'Current Month Membership Total', 'Show the total amount of membership payments within the current month.', '0', '1', '170', '2009-09-10 18:11:59', 'Administrator ', '2009-09-10 18:11:59', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100007', '100007', 'Sample System', 'Event Overview', '', '-30772', '', '0', '0', 'Current Year Event Total', 'Show the total amount of event registrations within this year.', '0', '1', '53', '2009-09-10 18:22:10', 'Administrator ', '2009-09-19 10:41:32', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100008', '100008', 'Sample System', 'Event Overview', '', '-30772', '', '0', '0', 'Current Month Event Total', 'Show the total amount of event registrations within the current month.', '0', '1', '53', '2009-09-10 18:24:00', 'Administrator ', '2009-09-19 10:42:17', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100009', '100009', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Current Year Store Total', 'Show the total amount of store purchase within this year.', '0', '1', '160', '2009-09-10 18:34:43', 'Administrator ', '2009-09-11 04:09:41', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100010', '100010', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Current Month Store Total', 'Show the total amount of store purchase within the current month.', '0', '1', '160', '2009-09-10 18:34:43', 'Administrator ', '2009-09-10 18:38:01', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100011', '100011', 'Sample System', 'SYBUNTS Report', '', '-30772', null, '0', '0', 'SYBUNT For Donations', 'Find out the donors who contributed some year but not this year.', '0', '1', '155', '2009-09-11 09:33:27', 'Administrator ', '2009-09-19 10:54:50', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100012', '100012', 'Sample System', 'LYBUNTS Report', '', '-30772', null, '0', '0', 'LYBUNT For Donations', 'Find out the donors who contributed last year but not this year.', '0', '1', '154', '2009-09-11 09:35:32', 'Administrator ', '2009-09-19 10:04:15', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100013', '100013', 'Sample System', 'Donor List', '', '-30772', '', '0', '0', 'All Donors', 'All donors.', '0', '1', '1', '2009-09-11 09:36:51', 'Administrator ', '2009-09-18 19:47:43', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100014', '100014', 'Sample System', 'Daily Report', '', '-30772', '', '0', '0', 'Online Donations', 'Pull out your Online donations, including credit card payment and ACH/e-check.', '0', '1', '5', '2009-09-11 09:42:30', 'Administrator ', '2009-09-18 17:16:16', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100015', '100015', 'Sample System', 'Daily Report', '', '-30772', '', '0', '0', 'Offline Donations', 'Pull out your Offline donations.', '0', '1', '5', '2009-09-11 09:42:30', 'Administrator ', '2009-09-18 17:17:43', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100016', '100016', 'Sample System', 'Campaign Overview', '', '-30772', '', '0', '0', 'All Donation Campaigns For This Year', 'All donation campaigns for this year and totals for each one', '0', '1', '42', '2009-09-11 09:52:03', 'Administrator ', '2009-09-19 10:21:19', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100017', '100017', 'Sample System', 'Recurring Donation Report', '', '-30772', null, '0', '0', 'All Current Recurring Donation', 'List current valid recurring donations.', '0', '1', '148', '2009-09-11 09:53:53', 'Administrator ', '2009-09-18 19:08:34', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100018', '100018', 'Sample System', 'Current Membership Report', '', '-30772', null, '0', '0', 'All Current Members', 'All current \"membership\" members.', '0', '1', '170', '2009-09-11 10:07:54', 'Administrator ', '2009-09-11 10:08:33', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100019', '100019', 'Sample System', 'Guest Name Tags', '', '-30772', '', '0', '0', 'All Event Attendees Ever', 'List everyone who has ever attended your event.', '0', '1', '52', '2009-09-11 10:09:35', 'Administrator ', '2009-09-19 16:51:06', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100020', '100020', 'Sample System', 'Event Overview', '', '-30772', '', '0', '0', 'All Events For This Year', 'List all events for this year and the stats for each event.', '0', '1', '53', '2009-09-11 10:21:38', 'Administrator ', '2009-09-19 10:43:19', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100021', '100021', '', 'Top Gift Store Buyers', '', '-30772', '', '0', '0', 'All Store Customers Ever', 'List people who has ever purchased product/gift from your store.', '0', '1', '20', '2009-09-11 10:23:24', 'Administrator ', '2009-09-19 13:14:00', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100022', '100022', 'Sample System', 'Constituent Email Listing', '', '-30772', '', '0', '0', 'All Email List', 'Your complete email list.', '0', '1', '17', '2009-09-11 10:24:46', 'Administrator ', '2009-09-11 03:58:03', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100023', '100023', 'Sample System', 'Pledge Status', '', '-30772', '', '0', '0', 'Current Year Pledges', 'List current year\'s pledges and their payment status.', '0', '1', '13', '2009-09-11 10:26:26', 'Administrator ', '2009-09-18 18:51:12', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100024', '100024', 'Sample System', 'Pledge Status', '', '-30772', '', '0', '0', 'Current Open Pledges', 'Find out pledges that have not been fully paid yet.', '0', '1', '13', '2009-09-11 10:45:14', 'Administrator ', '2009-09-18 18:52:40', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100025', '100025', 'Sample System', 'Matching Donation Report', '', '-30772', null, '0', '0', 'Matching Donations Due', 'Find out those company-matching donations due.', '0', '1', '146', '2009-09-11 11:23:10', 'Administrator ', '2009-09-18 18:28:16', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100026', '100026', 'Sample System', 'Pledge Status', '', '-30772', '', '0', '0', 'Over-Due Pledges', 'Find out those over-due pledges.', '0', '1', '13', '2009-09-11 11:29:05', 'Administrator ', '2009-09-18 18:54:24', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100027', '100027', 'Sample System', 'Expired Credit Card Report', '', '-30772', null, '0', '0', 'Declined Credit Cards', 'Identify declined credit cards in your recurring donation and/or recurring membership. ', '0', '1', '162', '2009-09-11 11:29:51', 'Administrator ', '2009-09-11 11:29:51', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100028', '100028', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'This Month Credit Card Payments', 'List all credit card payments coming in this month.', '0', '1', '160', '2009-09-11 11:42:10', 'Administrator ', '2009-09-11 11:42:10', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100029', '100029', 'Sample System', 'Transaction Report', '', '-30772', null, '0', '0', 'Last Month Credit Card Payments', 'List all credit card payments coming in last month.', '0', '1', '160', '2009-09-11 11:42:10', 'Administrator ', '2009-09-11 11:44:38', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100030', '100030', 'Sample System', 'Frequent Donor Report', '', '-30772', null, '0', '0', 'Donor Frequency Report', 'Show how many donors have donated only once & the total amount, twice & the total amount, three times & the total amount...', '0', '1', '23', '2009-09-11 11:48:00', 'Administrator ', '2009-09-11 11:48:00', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100031', '100031', 'Sample System', 'LYBUNTS Member Report', '', '-30772', null, '0', '0', 'LYBUNT For Membership', 'Find out people who were your members last year but not this year.', '0', '1', '215', '2009-09-11 15:05:19', 'Administrator ', '2009-09-11 15:12:34', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100032', '100032', 'Sample System', 'SYBUNTS Member Report', '', '-30772', null, '0', '0', 'SYBUNT For Membership', 'Find out people who were your members some year but not this year.', '0', '1', '219', '2009-09-11 15:07:54', 'Administrator ', '2009-09-11 15:07:54', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100033', '100033', 'Sample System', 'LYBUNTS Store Customer Report', '', '-30772', null, '0', '0', 'LYBUNT For Store', 'Find out the store customers who purchased your store product last year but not this year.', '0', '1', '217', '2009-09-11 15:09:06', 'Administrator ', '2009-09-19 13:25:36', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100034', '100034', 'Sample System', 'SYBUNTS Store Customer Report', '', '-30772', null, '0', '0', 'SYBUNT For Store', 'Find out the store customers who purchased your store product some year but not this year.', '0', '1', '221', '2009-09-11 15:10:02', 'Administrator ', '2009-09-19 13:27:00', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100035', '100035', 'Sample System', 'LYBUNTS Event Registrant Report', '', '-30772', null, '0', '0', 'LYBUNT For Events', 'Find out the event registrants who registered for your event(s) last year but not this year.', '0', '1', '216', '2009-09-11 15:11:09', 'Administrator ', '2009-09-19 13:31:39', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100036', '100036', 'Sample System', 'SYBUNTS Event Registrant Report', '', '-30772', null, '0', '0', 'SYBUNT For Events', 'Find out the event registrants who registered for your event(s) some year but not this year.', '0', '1', '220', '2009-09-11 15:11:51', 'Administrator ', '2009-09-19 11:04:37', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100037', '100037', 'Sample System', 'Social Fundraisers', '', '-30772', null, '0', '0', 'All Social Fundraisers', 'View all social fundraisers in your organization, including team captains and team members.', '0', '1', '239', '2009-09-11 15:40:33', 'Administrator ', '2009-09-11 15:40:33', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100038', '100038', 'Sample System', 'People Who Have Received Material', '', '-30772', null, '0', '0', 'All People Who Have Received Material', 'All people who have received material packages from your organization.', '0', '1', '249', '2009-09-11 16:22:40', 'Administrator ', '2009-09-11 16:23:15', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100039', '100039', 'Sample System', 'Largest Donor(Top 1 Donor)', '', '-30772', null, '0', '0', 'Largest Donor', 'Find out who has donated the most to your organization.', '0', '1', '223', '2009-09-12 15:34:06', 'Administrator ', '2009-09-13 11:43:54', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100040', '100040', 'Sample System', 'Top 25 Donor', '', '-30772', null, '0', '0', 'Top 25 Donor', 'Top 25 donors in terms of the total donation amount.', '0', '1', '224', '2009-09-12 15:39:04', 'Administrator ', '2009-09-13 11:44:18', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100041', '100041', 'Sample System', 'Top 100 Donor', '', '-30772', null, '0', '0', 'Top 100 Donor', 'Top 100 donors in terms of the total donation amount.', '0', '1', '225', '2009-09-12 15:40:35', 'Administrator ', '2009-09-13 11:44:47', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100042', '100042', 'Sample System', 'Top 25 Members', '', '-30772', null, '0', '0', 'Top 25 Member', 'Top 25 most dedicated members in terms of the total time of being your members.', '0', '1', '231', '2009-09-12 15:42:19', 'Administrator ', '2009-09-13 11:45:37', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100043', '100043', 'Sample System', 'Top 100 Members', '', '-30772', null, '0', '0', 'Top 100 Member', 'Top 100 most dedicated members in terms of the total time of being your members.', '0', '1', '232', '2009-09-12 15:43:26', 'Administrator ', '2009-09-13 11:51:52', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100044', '100044', 'Sample System', 'Top 100 Buyer Report', '', '-30772', null, '0', '0', 'Top 100 Store Customer', 'Top 100 store customers in terms of the total purchase amount.', '0', '1', '237', '2009-09-12 15:45:27', 'Administrator ', '2009-09-13 11:51:11', 'Administrator ', '1');
INSERT INTO `report_config` VALUES ('100045', '100045', 'Sample System', 'Members Report', '', '-30772', null, '0', '0', 'All Members Ever', 'All members ever. This refers to \"membership\" member, not the regular constituents.', '0', '1', '233', '2009-09-12 16:09:51', 'Administrator ', '2009-09-12 16:11:23', 'Administrator ', '1');
