// Comprehensive message templates and generation for all 1,460 messages
// Spanning from February 24, 2004 to December 2025

interface MessageTemplate {
  subjectTemplates: string[];
  contentTemplates: string[];
  topics: string[];
}

interface GeneratedMessage {
  id: string;
  date: string;
  displayDate: string;
  subject: string;
  author: string;
  content: string;
  year: number;
  month: string;
  monthIndex: number;
  category: string;
  topics: string[];
}

// Message templates organized by category
const messageTemplates: Record<string, MessageTemplate> = {
  budget: {
    topics: ['budget', 'fiscal', 'taxes', 'spending', 'finance'],
    subjectTemplates: [
      "Town Budget Hearing - Key Decisions",
      "FY{year} Budget Proposal Review",
      "Property Tax Rate Discussion",
      "Capital Expenditure Planning",
      "Municipal Budget Public Hearing",
      "Finance Committee Recommendations",
      "Budget Override Question",
      "Fiscal Year {year} Priorities",
      "Town Meeting Budget Articles",
      "Revenue Projections Update"
    ],
    contentTemplates: [
      "The Wayland Finance Committee met yesterday evening to discuss the proposed FY{year} budget in detail. This was a comprehensive review session that lasted over three hours.\n\nKey highlights from the meeting include:\n• Increased funding for school technology infrastructure - ${amount} million allocation for new computers, interactive whiteboards, and network upgrades across all schools\n• Road maintenance allocation increased by {percent}% - Priority focus on Route 27, Old Connecticut Path, and residential street resurfacing\n• Community center improvements - ${amount2} for HVAC system replacement, roof repairs, and accessibility upgrades\n• Public safety equipment - New emergency communication systems and vehicle upgrades for fire and police departments\n• Parks and recreation - Enhanced funding for playground equipment replacement and trail maintenance\n\nThe committee expressed particular concern about balancing infrastructure needs with keeping tax increases reasonable for residents. Several committee members emphasized the importance of maintaining Wayland's high-quality municipal services while being mindful of economic pressures on families.\n\nPublic input session highlights:\n- Residents from the Town Center area voiced strong support for road improvements\n- Parents advocated for continued investment in educational technology\n- Senior citizens requested enhanced accessibility features at public buildings\n\nThe public hearing is scheduled for {date} at 7 PM in the town hall main meeting room. All residents are encouraged to attend and provide input on the proposed budget. Written comments can also be submitted to the Finance Committee through the town website.\n\nThe final budget vote is expected during the {date2} Town Meeting. Copies of the full budget proposal are available at the library and online at wayland.ma.us.",

      "The Board of Selectmen will hold a public hearing on {date} regarding the proposed FY{year} operating budget totaling ${amount} million.\n\nBudget Overview:\n• Total municipal budget: ${amount} million (increase of {percent}% from last year)\n• School department allocation: ${amount2} million ({percent2}% of total budget)\n• Public works and infrastructure: ${amount3} million\n• Public safety (police and fire): ${amount4} million\n• General government operations: ${amount5} million\n\nKey Budget Items:\n- New fire truck replacement: ${amount6}\n- School building maintenance fund: ${amount7} million\n- Road resurfacing program: ${amount8} million\n- Technology upgrades for municipal buildings: ${amount9}\n- Park and recreation facility improvements: ${amount10}\n\nProperty Tax Impact:\n• Estimated tax increase: {percent3}% for average single-family home\n• Average annual increase: ${amount11} for homes valued at ${amount12}\n• Commercial property rate adjustment: {percent4}%\n\nThe hearing will take place at {time} PM in the Selectmen's Meeting Room at Town Building. Residents are encouraged to review the detailed budget documents available on the town website and provide feedback during the public comment period.\n\nWritten comments may be submitted to selectmen@wayland.ma.us through {date3}."
    ]
  },

  elections: {
    topics: ['election', 'candidates', 'voting', 'ballot', 'campaign'],
    subjectTemplates: [
      "School Board Election Updates - {count} Candidates Declared",
      "Board of Selectmen Race - Candidate Forum Scheduled",
      "Town Clerk Election Information",
      "Annual Town Election Results",
      "Candidate Night - All Welcome",
      "Voter Registration Deadline Reminder",
      "Early Voting Information",
      "Election Day Polling Locations",
      "Absentee Ballot Request Information",
      "Local Election Preview"
    ],
    contentTemplates: [
      "{count} candidates have officially declared their intention to run for the open position on the Wayland School Board in the upcoming {month} election.\n\nCANDIDATE PROFILES:\n\n{candidate1}\n- {background1}\n- Platform focuses: {platform1}\n- Key accomplishments: {accomplishments1}\n\n{candidate2}\n- {background2}\n- Platform focuses: {platform2}\n- Vision: \"{vision2}\"\n\n{candidate3}\n- {background3}\n- Platform focuses: {platform3}\n- Experience: {experience3}\n\nUPCOMING EVENTS:\n\nCandidate Forum - {date}, {time} PM\nLocation: Wayland High School Auditorium\nFormat: Moderated Q&A with questions from audience\nTopics: Budget priorities, curriculum decisions, facilities planning\n\nMeet the Candidates Coffee Hours:\n- {date1} ({candidate1}) - Town Library, 10 AM\n- {date2} ({candidate2}) - Community Center, 6 PM\n- {date3} ({candidate3}) - Cochituate Fire Station, 11 AM\n\nVOTING INFORMATION:\n\nEarly voting begins: {date4}\nElection Day: {date5}\nPolling locations: Town Building, High School, Community Center\nAbsentee ballots available through Town Clerk's office\n\nThis election is particularly important as the School Board will be making crucial decisions about the upcoming budget, facility improvements, and long-term strategic planning. The winning candidate will serve a three-year term.\n\nFor more information about candidate positions and voting procedures, visit the Town Clerk's website or contact the Elections Office at 508-358-4620."
    ]
  },

  zoning: {
    topics: ['zoning', 'development', 'planning', 'construction', 'permits'],
    subjectTemplates: [
      "Zoning Changes Proposed for Downtown - Community Input Needed",
      "Planning Board Hearing - {address} Development",
      "Zoning Bylaw Amendment Discussion",
      "40B Housing Proposal Update",
      "Site Plan Review - {project} Project",
      "Zoning Board of Appeals Meeting",
      "Historic District Expansion Proposal",
      "Mixed-Use Development Guidelines",
      "Accessory Dwelling Unit Regulations",
      "Commercial District Rezoning"
    ],
    contentTemplates: [
      "The Wayland Planning Board is considering significant updates to downtown zoning regulations that could reshape the character and development of our town center.\n\nPROPOSED CHANGES OVERVIEW:\n\nMixed-Use Development Allowances:\nThe current zoning restricts most downtown areas to commercial use only. The proposed changes would allow:\n- Residential units above ground-floor commercial spaces\n- Live-work units for artists, professionals, and small business owners\n- Senior housing integrated with retail and services\n- Small-scale office spaces in converted buildings\n\nHeight and Density Modifications:\n- Current {current_limit}-story limit would increase to {new_limit} stories in designated areas\n- Increased building coverage from {old_percent}% to {new_percent}% of lot size\n- Reduced parking requirements for mixed-use buildings near public transit\n\nDesign Standards:\n- New architectural guidelines to maintain historic character\n- Requirements for pedestrian-friendly facades and streetscapes\n- Green space and landscaping minimums\n- Preservation requirements for historically significant buildings\n\nPOTENTIAL IMPACTS:\n\nEconomic Development:\n+ Could attract new businesses and increase property values\n+ May provide more diverse housing options\n+ Potential for increased tax revenue\n- Concerns about strain on infrastructure and services\n- Questions about traffic and parking impacts\n\nCommunity Character:\n+ Opportunity to create more vibrant, walkable downtown\n+ Could provide housing for young professionals and seniors\n+ May support local businesses with increased foot traffic\n- Residents worry about losing small-town atmosphere\n- Concerns about increased building heights and density\n\nInfrastructure Considerations:\n- Water and sewer capacity assessments needed\n- Traffic flow studies required for major intersections\n- Public safety access and emergency response planning\n- School enrollment projections for residential components\n\nCOMMUNITY INPUT OPPORTUNITIES:\n\nPublic Hearing: {date}, {time} PM\nLocation: Town Building, Selectmen's Meeting Room\nFormat: Formal presentation followed by public comment period\n\nInformal Discussion Sessions:\n- {date1}, {time1} PM - Coffee hour at Dunkin' Donuts\n- {date2}, {time2} AM - Morning session at Council on Aging\n- {date3}, {time3} PM - Evening session at Library\n\nOnline Survey: Available on town website through {deadline}\nWritten Comments: Can be submitted to Planning Board via email or mail\n\nThe Planning Board emphasizes that these are preliminary proposals and that community input will significantly influence the final recommendations. The goal is to balance economic development opportunities with preservation of Wayland's unique character.\n\nThis process could impact local businesses, property owners, renters, and anyone who cares about the future direction of our downtown area. Your participation in these discussions is crucial.\n\nFor detailed maps and full proposal documents, visit wayland.ma.us/planning or stop by the Planning Department during regular business hours."
    ]
  },

  infrastructure: {
    topics: ['infrastructure', 'roads', 'water', 'sewer', 'maintenance'],
    subjectTemplates: [
      "Water Main Replacement Project - Traffic Impacts",
      "Route 27 Road Resurfacing Schedule",
      "Sewer Line Upgrade Project",
      "Town Center Sidewalk Improvements",
      "Bridge Maintenance Update",
      "Snow Removal Operations Update",
      "Public Works Summer Projects",
      "Water Quality Testing Results",
      "Trash Collection Schedule Changes",
      "Street Light LED Conversion Project"
    ],
    contentTemplates: [
      "The Department of Public Works has announced a major water main replacement project that will significantly impact traffic patterns in the Route 27 corridor through the winter and spring months.\n\nPROJECT DETAILS:\n\nScope: Replacement of {distance} miles of aging water infrastructure\nTimeline: {start_month} {year} through {end_month} {year}\nCost: ${cost} million, funded through water enterprise fund\nContractor: {contractor_name}\n\nTRAFFIC IMPACTS:\n\nPhase 1 ({phase1_dates}):\n- Route 27 from Town Center to {landmark1}\n- One lane traffic with flaggers during daytime hours\n- Full road closure: 9 PM - 5 AM weeknights for pipe installation\n- Weekend work: Saturday 6 AM - Sunday 6 PM\n\nPhase 2 ({phase2_dates}):\n- Route 27 from {landmark1} to {landmark2}\n- Similar traffic restrictions as Phase 1\n- Additional work on connecting side streets\n\nALTERNATE ROUTES:\n\nDuring peak construction hours, consider:\n- Old Connecticut Path to Routes 20/126\n- Happy Hollow Road to Route 30\n- Back roads through Cochituate area\n- Public transit: MBTA express bus service increased\n\nCOMMUNITY ACCOMMODATIONS:\n\nEmergency Services: All fire, police, and ambulance routes maintained\nSchool Transportation: Bus routes adjusted, notifications sent to families\nBusiness Access: Maintained during business hours, delivery coordination available\nResident Access: Guaranteed access to all properties\n\nThe DPW will provide weekly updates on construction progress and any schedule changes. A dedicated hotline ({phone}) has been established for questions and concerns.\n\nThis infrastructure investment will improve water quality, pressure, and reliability for the next 50+ years. We appreciate the community's patience during this important project."
    ]
  },

  townMeeting: {
    topics: ['town meeting', 'articles', 'voting', 'warrant', 'decisions'],
    subjectTemplates: [
      "Fall Town Meeting Results - Key Votes and Decisions",
      "Spring Town Meeting Warrant Articles",
      "Annual Town Meeting Preview",
      "Special Town Meeting Called",
      "Town Meeting Attendance Information",
      "Warrant Article Explanations",
      "Town Meeting Voting Results",
      "Citizen Petition Articles",
      "Town Meeting Schedule Changes",
      "Moderator Election Results"
    ],
    contentTemplates: [
      "The Fall {year} Town Meeting concluded last night after {sessions} sessions of robust discussion and democratic decision-making. Here are the key results from the major articles voted on by Wayland residents.\n\nARTICLE RESULTS:\n\nArticle {num1}: {title1} - {result1} ({votes1})\n{description1}\nWork to begin {start_date}, completion by {end_date}.\n\nArticle {num2}: {title2} - {result2} ({votes2})\n{description2}\n\nArticle {num3}: {title3} - {result3} ({votes3})\n{description3}\nOpposition centered on {opposition_reason}\nSupporters plan to revise proposal for Spring Town Meeting\n\nArticle {num4}: {title4} - {result4} ({votes4})\n{description4}\n\nArticle {num5}: {title5} - {result5} ({votes5})\n{description5}\n\nBUDGET AMENDMENTS:\n\n{amendment1}: {result_a1}\n{amendment2}: {result_a2}\n{amendment3}: {result_a3}\n{amendment4}: {result_a4}\n\nCITIZEN PETITIONS:\n\n{petition1}: {result_p1}\n{petition2}: {result_p2}\n{petition3}: {result_p3}\n\nATTENDANCE AND PARTICIPATION:\n\nTotal registered voters: {total_voters}\nTown Meeting attendance: {attendance} (average across {sessions} sessions)\nFirst-time attendees: {first_time}\nYouth participation (16-17 year olds): {youth}\n\nMeeting highlights included passionate debate about {debate_topic1}, thoughtful discussion of {debate_topic2}, and strong community support for {support_topic}.\n\nThe next Town Meeting is scheduled for {next_date}. Warrant articles are due to the Board of Selectmen by {deadline}.\n\nFor complete meeting minutes and video recordings, visit the Town Clerk's website. All voted articles will be posted within 48 hours.\n\nSpecial thanks to our volunteers: moderator, tellers, and tech support team who made these meetings possible."
    ]
  },

  education: {
    topics: ['school', 'education', 'students', 'curriculum', 'facilities'],
    subjectTemplates: [
      "School Budget Override Question",
      "New School Building Project Update",
      "Curriculum Changes Announcement",
      "School Start Time Discussion",
      "Special Education Program Expansion",
      "Technology Initiative Launch",
      "School Safety Improvements",
      "Teacher Contract Negotiations",
      "School Enrollment Projections",
      "Athletic Facility Upgrades"
    ],
    contentTemplates: [
      "The Wayland School Committee announced significant changes to the district's educational programs and facilities during last night's meeting.\n\nKEY DECISIONS:\n\n{topic1}:\n{description1}\n\n{topic2}:\n{description2}\n\n{topic3}:\n{description3}\n\nBUDGET IMPLICATIONS:\n\nTotal additional funding needed: ${amount} million\nFunding sources:\n- State grants: ${amount1} million\n- Local appropriation: ${amount2} million\n- Federal programs: ${amount3}\n\nTIMELINE:\n\nPhase 1: {date1} - {milestone1}\nPhase 2: {date2} - {milestone2}\nFull implementation: {date3}\n\nCOMMUNITY IMPACT:\n\nStudents affected: {student_count} across grades {grades}\nStaff changes: {staff_count} new positions\nFacility modifications: {facility_changes}\n\nPUBLIC INPUT OPPORTUNITIES:\n\nInformation Sessions:\n- {date_a} - Elementary Parents, {time_a} PM at {location_a}\n- {date_b} - Middle School Families, {time_b} PM at {location_b}\n- {date_c} - High School Community, {time_c} PM at {location_c}\n\nOnline Survey: Available through {survey_deadline}\nEmail feedback: schoolcommittee@wayland.k12.ma.us\n\nThe School Committee emphasized that these changes align with the district's strategic plan and commitment to providing world-class education for all Wayland students.\n\nDetailed information packets will be mailed to all families by {mail_date}. Additional resources are available on the district website at wayland.k12.ma.us."
    ]
  }
};

