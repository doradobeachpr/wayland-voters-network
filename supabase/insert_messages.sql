-- Wayland Voters Network Messages Data
-- Generated from all_messages_clean3-1.csv
-- Use this script to populate the messages table

-- Clear existing data
DELETE FROM messages;

-- Reset sequence (PostgreSQL)
ALTER SEQUENCE messages_id_seq RESTART WITH 1;

-- Insert messages
INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    1,
    'test new topic button',
    'plumke@pm.me',
    '2019-10-23',
    'Oct 23, 2019',
    2019,
    'Oct',
    9,
    'imported',
    '{newsletter}',
    'this is the topic area.  testing with last WVN newsletter'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    2,
    'The final Citizen’s Academy will be held on Thursday',
    'Oct. 24th and the topic is the workings of the Wayland Finance Department. The process for assessing the value of your property will be included. The different sources of Town revenue will be explained as well as the State and local rules which control on what',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'overrides'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    3,
    'New file uploaded to WaylandVoters@groups.io',
    'WaylandVoters@groups.io Notification',
    '2019-10-23',
    'Oct 23, 2019',
    2019,
    'Oct',
    9,
    'imported',
    '{election}',
    'Hello,'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    4,
    'Wayland Voters Network Newsletter March 2, 2004',
    'waylandvoters2',
    '2004-03-02',
    'Mar 02, 2004',
    2004,
    'Mar',
    2,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    5,
    'Wayland Voters Network Newsletter #2 March 10, 2004',
    'waylandvoters2',
    '2004-03-11',
    'Mar 11, 2004',
    2004,
    'Mar',
    2,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    6,
    'Wayland Voters Network newsletter #3 March 24, 2004',
    'waylandvoters2',
    '2004-03-24',
    'Mar 24, 2004',
    2004,
    'Mar',
    2,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    7,
    'forum Thursday',
    'March 25',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'at the high school''s L1 lecture'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    8,
    'Wednesday',
    'May 5',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'at the High School Field House.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    9,
    'purposes including and limited to housing',
    'conservation',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    10,
    'restricted to conservation',
    'passive recreation',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{environment}',
    'open space or'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    11,
    'Wayland Voters Network Newsletter #4 April 4, 2004',
    'waylandvoters2',
    '2004-04-04',
    'Apr 04, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    12,
    'FY05 School Budget Public Hearing',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget,school}',
    'Middle School'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    13,
    'League of Women Voters Candidates Night',
    'Wednesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{election}',
    'Middle'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    14,
    'Thursday',
    'April 15',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '7:30pm.  Walk through warrant'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    15,
    'signboards (Cochituate Fire Station',
    'Five Paths',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{safety}',
    'and'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    16,
    'abatement requests',
    'regular reevaluations',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'or renovations.  It'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    17,
    'Wayland Voters Network newsletter #5 April 20, 2004',
    'waylandvoters2',
    '2004-04-20',
    'Apr 20, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    18,
    'Town Administrator',
    'today Tuesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '8pm'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    19,
    'Wayland Voters Network Newsletter #6 April 21, 2004',
    'waylandvoters2',
    '2004-04-21',
    'Apr 21, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    20,
    'more input from school staff',
    'parents',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    21,
    'involved in septic design',
    'school nurses',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    22,
    'input',
    'other board members',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and do my own research'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    23,
    'Wayland Voters Network Newsletter #7 April 22, 2004',
    'waylandvoters2',
    '2004-04-22',
    'Apr 22, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    24,
    'Wayland Voters Network Newsletter #8 April 23, 2004',
    'waylandvoters2',
    '2004-04-23',
    'Apr 23, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    25,
    'administrative functions (e.g.',
    'payroll',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    26,
    'Wayland Voters Network Newsletter #9 April 24, 2004',
    'waylandvoters2',
    '2004-04-24',
    'Apr 24, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    27,
    'the Board of Selectmen',
    'Pat Abramson',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and Michael'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    28,
    'WVN #10: Vote...your conscience, not someone else''s',
    'waylandvoters2',
    '2004-04-27',
    'Apr 27, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    29,
    'Of course',
    'any resident',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'is free to'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    30,
    'WVN #11: Election results and High School project exclusive report',
    'waylandvoters2',
    '2004-04-28',
    'Apr 28, 2004',
    2004,
    'Apr',
    3,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    31,
    'the Town''s web site',
    'www.wayland.ma.us',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    32,
    'A reminder that Town Meeting begins this Thursday',
    'April 29',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    33,
    'WVN #12: tonight''s Town Meeting',
    'waylandvoters2',
    '2004-05-03',
    'May 03, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    34,
    'The second night of Annual Town Meeting is tonight',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    35,
    'WVN #13: last night''s TM and upcoming STM',
    'waylandvoters2',
    '2004-05-04',
    'May 04, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    36,
    'convened tomorrow',
    'Wednesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'High School Field House'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    37,
    'WVN #14: Important debate tonight Special Town Meeting',
    'waylandvoters2',
    '2004-05-05',
    'May 05, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    38,
    'Wayland will be debated tonight',
    'Wed.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'when Special Town'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    39,
    'That amount',
    'plus $200',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'would be covered by monies'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    40,
    'purposes including and limited to housing',
    'conservation',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    41,
    'the Town',
    'with uses restricted to conservation',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    42,
    'WVN #15: upcoming TM articles involving $ and democractic process',
    'waylandvoters2',
    '2004-05-06',
    'May 06, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    43,
    'Annual Town Meeting continues tonight',
    'Thurs.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school,meeting}',
    'High School'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    44,
    'Field House',
    '7:45pm. At last night''s Special Town Meeting',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    45,
    'election',
    'state biennial election',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{election}',
    'or special'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    46,
    'WVN #15: Completion of Special Town Meeting and continuation of Annual TM',
    'waylandvoters',
    '2004-05-10',
    'May 10, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    47,
    '$5',
    '000 to maintain the numerous markers',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    48,
    'Town Meeting continues tomorrow night',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'High'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    49,
    'Fire Station',
    'Five Paths',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{safety,transportation}',
    'and Route 20 at the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    50,
    'what was',
    'in effect',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'to find the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    51,
    'WVN #17: Town Meeting wrap-up',
    'waylandvoters2',
    '2004-05-14',
    'May 14, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    52,
    'from $125',
    '000 to $92',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'several speakers expressed concern'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    53,
    'presidential election',
    'state biennial election',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{election}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    54,
    'WVN #18: Master Plan & high school project',
    'waylandvoters2',
    '2004-05-19',
    'May 19, 2004',
    2004,
    'May',
    4,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    55,
    'Hall',
    'Senior Center',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    56,
    'Buildings',
    'High School L1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'followed by the regular'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    57,
    'WVN #19: high school project update',
    'waylandvoters2',
    '2004-06-08',
    'Jun 08, 2004',
    2004,
    'Jun',
    5,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    58,
    'Add new buildings for Gym',
    'Auditorium',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'additional'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    59,
    'Demolish Language',
    'Social Studies',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'and Commons buildings.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    60,
    'Add new buildings for Commons',
    'Gym',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'Science Labs'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    61,
    'manager',
    'Dick Amster',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Option 1'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    62,
    'Thursday',
    'June 10',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'High School Commons Conference Room.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    63,
    'WVN #20: high school project costs',
    'waylandvoters2',
    '2004-06-17',
    'Jun 17, 2004',
    2004,
    'Jun',
    5,
    'imported',
    '{budget,election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    64,
    'tonight',
    'June 17',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,school}',
    'Town Building School Committee Room (2nd'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    65,
    'bare minimum',
    'that is',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'rather than'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    66,
    'WVN #21: High School Project Video, Ed Plan',
    'waylandvoters',
    '2004-06-22',
    'Jun 22, 2004',
    2004,
    'Jun',
    5,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    67,
    'HSBC meeting (Thursday',
    'June 24',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,meeting}',
    'Town Building'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    68,
    'Committee is this Thursday',
    'June 24',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'Town Building'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    69,
    'WVN #22: high school project costs to be announced Thurs. night',
    'waylandvoters2',
    '2004-06-30',
    'Jun 30, 2004',
    2004,
    'Jun',
    5,
    'imported',
    '{budget,election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    70,
    '2)Phasing and schedule',
    'i.e.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'what'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    71,
    'The following week',
    'a public forum will be held on Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    72,
    'it impossible to get to the polls',
    'would be',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    73,
    'WVN 23: high school project estimates $54-56 million',
    'waylandvoters2',
    '2004-07-02',
    'Jul 02, 2004',
    2004,
    'Jul',
    6,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    74,
    'Add new buildings for Gym',
    'Auditorium',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'additional'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    75,
    'Demolish Language',
    'Social Studies',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'and Commons buildings.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    76,
    'Add new buildings for Commons',
    'Gym',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'Science Labs'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    77,
    'athletic field',
    'air conditioning',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'based on reactions'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    78,
    'square footage',
    'contingencies',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    79,
    'Thursday',
    'July 8',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'High School L1 Lecture Hall (Language'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    80,
    'WVN 23: High School Cost Estimate Reactions',
    'waylandvoters',
    '2004-07-11',
    'Jul 11, 2004',
    2004,
    'Jul',
    6,
    'imported',
    '{budget,election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    81,
    'WVN 25: Two reminders re. high school project',
    'waylandvoters2',
    '2004-07-14',
    'Jul 14, 2004',
    2004,
    'Jul',
    6,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTERS NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    82,
    'project will be broadcast tonight',
    'Wed.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{infrastructure}',
    'on the Wayland'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    83,
    '15',
    'at 7:30pm in L1 Lecture Hall',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'Wayland High'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    84,
    'WVN 26: last week''s High School Building Committee meeting',
    'waylandvoters2',
    '2004-07-21',
    'Jul 21, 2004',
    2004,
    'Jul',
    6,
    'imported',
    '{election,zoning,school,meeting,newsletter}',
    'WAYLAND VOTER''S NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    85,
    'environmental hazard.  Least harmful',
    'he said',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{environment}',
    'as'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    86,
    'channel tonight',
    'Wed.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{infrastructure}',
    'at 7:00 pm.  This broadcast is made'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    87,
    'WVN #27: High School Building Comm. and School Comm. updates',
    'waylandvoters2',
    '2004-07-27',
    'Jul 27, 2004',
    2004,
    'Jul',
    6,
    'imported',
    '{election,zoning,school,newsletter}',
    'WAYLAND VOTER''S NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    88,
    'consultants.  Summaries of electricity',
    'natural gas',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and fuel'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    89,
    'WVN #28: Latest words on high school project',
    'waylandvoters2',
    '2004-08-04',
    'Aug 04, 2004',
    2004,
    'Aug',
    7,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTER''S NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    90,
    'HIGH SCHOOL BUILDING COMMITTEE MEETING',
    'Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,school,meeting}',
    '2004'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    91,
    'WILL MEET ON THURSDAY',
    'AUGUST 5',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'TOWN'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    92,
    'channel tonight',
    'Wednesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{infrastructure}',
    'at 7:00 pm.  This broadcast is'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    93,
    'next meeting',
    'Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    '7:30pm'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    94,
    'WVN#29: All New School is Chosen Option',
    'waylandvoters',
    '2004-08-09',
    'Aug 09, 2004',
    2004,
    'Aug',
    7,
    'imported',
    '{election,school,newsletter}',
    'WAYLAND VOTER''S NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    95,
    'WVN #30: Appeal for Support',
    'waylandvoters',
    '2004-08-18',
    'Aug 18, 2004',
    2004,
    'Aug',
    7,
    'imported',
    '{election,newsletter}',
    'To Wayland Voters Network Subscribers:'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    96,
    'WVN #31- Financial Effects of $55M Project',
    'waylandvoters',
    '2004-08-24',
    'Aug 24, 2004',
    2004,
    'Aug',
    7,
    'imported',
    '{election,newsletter}',
    'WAYLAND VOTER''S NETWORK'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    97,
    'And',
    'as member Mary Lentz noted',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '2007 is when we find out what the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    98,
    'WVN #32: SC Discusses Adding Pool to New High School',
    'waylandvoters2',
    '2004-09-01',
    'Sep 01, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    99,
    'WVN #33: Many questions/unknowns about state $$ for new high school',
    'waylandvoters2',
    '2004-09-01',
    'Sep 01, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    100,
    'NEXT HSBC MEETING:  Thursday',
    'September 9',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school,meeting}',
    'School'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    101,
    'WVN #34: HSBC wants early vote; HS enrollment lower than expected',
    'waylandvoters2',
    '2004-09-11',
    'Sep 11, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    102,
    'for state rep.',
    'Stas Gayshan and John Thomas',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    103,
    'Monday',
    'Sept. 13',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'Town Building.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    104,
    'Broadcast of Sept. 9 HSBC meeting',
    'Wayland Cable',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting,infrastructure}',
    'Sept.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    105,
    'NEXT HSBC MEETING:  Thurs.',
    'Sept. 23',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,meeting}',
    'Town Building.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    106,
    'WVN #35: putting high school proposal into context',
    'waylandvoters2',
    '2004-09-14',
    'Sep 14, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    107,
    'First',
    'a reminder:  Today',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Sept. 14'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    108,
    'WVN #36: shame on them',
    'waylandvoters2',
    '2004-09-17',
    'Sep 17, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    109,
    'WVN #37: high school proposal - what''s the rush?',
    'waylandvoters2',
    '2004-09-27',
    'Sep 27, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    110,
    'These questions may be answered tonight',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'when the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    111,
    'WVN #38: high school ballot question likely in January',
    'waylandvoters2',
    '2004-09-29',
    'Sep 29, 2004',
    2004,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    112,
    'WVN #39: SPENDING, TAXING, AND SPENDING',
    'waylandvoters',
    '2004-10-11',
    'Oct 11, 2004',
    2004,
    'Oct',
    9,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    113,
    'WVN # 40: Selling the High School Proposal',
    'waylandvoters',
    '2004-10-12',
    'Oct 12, 2004',
    2004,
    'Oct',
    9,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    114,
    'WVN # 41: School Population Down, Ballot Date Set',
    'waylandvoters',
    '2004-10-22',
    'Oct 22, 2004',
    2004,
    'Oct',
    9,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    115,
    'WVN # 42: SELECTMEN REJECT ABSENTEE MAILING',
    'waylandvoters',
    '2004-10-28',
    'Oct 28, 2004',
    2004,
    'Oct',
    9,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    116,
    'WVN #43: HIGH SCHOOL COST RISING AGAIN?',
    'waylandvoters',
    '2004-11-01',
    'Nov 01, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    117,
    'tax impact/tax override',
    'waylandvoters2',
    '2004-11-05',
    'Nov 05, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    118,
    'topics are expected to include the new Master Plan',
    'housing',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'new'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    119,
    'library',
    'etc.)',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'revenue enhancements'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    120,
    'WVN #45: Welcome and Thank You',
    'waylandvoters',
    '2004-11-08',
    'Nov 08, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    121,
    'WVN # 46: Needs Versus Wants - What Can Wayland Afford To Do?',
    'waylandvoters',
    '2004-11-13',
    'Nov 13, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    122,
    'WVN # 47: Latest Numbers',
    'waylandvoters',
    '2004-11-18',
    'Nov 18, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    123,
    'WVN #48 Selling the High School Proposal: Who Pays?',
    'waylandvoters2',
    '2004-11-23',
    'Nov 23, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    124,
    'WVN #49: For the Record',
    'waylandvoters2',
    '2004-11-26',
    'Nov 26, 2004',
    2004,
    'Nov',
    10,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    125,
    'information about the Town''s finances (e.g.',
    'income',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    126,
    'WVN #50: Angry Residents Confront High School Building Committee',
    'waylandvoters2',
    '2004-12-01',
    'Dec 01, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{election,zoning,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    127,
    'WVN #51: HSBC Consultants'' Final Report',
    'waylandvoters2',
    '2004-12-03',
    'Dec 03, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    128,
    'broadcast on the Wayland cable channel',
    'Wednesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{infrastructure}',
    '7 p.m.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    129,
    'WVN #52: Second HSBC Town-Wide Mailing at Taxpayer Expense?',
    'waylandvoters2',
    '2004-12-11',
    'Dec 11, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    130,
    'WVN #53: Selectmen OK HSBC Insert in Town Meeting Warrant',
    'waylandvoters2',
    '2004-12-20',
    'Dec 20, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    131,
    'WVN #54: High School Abutters Seek Involvement in Decision Making',
    'waylandvoters2',
    '2004-12-24',
    'Dec 24, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    132,
    '[Meanwhile',
    'another Charena Farms resident',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    133,
    'go over the details and approve',
    'disapprove',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    134,
    'WVN #55: Interim Assessments and New Tax Bills Expected Soon',
    'waylandvoters2',
    '2004-12-27',
    'Dec 27, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    135,
    'the kitchen',
    'on-suite baths',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'assessors'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    136,
    'WVN #56: Wayland''s Budget and Who Pays for It',
    'waylandvoters2',
    '2004-12-30',
    'Dec 30, 2004',
    2004,
    'Dec',
    11,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    137,
    '(Weston',
    'in contrast',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    138,
    'WVN #57: Could It Be That They Don''t Want Seniors to Vote?',
    'waylandvoters2',
    '2005-01-03',
    'Jan 03, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    139,
    'WVN #58: Some Upcoming Events',
    'waylandvoters2',
    '2005-01-05',
    'Jan 05, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    140,
    'specific items',
    'will be held on Tuesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and Tuesday'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    141,
    'WVN #59: Facts About 1990s High School Renovations',
    'waylandvoters2',
    '2005-01-07',
    'Jan 07, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    142,
    'The next forum is tomorrow',
    'Saturday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '10 a.m.-noon'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    143,
    'and Jan. 27 town meeting will be Thursday',
    'Jan. 13',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    144,
    'In a 1992 annual report',
    'the School Commmittee says',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    145,
    'heating system',
    'new boilers',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'plumbing'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    146,
    'systems',
    'roofs',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'floors'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    147,
    'an enrollment of900',
    'or $57',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000.)'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    148,
    'WVN #60: More Facts About 1990s High School Renovations',
    'waylandvoters2',
    '2005-01-11',
    'Jan 11, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    149,
    'WVN #61: Voters Guide to the High School Proposal',
    'waylandvoters2',
    '2005-01-12',
    'Jan 12, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    150,
    'WVN #62: Proposed 6.44% Increase in School Operating Budget',
    'waylandvoters2',
    '2005-01-13',
    'Jan 13, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    151,
    'proposed $57.3 million project is tonight',
    'Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '7:30'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    152,
    'Budget and recommended a budget amount of $27',
    '816',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget}',
    'which he said'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    153,
    'is a 6.44% increase (i.e.',
    '$1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '226) over FY 05.  Without any'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    154,
    'guideline of $27',
    '379',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Burton explained that he is'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    155,
    'increases',
    'mainly for athletics',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and/or other'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    156,
    'WVN #63: What Will It Cost Voters?',
    'waylandvoters2',
    '2005-01-14',
    'Jan 14, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    157,
    'So if your current annual tax bill is',
    'say',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget}',
    '702 and you think'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    158,
    'HSBC''s best-case scenario',
    'the bill rises to $9',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'up 35 percent.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    159,
    'from $50',
    '000 to $200',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'the personal impact could depend on such'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    160,
    'WVN #64: To Be or Not to Be...A Secret Ballot?',
    'waylandvoters2',
    '2005-01-21',
    'Jan 21, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    161,
    'School Field House',
    'Cafeteria',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'presenting'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    162,
    'Well',
    'then',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'town meeting can decide whether to have a'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    163,
    'vote',
    'and the machines will do what they are meant to do',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{election}',
    'count'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    164,
    'attend the Warrant Hearing',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '8pm'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    165,
    'WVN #65: Interview with Head of School Building Reimbursement Agency',
    'waylandvoters2',
    '2005-01-24',
    'Jan 24, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,zoning,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    166,
    'WVN #66: Town Mailing Targets Seniors and Other Items of Interest',
    'waylandvoters2',
    '2005-01-24',
    'Jan 24, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    167,
    '$498',
    '000 to $531',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'possibly putting some seniors farther above the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    168,
    'Finance Committee',
    'Board of Assessors',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget}',
    'The Senior Tax'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    169,
    'WVN #67: Final Reminder - Please Vote Today',
    'waylandvoters2',
    '2005-01-25',
    'Jan 25, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    170,
    'Please vote today',
    'Tuesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget,election}',
    'in the tax override'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    171,
    'WVN #68: Special Election Results',
    'waylandvoters2',
    '2005-01-26',
    'Jan 26, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    172,
    'WVN #69: TOWN MEETING TONIGHT',
    'waylandvoters2',
    '2005-01-27',
    'Jan 27, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    173,
    'TOWN MEETING THURSDAY',
    'JAN. 27',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school,meeting}',
    'HIGH SCHOOL FIELD HOUSE'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    174,
    'WVN #70: Town Meeting Report',
    'waylandvoters2',
    '2005-01-28',
    'Jan 28, 2005',
    2005,
    'Jan',
    0,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    175,
    'WVN #71: Proposed FY06 School Budget $27.8 Million',
    'waylandvoters2',
    '2005-02-01',
    'Feb 01, 2005',
    2005,
    'Feb',
    1,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    176,
    'Committee meeting',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school,meeting}',
    'School Committee Meeting Room'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    177,
    '$27',
    '816',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'or $1'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    178,
    'getting bigger as we sit here',
    'now approaching $2 million',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    179,
    'about pitching the override',
    'so I''m looking for data',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    180,
    'WVN #72: School Budget Approval Delayed',
    'waylandvoters2',
    '2005-02-15',
    'Feb 15, 2005',
    2005,
    'Feb',
    1,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    181,
    'The School Committee meets tonight',
    'Tuesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    '7:30 p.m.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    182,
    'ideas had come up',
    'including a survey',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'roundtable'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    183,
    'thought - at least a year',
    'maybe two',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and may therefore'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    184,
    'WVN #73 - HSBC: What went wrong, what to do next?',
    'waylandvoters2',
    '2005-02-23',
    'Feb 23, 2005',
    2005,
    'Feb',
    1,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    185,
    'problem',
    'Lewin said. In his professional construction work',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    186,
    'WVN #74: April Override More Than $2 Million',
    'waylandvoters2',
    '2005-03-03',
    'Mar 03, 2005',
    2005,
    'Mar',
    2,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    187,
    '$4',
    '400',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '400.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    188,
    '14% from $3',
    '846',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '400'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    189,
    'WVN # 75 Special Bulletin: Final Candidates for Town Boards',
    'waylandvoters',
    '2005-03-10',
    'Mar 10, 2005',
    2005,
    'Mar',
    2,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    190,
    'Commission',
    'Housing Authority',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Board of Assessors'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    191,
    'WVN # 76: FY06 School Budget on the Way',
    'waylandvoters',
    '2005-03-11',
    'Mar 11, 2005',
    2005,
    'Mar',
    2,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    192,
    'Building. All boards',
    'committees',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'and employees'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    193,
    'School Committee March 7',
    '2005: More Sports',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    194,
    'WVN #77 FY06 Budget Discussions Continue',
    'waylandvoters2',
    '2005-03-28',
    'Mar 28, 2005',
    2005,
    'Mar',
    2,
    'imported',
    '{budget,election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    195,
    'ballot question',
    '6:00pm',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{election}',
    'first'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    196,
    'failed high school project',
    '7:30pm',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,school}',
    'Town Building.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    197,
    'WVN #78: Questions re. HS Project and School Budget',
    'waylandvoters2',
    '2005-04-04',
    'Apr 04, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{budget,election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    198,
    'price point',
    'but Lewin',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    199,
    'With respect to academics',
    'however',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'We''ve tried to'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    200,
    'unclear',
    'however',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'since the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    201,
    'WVN #79: Fincom Prepares for Possible Cuts',
    'waylandvoters2',
    '2005-04-05',
    'Apr 05, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    202,
    'So',
    'if the override fails',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    203,
    'One article',
    'for example',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '700 to continue the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    204,
    'WVN #80: More Questions re. FY06 Budget/Override',
    'waylandvoters2',
    '2005-04-11',
    'Apr 11, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    205,
    '1.           Weston  $11',
    '767     $ 1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '402     778'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    206,
    '2.           Sherborn  9',
    '889         903',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '094'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    207,
    '3.           Lincoln   9',
    '730       1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '103     859'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    208,
    '4.           Carlisle  9',
    '224         871',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '058'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    209,
    '5.           Dover     9',
    '004       1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '324     713'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    210,
    '6.           Concord   8',
    '805       1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '324     866'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    211,
    '7.           Sudbury   8',
    '101         737',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '098'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    212,
    '8.           Wayland   7',
    '904         724',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '091'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    213,
    '10.          Belmont   7',
    '686         767',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '001'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    214,
    '11.          Wellesley 7',
    '564       1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '877     682'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    215,
    'WVN #81: Correction',
    'waylandvoters2',
    '2005-04-12',
    'Apr 12, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    216,
    'WVN #82: School Budget Hearing, Open Meeting Law Violation',
    'waylandvoters',
    '2005-04-14',
    'Apr 14, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{budget,election,school,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    217,
    'and others that health insurance',
    'debt service',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{health}',
    'and nursing services'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    218,
    'portions of art',
    'music',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'and music teacher positions at the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    219,
    'However',
    'MGL',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'section 23B'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    220,
    'WVN #83: CORRECTION',
    'waylandvoters',
    '2005-04-15',
    'Apr 15, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    221,
    'WVN #84 - Override: Maintain Services or Force Creative Change?',
    'waylandvoters2',
    '2005-04-21',
    'Apr 21, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    222,
    'In town government',
    'Schmidt went on',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'but'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    223,
    'mathematical slope into the future',
    'the imbalance worsens',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    224,
    'Wayland among all 51 Massachusetts towns of 10',
    '000-15',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    225,
    'By the way',
    'Schmidt advised',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    226,
    'WVN #85: Candidates Round-Up',
    'waylandvoters2',
    '2005-04-22',
    'Apr 22, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    227,
    'April 22',
    'as well as Saturday and Sunday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'at 7:00pm.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    228,
    'WVN #86: Answers to Override FAQ''s',
    'waylandvoters2',
    '2005-04-25',
    'Apr 25, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    229,
    'Mon.',
    'April 25',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'Town Building'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    230,
    'teacher',
    'one counselor',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'plus reductions in'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    231,
    'other teaching',
    'library',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'art'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    232,
    'median value of approx. $532',
    '000/1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '288 yearly'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    233,
    'REDUCTIONS IN A PARTICULAR DEPARTMENT (E.G.',
    'SCHOOLS',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{safety}',
    'FIRE)?'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    234,
    'WVN 87: Annual Town Election Results',
    'waylandvoters2',
    '2005-04-27',
    'Apr 27, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    235,
    'WVN #88: Upcoming Town Meeting Overview',
    'waylandvoters2',
    '2005-04-28',
    'Apr 28, 2005',
    2005,
    'Apr',
    3,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    236,
    'over last year)',
    'and $1',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget}',
    '000 for the capital budget (to be'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    237,
    'Monday',
    'Wednesday and Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Wednesdays'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    238,
    'WVN #89: Latest on Town Meeting, School Committee',
    'waylandvoters2',
    '2005-05-02',
    'May 02, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,school,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    239,
    'ANNUAL TOWN MEETING CONTINUES TONIGHT',
    'MONDAY',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'WHS FIELD'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    240,
    'HOUSE',
    '7:45 P.M. If you need a ride',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    241,
    'school bus contract',
    'at $348K',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    242,
    'WVN 90 - Town Meeting 5/2: Lots of Confusion',
    'waylandvoters2',
    '2005-05-04',
    'May 04, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    243,
    'ANNUAL TOWN MEETING reconvenes tonight',
    'Wed.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'WHS Field House'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    244,
    '$1',
    '873',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'but'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    245,
    'In addition',
    'the landfill supervisor',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'is under'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    246,
    'WVN #91- ALERT- Town Center Project Special Meeting',
    'waylandvoters',
    '2005-05-09',
    'May 09, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    247,
    'WVN #92: ALERT-Town Meeting on Town Center in September',
    'waylandvoters2',
    '2005-05-11',
    'May 11, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    248,
    'WVN #93: TOWN MEETING SURPRISES',
    'waylandvoters2',
    '2005-05-17',
    'May 17, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    249,
    'commissioners',
    'who argued that many towns',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    250,
    'contact him: 617-742-9310',
    '508-358-7438',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'or'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    251,
    'WVN #94: Transcript re future location of WayCAM',
    'waylandvoters2',
    '2005-05-18',
    'May 18, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    252,
    'WVN #95: Superintendent''s Evaluation in Closed Meeting',
    'waylandvoters2',
    '2005-05-31',
    'May 31, 2005',
    2005,
    'May',
    4,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    253,
    'meeting next Monday',
    'June 6',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning,meeting}',
    'Town Building'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    254,
    'marketing group approach for $8',
    '000-11',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 in the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    255,
    'HSBC account. Gordon said',
    'The difference between $4',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    256,
    'WVN #96: Meeting tonight to Avoid Override',
    'waylandvoters',
    '2005-06-13',
    'Jun 13, 2005',
    2005,
    'Jun',
    5,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    257,
    'WVN #97: Controversy Over Burton''s Evaluation',
    'waylandvoters',
    '2005-06-22',
    'Jun 22, 2005',
    2005,
    'Jun',
    5,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    258,
    'density',
    'setbacks',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'maximum building heights and'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    259,
    'sizes',
    'landscaping',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'open space and vehicle and foot'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    260,
    'that',
    'Dieffenbach noted that the minutes of the June 28',
    '2004-01-01',
    'Jan 01, 2004',
    2004,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    261,
    'WVN #98: Town Center Project - Planning Board Wants Your Ideas',
    'waylandvoters2',
    '2005-07-06',
    'Jul 06, 2005',
    2005,
    'Jul',
    6,
    'imported',
    '{election,zoning,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    262,
    'people to shop',
    'do town business',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    263,
    'customers',
    'employees',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'it appears that'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    264,
    'WVN #99: School Superintendent Evaluated in Open Meeting',
    'waylandvoters2',
    '2005-07-12',
    'Jul 12, 2005',
    2005,
    'Jul',
    6,
    'imported',
    '{election,school,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    265,
    'Development',
    'Staff Recruiting',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'and Retention'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    266,
    'WVN #100: Town Center Forum/School Comm Looks Ahead',
    'waylandvoters2',
    '2005-07-23',
    'Jul 23, 2005',
    2005,
    'Jul',
    6,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    267,
    'Meeting Law',
    'including restrictions on casual meetings',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'and'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    268,
    'WVN #101: School Committee-Science Modulars Delayed',
    'waylandvoters2',
    '2005-08-03',
    'Aug 03, 2005',
    2005,
    'Aug',
    7,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    269,
    'tonight',
    'Wed.',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'at 7:00 p.m. in the Town Building'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    270,
    'WVN #102: Special Report - Assessor Resigns',
    'waylandvoters2',
    '2005-08-05',
    'Aug 05, 2005',
    2005,
    'Aug',
    7,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    271,
    'ASSESSOR RESIGNS',
    'ALLEGES INEFFICIENCY',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'SELF-INTEREST'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    272,
    'Road that sold for $665',
    '000',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{infrastructure}',
    'and one on'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    273,
    'WVN #103: Clear Divisions on Town Center Proposal',
    'waylandvoters2',
    '2005-08-08',
    'Aug 08, 2005',
    2005,
    'Aug',
    7,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    274,
    'The Board of Selectmen meets tonight',
    'Monday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and Wednesday'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    275,
    'shopping',
    'sightseeing',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'the town tells'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    276,
    'She estimated that 308',
    '000 square feet of retail',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square feet'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    277,
    'WVN #104: Planning Board - Lessons from Wellesley Development',
    'waylandvoters2',
    '2005-08-15',
    'Aug 15, 2005',
    2005,
    'Aug',
    7,
    'imported',
    '{election,zoning,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    278,
    'Building',
    '7:30 p.m.  Also',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{zoning}',
    'and its'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    279,
    '·	Only one other store can be >25',
    '000 sq ft (max 33',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'which'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    280,
    'WVN #105: Planning Board Pressured on Town Center Project',
    'waylandvoters2',
    '2005-08-30',
    'Aug 30, 2005',
    2005,
    'Aug',
    7,
    'imported',
    '{election,zoning,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    281,
    'tonight',
    'Tuesday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '7:15 p.m.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    282,
    'done',
    'Stephen Greenbaum',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'told the'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    283,
    'Barnes & Noble',
    'Shoppers World',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '963 square feet.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    284,
    'Sudbury Farms Plaza',
    'Sudbury',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    285,
    'Shaw''s',
    'Sudbury',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square feet.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    286,
    'Kohl''s',
    'Framingham',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square feet.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    287,
    'Omni Market and nearby businesses and offices',
    'Weston',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    288,
    'WVN #106: What''s Next for Assessors/Forum on Town Meeting',
    'waylandvoters2',
    '2005-09-12',
    'Sep 12, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,meeting,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    289,
    'Marcia Malmfeldt',
    'running unopposed',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    290,
    'Do you have ideas',
    'opinions',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'even weak feelings'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    291,
    'WVN #107: Town Center or Shopping Center?',
    'waylandvoters2',
    '2005-09-14',
    'Sep 14, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    292,
    'Town Meeting',
    'this Thursday',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    'at 7:30 p.m. in the Public'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    293,
    'So',
    'by my count',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Koffler Group (which includes'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    294,
    'retail properties',
    'the firm owns and manages office',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    295,
    'BJ''s Wholesale Club',
    'Dick''s Sporting Goods',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Kohl''s'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    296,
    'Lowe''s',
    'Sports Authority',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Stop & Shop'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    297,
    'feet in Hooksett',
    'N.H. Major tenants include Target',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Kohl''s'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    298,
    'Northwoods Crossing',
    'a 51.5-acre property in Taunton',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'where'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    299,
    'restaurants',
    'including a Wendy''s',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000 square-'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    300,
    'Barn',
    'Strawberries',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and North River Cleaners'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    301,
    'WVN #108: School Committee Update',
    'waylandvoters2',
    '2005-09-15',
    'Sep 15, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    302,
    'On the whole',
    'however',
    '2004-01-01',
    'Jan 01, 2004',
    2004,
    'Jan',
    0,
    'imported',
    '{general}',
    ''
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    303,
    'This group has been formed',
    'organized',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    304,
    '3. To recruit',
    'hire',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{school}',
    'and retain educators and other school'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    305,
    'WVN #109: Two important updates and a special request from WVN',
    'waylandvoters2',
    '2005-09-18',
    'Sep 18, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    306,
    '$15',
    '000',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    307,
    'Thursday',
    'Sept. 22',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '1:00 p.m.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    308,
    'in April',
    'voted for the other candidate',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'a 20-year'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    309,
    'WVN #110 - Town Center project: Mounting pressure, discord, questions',
    'waylandvoters2',
    '2005-09-19',
    'Sep 19, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    310,
    'strategy',
    'saying',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'we''re not even'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    311,
    'at about 540',
    '000 square feet',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '000'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    312,
    'Wednesday',
    'Sept. 21',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    '7:30 p.m.'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    313,
    'WVN #111: 3.5% Pay Raise for School Superintendent',
    'waylandvoters2',
    '2005-09-22',
    'Sep 22, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,school,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    314,
    'Board of Selectmen meeting tonight',
    'Sept. 22',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{meeting}',
    '7:00'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    315,
    'WVN #112 - Ad Hoc Budget Comm: Desperately Seeking Savings',
    'waylandvoters2',
    '2005-09-24',
    'Sep 24, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{budget,election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    316,
    'contracts',
    'health care',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'energy audits'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    317,
    'overtime',
    'tax delinquent properties',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'and fee'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    318,
    'Senchyshyn by the Board of Health',
    'Accounting',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{health}',
    'Information'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    319,
    'meetings',
    'proposed agendas',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{budget,meeting}',
    'updated cost-savings'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    320,
    'WVN # 113- Town Center Plan Changes, Revenues Lower',
    'waylandvoters',
    '2005-09-26',
    'Sep 26, 2005',
    2005,
    'Sep',
    8,
    'imported',
    '{election,newsletter}',
    'Wayland Voters Network'
);

INSERT INTO messages (
    message_number, subject, author, date, display_date,
    year, month, month_index, category, topics, content
) VALUES (
    321,
    'Hingham: The Gap',
    'Baja Foods',
    '2019-01-01',
    'Jan 01, 2019',
    2019,
    'Jan',
    0,
    'imported',
    '{general}',
    'Crate and Barrel'
);

-- Total messages inserted: 321
-- Generated on: 2025-08-29 21:37:26