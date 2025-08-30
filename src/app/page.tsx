"use client";

import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog";
import {
  Users,
  Calendar,
  MessageSquare,
  Mail,
  Archive,
  ExternalLink,
  Search,
  Filter,
  X,
  Loader2
} from "lucide-react";
import Link from "next/link";
import { useState, useMemo, useEffect } from "react";
import { sampleMessages } from "../data/sampleMessages";
import { getArchivedMessagesByYear, getMessagesForMonth, YearData, MonthData } from "@/lib/messageService";
import { Message } from "@/lib/supabase";


export default function Home() {
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedYear, setSelectedYear] = useState<number | null>(null);
  const [selectedMonth, setSelectedMonth] = useState<string | null>(null);
  const [showFilters, setShowFilters] = useState(false);
  const [showFullArchive, setShowFullArchive] = useState(false);
  const [archiveYears, setArchiveYears] = useState<YearData[]>([]);
  const [loading, setLoading] = useState(true);
  const [dialogMessages, setDialogMessages] = useState<Message[]>([]);
  const [loadingDialog, setLoadingDialog] = useState(false);

  // Load archive data from database
  useEffect(() => {
    async function loadArchiveData() {
      try {
        setLoading(true);
        const data = await getArchivedMessagesByYear();
        setArchiveYears(data);
      } catch (error) {
        console.error('Error loading archive data:', error);
      } finally {
        setLoading(false);
      }
    }

    loadArchiveData();
  }, []);

  // Load messages for dialog when month is clicked
  const loadMessagesForMonth = async (year: number, month: string) => {
    try {
      setLoadingDialog(true);
      const messages = await getMessagesForMonth(year, month);
      setDialogMessages(messages);
    } catch (error) {
      console.error('Error loading messages for month:', error);
      setDialogMessages([]);
    } finally {
      setLoadingDialog(false);
    }
  };

  // Filter archive data based on search and filters
  const filteredArchiveYears = useMemo(() => {
    let filtered = archiveYears;

    // Apply year filter
    if (selectedYear) {
      filtered = filtered.filter(year => year.year === selectedYear);
    }

    // Apply month filter
    if (selectedMonth) {
      filtered = filtered.map(year => ({
        ...year,
        months: year.months.filter(month => month.month === selectedMonth)
      })).filter(year => year.months.length > 0);
    }

    // Apply search filter - search through message content
    if (searchTerm.trim()) {
      const searchLower = searchTerm.toLowerCase();
      filtered = filtered.map(year => ({
        ...year,
        months: year.months.filter(month => {
          // Check if any sample messages for this month contain the search term
          const hasMatchingMessages = sampleMessages.some(message =>
            message.subject.toLowerCase().includes(searchLower) ||
            message.content.toLowerCase().includes(searchLower) ||
            message.author.toLowerCase().includes(searchLower) ||
            message.date.includes(searchTerm)
          );
          return hasMatchingMessages ||
                 month.month.toLowerCase().includes(searchLower) ||
                 year.year.toString().includes(searchTerm);
        })
      })).filter(year => year.months.length > 0);
    }

    return filtered;
  }, [archiveYears, selectedYear, selectedMonth, searchTerm]);

  const clearFilters = () => {
    setSearchTerm("");
    setSelectedYear(null);
    setSelectedMonth(null);
  };

  const resetFilters = () => {
    setSearchTerm("");
    setSelectedYear(null);
    setSelectedMonth(null);
  };

  const getRandomMessage = () => {
    // Return a placeholder when no sample messages exist
    if (sampleMessages.length === 0) {
      return {
        id: 'placeholder',
        date: 'No date',
        subject: 'No messages available',
        author: 'Wayland Voters Network',
        content: 'No archived messages are currently available. This archive will be populated with real message data from the Wayland Voters Network.'
      };
    }
    return sampleMessages[Math.floor(Math.random() * sampleMessages.length)];
  };

  return (
    <div className="min-h-screen bg-[#f9faf8]">
      {/* Header */}
      <header className="bg-white border-b border-gray-200">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between items-center py-4">
            <Link href="/" className="flex items-center space-x-3">
              <div className="w-8 h-8 bg-orange-500 rounded-full flex items-center justify-center">
                <span className="text-white font-bold text-sm">🗳️</span>
              </div>
              <div>
                <h1 className="text-2xl font-bold text-gray-900">
                  Wayland<span className="text-orange-500">Voters</span>
                </h1>
                <p className="text-sm text-gray-600 uppercase tracking-wide">
                  INFORMING, ENGAGING, CONNECTING VOTERS
                </p>
              </div>
            </Link>
            <nav className="flex space-x-6">
              <Link href="/about" className="text-gray-600 hover:text-orange-500 transition-colors">
                About
              </Link>
              <Link href="/archive" className="text-gray-600 hover:text-orange-500 transition-colors">
                Archive
              </Link>
            </nav>
          </div>
        </div>
      </header>

      {/* Hero Section */}
      <section className="bg-[#f9faf8] py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="bg-white rounded-lg shadow-sm overflow-hidden">
            <div className="h-64 md:h-80 bg-gradient-to-r from-blue-400 to-blue-600 relative">
              <img
                src="/wayland-lake.jpg"
                alt="Wayland Lake in Fall"
                className="w-full h-full object-cover"
              />
            </div>
            <div className="p-8 text-center">
              <h2 className="text-4xl font-bold text-gray-900 mb-4">
                Wayland Voters Network
              </h2>
              <p className="text-lg text-gray-600 mb-6 max-w-3xl mx-auto">
                Welcome to the Wayland Voters Network listserv group. Thank you for
                subscribing. We've been informing Wayland voters since February 24, 2004.
              </p>
              <Link href="/archive">
                <Button className="bg-orange-500 hover:bg-orange-600 text-white">
                  <Archive className="w-4 h-4 mr-2" />
                  Browse Archive
                </Button>
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Vision & Mission Section */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid md:grid-cols-2 gap-8">
            <Card className="border-l-4 border-l-orange-500">
              <CardContent className="p-6">
                <h3 className="text-2xl font-bold text-gray-900 mb-4">THE WVN VISION</h3>
                <p className="text-gray-600 leading-relaxed">
                  A Wayland that promotes respect for citizens of all ages, backgrounds,
                  economic conditions, and household characteristics; whose government is
                  effective, efficient, responsible to, and representative of all residents;
                  and where people in all stages of life thrive.
                </p>
              </CardContent>
            </Card>

            <Card className="border-l-4 border-l-orange-500">
              <CardContent className="p-6">
                <h3 className="text-2xl font-bold text-gray-900 mb-4">THE WVN MISSION</h3>
                <p className="text-gray-600 leading-relaxed">
                  To ensure that Town of Wayland voters are informed about Town decisions
                  that will directly affect them, and encourage voter participation. We
                  believe that an informed electorate will help make Wayland a better
                  place for everyone.
                </p>
              </CardContent>
            </Card>
          </div>
        </div>
      </section>

      {/* Group Information Stats */}
      <section className="py-16 bg-[#f9faf8]">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h3 className="text-3xl font-bold text-gray-900 mb-4">Group Information</h3>
            <p className="text-gray-600">
              Our community has been growing strong since 2004, connecting Wayland voters
              with important information.
            </p>
          </div>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-6">
            <Card className="text-center">
              <CardContent className="p-6">
                <Users className="w-12 h-12 text-orange-500 mx-auto mb-4" />
                <div className="text-3xl font-bold text-gray-900 mb-2">1,259</div>
                <div className="text-gray-600">Members</div>
              </CardContent>
            </Card>

            <Card className="text-center">
              <CardContent className="p-6">
                <MessageSquare className="w-12 h-12 text-orange-500 mx-auto mb-4" />
                <div className="text-3xl font-bold text-gray-900 mb-2">1,460</div>
                <div className="text-gray-600">Topics</div>
              </CardContent>
            </Card>

            <Card className="text-center">
              <CardContent className="p-6">
                <Calendar className="w-12 h-12 text-orange-500 mx-auto mb-4" />
                <div className="text-3xl font-bold text-gray-900 mb-2">2004</div>
                <div className="text-gray-600">Since</div>
              </CardContent>
            </Card>

            <Card className="text-center">
              <CardContent className="p-6">
                <Mail className="w-12 h-12 text-orange-500 mx-auto mb-4" />
                <div className="text-3xl font-bold text-gray-900 mb-2">Jun 24</div>
                <div className="text-gray-600">Last Post</div>
              </CardContent>
            </Card>
          </div>
        </div>
      </section>

      {/* Message Archive Section */}
      <section id="archive" className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <h3 className="text-3xl font-bold text-gray-900 mb-4">Message Archive</h3>
            <p className="text-gray-600 mb-8">
              Browse our complete archive of newsletters and community discussions.
              All previous newsletters are searchable from the Messages tab.
            </p>
          </div>

          {/* Search and Filter Controls */}
          <div className="mb-8">
            <div className="flex flex-col sm:flex-row gap-4 mb-6">
              <div className="flex-1 relative">
                <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
                <Input
                  placeholder="Search messages..."
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                  className="pl-10"
                />
              </div>
              <Button
                variant="outline"
                onClick={() => setShowFilters(!showFilters)}
                className="flex items-center"
              >
                <Filter className="w-4 h-4 mr-2" />
                Filters
              </Button>
            </div>

            {showFilters && (
              <Card className="p-4 mb-6">
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Year</label>
                    <select
                      value={selectedYear || ""}
                      onChange={(e) => setSelectedYear(e.target.value ? parseInt(e.target.value) : null)}
                      className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
                    >
                      <option value="">All Years</option>
                      {archiveYears.map(year => (
                        <option key={year.year} value={year.year}>{year.year}</option>
                      ))}
                    </select>
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Month</label>
                    <select
                      value={selectedMonth || ""}
                      onChange={(e) => setSelectedMonth(e.target.value || null)}
                      className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
                    >
                      <option value="">All Months</option>
                      {['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'].map(month => (
                        <option key={month} value={month}>{month}</option>
                      ))}
                    </select>
                  </div>
                  <div className="flex items-end">
                    <Button variant="outline" onClick={clearFilters} className="w-full">
                      <X className="w-4 h-4 mr-2" />
                      Clear Filters
                    </Button>
                  </div>
                </div>
              </Card>
            )}

            {(selectedYear || selectedMonth || searchTerm) && (
              <div className="mb-4 space-y-2">
                <div className="flex items-center gap-2">
                  <span className="text-sm text-gray-600">Active filters:</span>
                  {selectedYear && (
                    <Badge variant="outline" className="bg-orange-50 border-orange-200">
                      Year: {selectedYear}
                    </Badge>
                  )}
                  {selectedMonth && (
                    <Badge variant="outline" className="bg-orange-50 border-orange-200">
                      Month: {selectedMonth}
                    </Badge>
                  )}
                  {searchTerm && (
                    <Badge variant="outline" className="bg-yellow-50 border-yellow-300">
                      Search: "{searchTerm}"
                    </Badge>
                  )}
                </div>
                {searchTerm && (
                  <div className="text-sm text-gray-600">
                    <span className="font-medium">Search results:</span> Found messages containing "{searchTerm}" in
                    {filteredArchiveYears.reduce((total, year) => total + year.months.length, 0)} months
                  </div>
                )}
              </div>
            )}
          </div>

          <div className="mb-8">
            <h4 className="text-xl font-semibold text-gray-900 mb-4">Archived Messages by Year</h4>
            <p className="text-gray-600 mb-6">Click on any number to view messages from that month</p>

            <div className="bg-green-50 border border-green-200 rounded-lg p-4 mb-8">
              <div className="flex items-start">
                <Archive className="w-5 h-5 text-green-600 mt-0.5 mr-3 flex-shrink-0" />
                <div>
                  <h5 className="font-semibold text-green-800 mb-1">Complete Archive:</h5>
                  <p className="text-green-700 text-sm">
                    Full historical archive imported! Now showing all 1,460 messages spanning
                    from February 24, 2004 to present.
                  </p>
                </div>
              </div>
            </div>
          </div>

          {/* Archive Years Grid */}
          <div className="space-y-8">
            {loading ? (
              <div className="flex items-center justify-center p-12">
                <Loader2 className="w-8 h-8 animate-spin mr-3" />
                <span className="text-gray-600 text-lg">Loading archived messages...</span>
              </div>
            ) : (showFullArchive ? filteredArchiveYears : filteredArchiveYears.slice(0, 6)).map((yearData) => (
              <div key={yearData.year} className="border rounded-lg p-6">
                <h5 className="text-2xl font-bold text-gray-900 mb-4">{yearData.year}</h5>
                <div className="grid grid-cols-12 gap-2">
                  {yearData.months.map((monthData, index) => (
                    <div key={index} className="text-center">
                      <div className="text-sm text-gray-600 mb-2">{monthData.month}</div>
                      {monthData.count ? (
                        <Dialog>
                          <DialogTrigger asChild>
                            <Badge
                              variant="outline"
                              className="cursor-pointer hover:bg-orange-50 hover:border-orange-200 min-w-[2rem] justify-center transition-colors"
                              onClick={() => loadMessagesForMonth(yearData.year, monthData.month)}
                            >
                              {monthData.count}
                            </Badge>
                          </DialogTrigger>
                          <DialogContent className="max-w-2xl max-h-[80vh] overflow-y-auto">
                            <DialogHeader>
                              <DialogTitle>Messages from {monthData.month} {yearData.year}</DialogTitle>
                            </DialogHeader>
                            <div className="space-y-6">
                              {loadingDialog ? (
                                <div className="flex items-center justify-center p-8">
                                  <Loader2 className="w-6 h-6 animate-spin mr-2" />
                                  <span className="text-gray-600">Loading messages...</span>
                                </div>
                              ) : dialogMessages.length > 0 ? (
                                <>
                                  {dialogMessages.map((message, i) => (
                                    <div key={message.id || i} className="border rounded-lg p-6 bg-gray-50">
                                      <div className="flex justify-between items-start mb-3">
                                        <h4 className="font-bold text-lg text-gray-900">{message.subject}</h4>
                                        <span className="text-sm text-gray-500 bg-white px-2 py-1 rounded">{message.display_date}</span>
                                      </div>
                                      <p className="text-sm text-orange-600 mb-4 font-medium">By: {message.author}</p>
                                      <div className="prose prose-sm max-w-none">
                                        <div className="text-gray-700 leading-relaxed whitespace-pre-line">
                                          {message.content}
                                        </div>
                                      </div>
                                      {searchTerm && (
                                        <div className="mt-4 p-3 bg-yellow-50 border-l-4 border-yellow-400">
                                          <p className="text-sm text-yellow-800">
                                            <strong>Search found:</strong> This message contains "{searchTerm}"
                                          </p>
                                        </div>
                                      )}
                                    </div>
                                  ))}
                                  {monthData.count > dialogMessages.length && (
                                    <div className="text-center p-4 bg-gray-100 rounded-lg">
                                      <p className="text-gray-600 text-sm">
                                        <strong>... and {monthData.count - dialogMessages.length} more messages</strong>
                                      </p>
                                      <Link href="/archive" className="text-orange-600 hover:text-orange-700 text-sm font-medium">
                                        View all messages in archive →
                                      </Link>
                                    </div>
                                  )}
                                </>
                              ) : (
                                <div className="text-center p-8">
                                  <p className="text-gray-600">No messages found for this month.</p>
                                </div>
                              )}
                            </div>
                          </DialogContent>
                        </Dialog>
                      ) : (
                        <div className="text-gray-400 text-sm">-</div>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>

          <div className="text-center mt-8">
            <Button
              variant="outline"
              className="border-orange-500 text-orange-500 hover:bg-orange-50"
              onClick={() => {
                setShowFullArchive(!showFullArchive);
                console.log('Full archive toggled:', !showFullArchive);
              }}
            >
              <Archive className="w-4 h-4 mr-2" />
              {showFullArchive ? 'Show Less' : 'View Full Archive (2004-2025)'}
            </Button>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="bg-[#324153] text-white py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid md:grid-cols-2 gap-8">
            <div>
              <div className="flex items-center space-x-3 mb-4">
                <div className="w-8 h-8 bg-orange-500 rounded-full flex items-center justify-center">
                  <span className="text-white font-bold text-sm">🗳️</span>
                </div>
                <h4 className="text-xl font-bold">
                  Wayland<span className="text-orange-400">Voters</span>
                </h4>
              </div>
              <p className="text-gray-300 mb-2">Moderator: Wayland Voters Network</p>
              <p className="text-gray-300">main@WaylandVoters.groups.io</p>
            </div>

            <div>
              <h4 className="text-lg font-semibold mb-4">Quick Links</h4>
              <ul className="space-y-2">
                <li>
                  <Link href="/about" className="text-gray-300 hover:text-orange-400 transition-colors">
                    About WVN
                  </Link>
                </li>
                <li>
                  <Link href="/archive" className="text-gray-300 hover:text-orange-400 transition-colors">
                    Message Archive
                  </Link>
                </li>
              </ul>
            </div>
          </div>

          <div className="border-t border-gray-600 mt-8 pt-8 text-center">
            <p className="text-gray-400 mb-2">
              © 2025 Wayland Voters Network. Launched February 24, 2004.
            </p>
            <p className="text-gray-400">
              Dedicated to helping make Wayland a better place for everyone through an informed electorate.
            </p>
          </div>
        </div>
      </footer>
    </div>
  );
}
