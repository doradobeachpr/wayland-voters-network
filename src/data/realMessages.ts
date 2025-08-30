// Real message data structure - currently empty but maintains interface
export interface RealMessage {
  id: string;
  messageNumber: number;
  subject: string;
  author: string;
  date: string;
  displayDate: string;
  year: number;
  month: string;
  monthIndex: number;
  category: string;
  topics: string[];
  url?: string;
  content?: string;
}

// Dataset cleared - will be populated from CSV import only
export const createRealMessageDataset = (): RealMessage[] => {
  return []; // Cleared for fresh CSV import
};

export const realMessageDataset = createRealMessageDataset();