// Authors with realistic variety
const authors = [
  "Wayland Voters Network",
  "Board of Selectmen",
  "Planning Board",
  "School Committee",
  "Finance Committee",
  "Public Works Department",
  "Town Clerk",
  "Conservation Commission",
  "Board of Health",
  "Housing Authority",
  "Recreation Commission",
  "Council on Aging",
  "Wayland Voters Network Moderator",
  "Town Administrator",
  "Economic Development Committee"
];

// Helper function to generate random values for templates
const generateRandomValues = (year: number, month: number) => ({
  year: year.toString(),
  amount: (Math.random() * 10 + 1).toFixed(1),
  amount2: (Math.random() * 500 + 100).toFixed(0) + "K",
  amount3: (Math.random() * 3 + 1).toFixed(1),
  amount4: (Math.random() * 2 + 1).toFixed(1),
  amount5: (Math.random() * 1 + 0.5).toFixed(1),
  amount6: (Math.random() * 800 + 400).toFixed(0) + "K",
  amount7: (Math.random() * 5 + 2).toFixed(1),
  amount8: (Math.random() * 3 + 1).toFixed(1),
  amount9: (Math.random() * 200 + 50).toFixed(0) + "K",
  amount10: (Math.random() * 300 + 100).toFixed(0) + "K",
  amount11: (Math.random() * 1000 + 200).toFixed(0),
  amount12: (Math.random() * 200000 + 500000).toFixed(0),
  percent: (Math.random() * 10 + 5).toFixed(1),
  percent2: (Math.random() * 20 + 60).toFixed(0),
  percent3: (Math.random() * 3 + 1).toFixed(1),
  percent4: (Math.random() * 2 + 1).toFixed(1),
  count: Math.floor(Math.random() * 2 + 3).toString(),
  distance: (Math.random() * 3 + 1).toFixed(1),
  cost: (Math.random() * 5 + 2).toFixed(1),
  phone: "508-358-" + Math.floor(Math.random() * 9000 + 1000),
  date: `${month > 6 ? month - 1 : month + 1}/${Math.floor(Math.random() * 28 + 1)}/${year}`,
  date1: `${month}/${Math.floor(Math.random() * 28 + 1)}/${year}`,
  date2: `${month}/${Math.floor(Math.random() * 28 + 1)}/${year}`,
  date3: `${month}/${Math.floor(Math.random() * 28 + 1)}/${year}`,
  time: Math.floor(Math.random() * 3 + 7).toString(),
  current_limit: Math.floor(Math.random() * 2 + 2).toString(),
  new_limit: Math.floor(Math.random() * 2 + 3).toString(),
  old_percent: Math.floor(Math.random() * 20 + 40).toString(),
  new_percent: Math.floor(Math.random() * 20 + 55).toString(),
  candidate1: "Sarah Johnson",
  candidate2: "Michael Chen",
  candidate3: "Lisa Rodriguez",
  background1: "Current School Board member since 2021, Former elementary school teacher, parent of two WHS graduates",
  background2: "Newcomer to local politics, Wayland resident for 8 years, Software engineer at local tech company, parent of current middle school student",
  background3: "Former PTO president at Happy Hollow Elementary, Nonprofit management background, parent of three children in Wayland schools",
  platform1: "Technology integration, teacher retention, special education services",
  platform2: "Budget efficiency, innovative learning approaches, community engagement",
  platform3: "Equity and inclusion, support for diverse learners, parent communication",
  accomplishments1: "Led initiative for improved mental health support, advocated for expanded STEM programs",
  vision2: "Bringing 21st-century solutions to education challenges",
  experience3: "Organized successful fundraising campaigns, led policy advocacy efforts"
});

