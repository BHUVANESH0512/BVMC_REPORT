// Shared builder state
export const state = {
  activeFleet: {},
  activeIssues: [],
  currentMode: 'Autonomous',
  currentStatus: 'healthy', // 'healthy', 'unhealthy', 'inactive', 'mdm_issue'
  currentRegion: 'India',   // 'India' (IST) or 'US' (PST)
  editingIssueIndex: -1,
  SAVED_REPORTS: []
};
