"use client";

import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
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
  SortAsc,
  SortDesc,
  Clock,
  User,
  FileText,
  ArrowLeft,
  ChevronLeft,
  ChevronRight,
  ChevronsLeft,
  ChevronsRight,
  Loader2
} from "lucide-react";
import Link from "next/link";
import { useState, useMemo, useEffect } from "react";
import { getMessages, getUniqueAuthors, getUniqueYears } from "@/lib/messageService";
import { Message } from "@/lib/supabase";

export default function ArchivePage() {
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedYear, setSelectedYear] = useState<number | null>(null);
  const [selectedMonth, setSelectedMonth] = useState<string | null>(null);
  const [showFilters, setShowFilters] = useState(false);
  const [sortBy, setSortBy] = useState<"date" | "subject" | "author">("date");
  const [sortOrder, setSortOrder] = useState<"asc" | "desc">("desc");
  const [selectedAuthor, setSelectedAuthor] = useState<string | null>(null);
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(25);

  // Database state
  const [messages, setMessages] = useState<Message[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [uniqueAuthors, setUniqueAuthors] = useState<string[]>([]);
  const [uniqueYears, setUniqueYears] = useState<number[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);



  // Load messages from database
  const loadMessages = async () => {
    try {
      setLoading(true);
      setError(null);

      const filters = {
        search: searchTerm.trim() || undefined,
        year: selectedYear || undefined,
        month: selectedMonth || undefined,
        author: selectedAuthor || undefined,
        sortBy,
        sortOrder,
        page: currentPage,
        pageSize
      };

      const [messagesResult, authorsData, yearsData] = await Promise.all([
        getMessages(filters),
        getUniqueAuthors(),
        getUniqueYears()
      ]);

      setMessages(messagesResult.messages);
      setTotalCount(messagesResult.totalCount);
      setUniqueAuthors(authorsData);
      setUniqueYears(yearsData);
    } catch (err) {
      console.error('Error loading messages:', err);
      setError('Failed to load messages from database');
    } finally {
      setLoading(false);
    }
  };

  // Load messages when filters change
  useEffect(() => {
    loadMessages();
  }, [searchTerm, selectedYear, selectedMonth, selectedAuthor, sortBy, sortOrder, currentPage, pageSize]);

  // Reset to first page when filters change
  useEffect(() => {
    if (currentPage !== 1) {
      setCurrentPage(1);
    }
  }, [searchTerm, selectedYear, selectedMonth, selectedAuthor]);

  const clearAllFilters = () => {
    setSearchTerm("");
    setSelectedYear(null);
    setSelectedMonth(null);
    setSelectedAuthor(null);
    setCurrentPage(1);
  };

  const highlightSearchTerm = (text: string, searchTerm: string) => {
    if (!searchTerm.trim()) return text;

    const regex = new RegExp(`(${searchTerm})`, 'gi');
    const parts = text.split(regex);

    return parts.map((part, index) =>
      regex.test(part) ?
        <mark key={index} className="bg-yellow-200 px-1 rounded">{part}</mark> :
        part
    );
  };



  const totalPages = Math.ceil(totalCount / pageSize);

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
              <Link href="/archive" className="text-orange-500 font-medium">
                Archive
              </Link>
            </nav>
          </div>
        </div>
      </header>

      {/* Back Button */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-8">
        <Link href="/">
          <Button variant="outline" className="mb-8">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>
      </div>

      {/* Hero Section */}
      <section className="bg-white py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <div className="flex items-center justify-center mb-6">
            <Archive className="w-12 h-12 text-orange-500 mr-4" />
            <h1 className="text-5xl font-bold text-gray-900">Message Archive</h1>
          </div>
          <p className="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
            Search through messages from the Wayland Voters Network spanning from
            February 24, 2004 to present. Find information on town meetings, budget discussions,
            elections, and community announcements.
          </p>


        </div>
      </section>

      {/* Search Interface */}
      <section className="py-12 bg-[#f9faf8]">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {/* Main Search */}
          <div className="mb-8">
            <div className="max-w-2xl mx-auto relative">
              <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
              <Input
                placeholder="Search messages by content, subject, author, or date..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="pl-12 pr-4 py-4 text-lg border-2 border-gray-200 focus:border-orange-500 rounded-lg"
              />
              {searchTerm && (
                <Button
                  variant="ghost"
                  size="sm"
                  onClick={() => setSearchTerm("")}
                  className="absolute right-2 top-1/2 transform -translate-y-1/2"
                >
                  <X className="w-4 h-4" />
                </Button>
              )}
            </div>
          </div>

          {/* Filters and Sorting */}
          <div className="mb-8">
            <div className="flex flex-col lg:flex-row gap-4 items-center justify-between">
              <Button
                variant="outline"
                onClick={() => setShowFilters(!showFilters)}
                className="flex items-center"
              >
                <Filter className="w-4 h-4 mr-2" />
                Advanced Filters
                {(selectedYear || selectedMonth || selectedAuthor) && (
                  <Badge variant="outline" className="ml-2 bg-orange-50 border-orange-200">
                    {[selectedYear, selectedMonth, selectedAuthor].filter(Boolean).length}
                  </Badge>
                )}
              </Button>

              <div className="flex flex-col lg:flex-row gap-4 items-start lg:items-center justify-between">
                <div className="flex items-center gap-4">
                  <div className="flex items-center gap-2">
                    <span className="text-sm text-gray-600">Sort by:</span>
                    <select
                      value={sortBy}
                      onChange={(e) => setSortBy(e.target.value as "date" | "subject" | "author")}
                      className="rounded-md border border-input bg-background px-3 py-1 text-sm"
                    >
                      <option value="date">Date</option>
                      <option value="subject">Subject</option>
                      <option value="author">Author</option>
                    </select>
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => setSortOrder(sortOrder === "asc" ? "desc" : "asc")}
                    >
                      {sortOrder === "asc" ? <SortAsc className="w-4 h-4" /> : <SortDesc className="w-4 h-4" />}
                    </Button>
                  </div>

                  <div className="flex items-center gap-2">
                    <span className="text-sm text-gray-600">Show:</span>
                    <select
                      value={pageSize}
                      onChange={(e) => {
                        setPageSize(parseInt(e.target.value));
                        setCurrentPage(1);
                      }}
                      className="rounded-md border border-input bg-background px-3 py-1 text-sm"
                    >
                      <option value={10}>10</option>
                      <option value={25}>25</option>
                      <option value={50}>50</option>
                      <option value={100}>100</option>
                    </select>
                  </div>
                </div>

                <div className="text-sm text-gray-600">
                  {loading ? (
                    <div className="flex items-center gap-2">
                      <Loader2 className="w-4 h-4 animate-spin" />
                      Loading...
                    </div>
                  ) : (
                    <strong>
                      {totalCount === 0
                        ? "0"
                        : `${((currentPage - 1) * pageSize) + 1}-${Math.min(currentPage * pageSize, totalCount)} of ${totalCount}`
                      }
                    </strong>
                  )} messages found
                  {totalPages > 1 && !loading && (
                    <span className="ml-2">
                      (Page {currentPage} of {totalPages})
                    </span>
                  )}
                </div>
              </div>
            </div>

            {showFilters && (
              <Card className="mt-4 p-6">
                <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Year</label>
                    <select
                      value={selectedYear || ""}
                      onChange={(e) => setSelectedYear(e.target.value ? parseInt(e.target.value) : null)}
                      className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
                    >
                      <option value="">All Years</option>
                      {uniqueYears.map(year => (
                        <option key={year} value={year}>{year}</option>
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
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Author</label>
                    <select
                      value={selectedAuthor || ""}
                      onChange={(e) => setSelectedAuthor(e.target.value || null)}
                      className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
                    >
                      <option value="">All Authors</option>
                      {uniqueAuthors.map(author => (
                        <option key={author} value={author}>{author}</option>
                      ))}
                    </select>
                  </div>
                  <div className="flex items-end">
                    <Button variant="outline" onClick={clearAllFilters} className="w-full">
                      <X className="w-4 h-4 mr-2" />
                      Clear All
                    </Button>
                  </div>
                </div>
              </Card>
            )}

            {/* Active Filters Display */}
            {(selectedYear || selectedMonth || selectedAuthor || searchTerm) && (
              <div className="mt-4 flex flex-wrap gap-2">
                {searchTerm && (
                  <Badge variant="outline" className="bg-yellow-50 border-yellow-300">
                    Search: "{searchTerm}"
                    <X
                      className="w-3 h-3 ml-1 cursor-pointer"
                      onClick={() => setSearchTerm("")}
                    />
                  </Badge>
                )}
                {selectedYear && (
                  <Badge variant="outline" className="bg-orange-50 border-orange-200">
                    Year: {selectedYear}
                    <X
                      className="w-3 h-3 ml-1 cursor-pointer"
                      onClick={() => setSelectedYear(null)}
                    />
                  </Badge>
                )}
                {selectedMonth && (
                  <Badge variant="outline" className="bg-orange-50 border-orange-200">
                    Month: {selectedMonth}
                    <X
                      className="w-3 h-3 ml-1 cursor-pointer"
                      onClick={() => setSelectedMonth(null)}
                    />
                  </Badge>
                )}
                {selectedAuthor && (
                  <Badge variant="outline" className="bg-orange-50 border-orange-200">
                    Author: {selectedAuthor}
                    <X
                      className="w-3 h-3 ml-1 cursor-pointer"
                      onClick={() => setSelectedAuthor(null)}
                    />
                  </Badge>
                )}
              </div>
            )}
          </div>
        </div>
      </section>

      {/* Search Results */}
      <section className="py-8 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          {error && (
            <Card className="text-center py-12 mb-8 border-red-200 bg-red-50">
              <CardContent>
                <div className="text-red-600 mb-4">⚠️ Database Error</div>
                <h3 className="text-xl font-semibold text-red-900 mb-2">Failed to load messages</h3>
                <p className="text-red-700 mb-4">{error}</p>
                <p className="text-sm text-red-600 mb-4">
                  This may be because Supabase environment variables are not configured.
                </p>
                <Button variant="outline" onClick={loadMessages} className="border-red-300 text-red-700 hover:bg-red-50">
                  Try Again
                </Button>
              </CardContent>
            </Card>
          )}

          {loading ? (
            <Card className="text-center py-12">
              <CardContent>
                <Loader2 className="w-16 h-16 text-orange-500 mx-auto mb-4 animate-spin" />
                <h3 className="text-xl font-semibold text-gray-900 mb-2">Loading messages...</h3>
                <p className="text-gray-600">
                  Searching the database for messages matching your criteria.
                </p>
              </CardContent>
            </Card>
          ) : messages.length === 0 && !error ? (
            <Card className="text-center py-12">
              <CardContent>
                <Search className="w-16 h-16 text-gray-400 mx-auto mb-4" />
                <h3 className="text-xl font-semibold text-gray-900 mb-2">No messages found</h3>
                <p className="text-gray-600 mb-4">
                  {totalCount === 0
                    ? "The database appears to be empty. No messages available to display."
                    : "Try adjusting your search terms or filters to find more results."
                  }
                </p>
                <Button variant="outline" onClick={clearAllFilters}>
                  Clear all filters
                </Button>
              </CardContent>
            </Card>
          ) : (
            <div className="space-y-6">
              {messages.map((message) => (
                <Card key={message.id} className="hover:shadow-md transition-shadow">
                  <CardContent className="p-6">
                    <div className="flex flex-col md:flex-row md:items-start md:justify-between gap-4">
                      <div className="flex-1">
                        <div className="flex items-start gap-3 mb-3">
                          <FileText className="w-5 h-5 text-orange-500 mt-1 flex-shrink-0" />
                          <div className="flex-1">
                            <h3 className="text-xl font-semibold text-gray-900 mb-2">
                              {highlightSearchTerm(message.subject, searchTerm)}
                            </h3>
                            <div className="flex flex-wrap items-center gap-4 text-sm text-gray-600 mb-3">
                              <div className="flex items-center gap-1">
                                <User className="w-4 h-4" />
                                {highlightSearchTerm(message.author, searchTerm)}
                              </div>
                              <div className="flex items-center gap-1">
                                <Clock className="w-4 h-4" />
                                {highlightSearchTerm(message.display_date, searchTerm)}
                              </div>
                            </div>
                            <div className="text-gray-700 mb-4">
                              {highlightSearchTerm(
                                message.content.substring(0, 300) + (message.content.length > 300 ? '...' : ''),
                                searchTerm
                              )}
                            </div>
                          </div>
                        </div>
                      </div>
                      <div className="flex-shrink-0">
                        <Dialog>
                          <DialogTrigger asChild>
                            <Button className="bg-orange-500 hover:bg-orange-600 text-white">
                              Read Full Message
                            </Button>
                          </DialogTrigger>
                          <DialogContent className="max-w-4xl max-h-[80vh] overflow-y-auto">
                            <DialogHeader>
                              <DialogTitle className="text-left">{message.subject}</DialogTitle>
                            </DialogHeader>
                            <div className="space-y-4">
                              <div className="flex items-center gap-4 text-sm text-gray-600 border-b pb-3">
                                <div className="flex items-center gap-1">
                                  <User className="w-4 h-4" />
                                  <strong>Author:</strong> {message.author}
                                </div>
                                <div className="flex items-center gap-1">
                                  <Clock className="w-4 h-4" />
                                  <strong>Date:</strong> {message.display_date}
                                </div>
                              </div>
                              <div className="prose prose-sm max-w-none">
                                <div className="text-gray-700 leading-relaxed whitespace-pre-line">
                                  {highlightSearchTerm(message.content, searchTerm)}
                                </div>
                              </div>
                              {searchTerm && (
                                <div className="mt-6 p-4 bg-yellow-50 border-l-4 border-yellow-400">
                                  <p className="text-sm text-yellow-800">
                                    <strong>Search found:</strong> This message contains "{searchTerm}"
                                  </p>
                                </div>
                              )}
                            </div>
                          </DialogContent>
                        </Dialog>
                      </div>
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          )}

          {/* Pagination Controls */}
          {!loading && !error && messages.length > 0 && totalPages > 1 && (
            <div className="mt-8 flex flex-col sm:flex-row items-center justify-between gap-4">
              <div className="text-sm text-gray-600">
                Showing {((currentPage - 1) * pageSize) + 1}-{Math.min(currentPage * pageSize, totalCount)} of {totalCount} results
              </div>

              <div className="flex items-center gap-2">
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setCurrentPage(1)}
                  disabled={currentPage === 1}
                  className="hidden sm:flex"
                >
                  <ChevronsLeft className="w-4 h-4" />
                </Button>

                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setCurrentPage(Math.max(1, currentPage - 1))}
                  disabled={currentPage === 1}
                >
                  <ChevronLeft className="w-4 h-4" />
                  Previous
                </Button>

                <div className="flex items-center gap-1">
                  {Array.from({ length: Math.min(5, totalPages) }, (_, i) => {
                    let pageNum;
                    if (totalPages <= 5) {
                      pageNum = i + 1;
                    } else if (currentPage <= 3) {
                      pageNum = i + 1;
                    } else if (currentPage >= totalPages - 2) {
                      pageNum = totalPages - 4 + i;
                    } else {
                      pageNum = currentPage - 2 + i;
                    }

                    return (
                      <Button
                        key={pageNum}
                        variant={currentPage === pageNum ? "default" : "outline"}
                        size="sm"
                        onClick={() => setCurrentPage(pageNum)}
                        className={currentPage === pageNum ? "bg-orange-500 hover:bg-orange-600" : ""}
                      >
                        {pageNum}
                      </Button>
                    );
                  })}
                </div>

                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setCurrentPage(Math.min(totalPages, currentPage + 1))}
                  disabled={currentPage === totalPages}
                >
                  Next
                  <ChevronRight className="w-4 h-4" />
                </Button>

                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setCurrentPage(totalPages)}
                  disabled={currentPage === totalPages}
                  className="hidden sm:flex"
                >
                  <ChevronsRight className="w-4 h-4" />
                </Button>
              </div>
            </div>
          )}
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