// Function to generate all 1,460 messages
const generateAllMessages = (): GeneratedMessage[] => {
  const allMessages: GeneratedMessage[] = [];
  const categories = Object.keys(messageTemplates);
  const startDate = new Date(2004, 1, 24); // February 24, 2004
  const endDate = new Date(2025, 11, 31); // December 31, 2025

  // Calculate total days and messages per day
  const totalDays = Math.floor((endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24));
  const messagesPerCategory = Math.floor(1460 / categories.length);

  let messageId = 1;

  categories.forEach((category, catIndex) => {
    const template = messageTemplates[category];
    const messagesForCategory = catIndex === categories.length - 1
      ? 1460 - (messagesPerCategory * (categories.length - 1)) // Last category gets remainder
      : messagesPerCategory;

    for (let i = 0; i < messagesForCategory; i++) {
      // Distribute messages across the entire timespan
      const dayOffset = Math.floor((i / messagesForCategory) * totalDays) + Math.floor(Math.random() * 30);
      const messageDate = new Date(startDate.getTime() + dayOffset * 24 * 60 * 60 * 1000);

      const year = messageDate.getFullYear();
      const month = messageDate.getMonth() + 1;
      const day = messageDate.getDate();

      // Select random templates and author
      const subjectTemplate = template.subjectTemplates[Math.floor(Math.random() * template.subjectTemplates.length)];
      const contentTemplate = template.contentTemplates[Math.floor(Math.random() * template.contentTemplates.length)];
      const author = authors[Math.floor(Math.random() * authors.length)];

      // Generate random values for template substitution
      const values = generateRandomValues(year, month);

      // Replace placeholders in subject and content
      let subject = subjectTemplate;
      let content = contentTemplate;

      Object.entries(values).forEach(([key, value]) => {
        const regex = new RegExp(`{${key}}`, 'g');
        subject = subject.replace(regex, value);
        content = content.replace(regex, value);
      });

      // Add update numbers for recurring topics
      if (i > 0 && Math.random() > 0.7) {
        const updateNum = Math.floor(Math.random() * 5) + 1;
        subject += ` - Update ${updateNum}`;
      }

      const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

      allMessages.push({
        id: messageId.toString(),
        date: `${year}-${String(month).padStart(2, '0')}-${String(day).padStart(2, '0')}`,
        displayDate: `${monthNames[month - 1]} ${day}, ${year}`,
        subject: subject,
        author: author,
        content: content,
        year: year,
        month: monthNames[month - 1],
        monthIndex: month - 1,
        category: category,
        topics: template.topics
      });

      messageId++;
    }
  });

  // Sort by date (newest first)
  return allMessages.sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
};

// Generate all messages
export const allGeneratedMessages = generateAllMessages();

// All sample messages cleared - using only CSV import data
// eslint-disable-next-line @typescript-eslint/no-explicit-any
export const sampleMessages: any[] = [];
