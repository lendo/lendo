CREATE TABLE `donation_stats` (
  `id` int(11) NOT NULL auto_increment,
  `userId` varchar(25) NOT NULL default '',
  `firstDonationDate` date default NULL,
  `lastDonationDate` date default NULL,
  `amount_this_4` double(15,2) default '0.00',
  `f_amount_this_4` double(15,2) default '0.00',
  `p_amount_this_4` double(15,2) default '0.00',
  `p_f_amount_this_4` double(15,2) default '0.00',
  `amount_this_3` double(15,2) default '0.00',
  `f_amount_this_3` double(15,2) default '0.00',
  `p_amount_this_3` double(15,2) default '0.00',
  `p_f_amount_this_3` double(15,2) default '0.00',
  `amount_this_2` double(15,2) default '0.00',
  `f_amount_this_2` double(15,2) default '0.00',
  `p_amount_this_2` double(15,2) default '0.00',
  `p_f_amount_this_2` double(15,2) default '0.00',
  `amount_this_1` double(15,2) default '0.00',
  `p_amount_this_1` double(15,2) default '0.00',
  `f_amount_this_1` double(15,2) default '0.00',
  `p_f_amount_this_1` double(15,2) default '0.00',
  `amount_this` double(15,2) default NULL,
  `p_amount_this` double(15,2) default NULL,
  `f_amount_this` double(15,2) default NULL,
  `p_f_amount_this` double(15,2) default NULL,
  `count_this` double(12,2) default NULL,
  `p_count_this` double(12,2) default NULL,
  `f_count_this` double(12,2) default NULL,
  `p_f_count_this` double(12,2) default NULL,
  `count_this_1` double(12,2) default NULL,
  `p_count_this_1` double(12,2) default NULL,
  `f_count_this_1` double(12,2) default NULL,
  `p_f_count_this_1` double(12,2) default NULL,
  `count_this_2` double(12,2) default NULL,
  `p_count_this_2` double(12,2) default NULL,
  `f_count_this_2` double(12,2) default NULL,
  `p_f_count_this_2` double(12,2) default NULL,
  `count_this_3` double(12,2) default NULL,
  `f_count_this_3` double(12,2) default NULL,
  `p_count_this_3` double(12,2) default NULL,
  `p_f_count_this_3` double(12,2) default NULL,
  `count_this_4` double(12,2) default NULL,
  `f_count_this_4` double(12,2) default NULL,
  `p_count_this_4` double(12,2) default NULL,
  `p_f_count_this_4` double(12,2) default NULL,
  `amount_total` double(12,2) default NULL,
  `p_amount_total` double(12,2) default NULL,
  `count_total` double(12,2) default NULL,
  `p_count_total` double(12,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



CREATE TABLE `event_registration_stats` (
  `id` int(11) NOT NULL auto_increment,
  `userId` varchar(25) default NULL,
  `firstRegDate` datetime default NULL,
  `lastRegDate` datetime default NULL,
  `amount_total` double(15,0) default NULL,
  `count_total` double(15,0) default NULL,
  `amount_this` double(15,2) default NULL,
  `count_this` double(15,2) default NULL,
  `f_amount_this` double(15,2) default NULL,
  `f_count_this` double(15,2) default NULL,
  `amount_this_1` double(15,2) default NULL,
  `count_this_1` double(15,2) default NULL,
  `f_amount_this_1` double(15,2) default NULL,
  `f_count_this_1` double(15,2) default NULL,
  `amount_this_2` double(15,2) default NULL,
  `count_this_2` double(15,2) default NULL,
  `f_amount_this_2` double(15,2) default NULL,
  `f_count_this_2` double(15,2) default NULL,
  `amount_this_3` double(15,2) default NULL,
  `count_this_3` double(15,2) default NULL,
  `f_amount_this_3` double(15,2) default NULL,
  `f_count_this_3` double(15,2) default NULL,
  `amount_this_4` double(15,2) default NULL,
  `count_this_4` double(15,2) default NULL,
  `f_amount_this_4` double(15,2) default NULL,
  `f_count_this_4` double(15,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



CREATE TABLE `membership_stats` (
  `id` int(11) NOT NULL auto_increment,
  `accountId` varchar(25) default NULL,
  `firstJoinDate` datetime default NULL,
  `lastJoinDate` datetime default NULL,
  `amount_total` double(15,2) default NULL,
  `count_total` double(15,2) default NULL,
  `amount_this` double(15,2) default NULL,
  `count_this` double(15,2) default NULL,
  `f_amount_this` double(15,2) default NULL,
  `f_count_this` double(15,2) default NULL,
  `amount_this_1` double(15,2) default NULL,
  `count_this_1` double(15,2) default NULL,
  `f_amount_this_1` double(15,2) default NULL,
  `f_count_this_1` double(15,2) default NULL,
  `amount_this_2` double(15,2) default NULL,
  `count_this_2` double(15,2) default NULL,
  `f_amount_this_2` double(15,2) default NULL,
  `f_count_this_2` double(15,2) default NULL,
  `amount_this_3` double(15,2) default NULL,
  `count_this_3` double(15,2) default NULL,
  `f_amount_this_3` double(15,2) default NULL,
  `f_count_this_3` double(15,2) default NULL,
  `amount_this_4` double(15,2) default NULL,
  `count_this_4` double(15,2) default NULL,
  `f_amount_this_4` double(15,2) default NULL,
  `f_count_this_4` double(15,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



CREATE TABLE `shopping_cart_stats` (
  `id` int(11) NOT NULL auto_increment,
  `userId` varchar(25) default NULL,
  `firstDate` datetime default NULL,
  `lastDate` datetime default NULL,
  `amount_total` double(15,2) default NULL,
  `count_total` double(15,2) default NULL,
  `amount_this` double(15,2) default NULL,
  `count_this` double(15,2) default NULL,
  `f_amount_this` double(15,2) default NULL,
  `f_count_this` double(15,2) default NULL,
  `amount_this_1` double(15,2) default NULL,
  `count_this_1` double(15,2) default NULL,
  `f_amount_this_1` double(15,2) default NULL,
  `f_count_this_1` double(15,2) default NULL,
  `amount_this_2` double(15,2) default NULL,
  `count_this_2` double(15,2) default NULL,
  `f_amount_this_2` double(15,2) default NULL,
  `f_count_this_2` double(15,2) default NULL,
  `amount_this_3` double(15,2) default NULL,
  `count_this_3` double(15,2) default NULL,
  `f_amount_this_3` double(15,2) default NULL,
  `f_count_this_3` double(15,2) default NULL,
  `amount_this_4` double(15,2) default NULL,
  `count_this_4` double(15,2) default NULL,
  `f_amount_this_4` double(15,2) default NULL,
  `f_count_this_4` double(15,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;