"use client";

import { Button } from "@/components/ui/button";
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { useState } from "react";

export default function TestPage() {
  const [searchTerm, setSearchTerm] = useState("");
  const [showFilters, setShowFilters] = useState(false);

  return (
    <div className="min-h-screen bg-gray-50 p-8">
      <div className="max-w-4xl mx-auto">
        <h1 className="text-3xl font-bold mb-8">Button Functionality Test</h1>

        {/* Basic Button Test */}
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">Basic Button Test</h2>
          <Button
            onClick={() => alert('Basic button works!')}
            className="bg-blue-500 hover:bg-blue-600 text-white mr-4"
          >
            Test Basic Button
          </Button>
        </div>

        {/* Search Input Test */}
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">Search Input Test</h2>
          <Input
            placeholder="Type something..."
            value={searchTerm}
            onChange={(e) => {
              setSearchTerm(e.target.value);
              console.log('Search term:', e.target.value);
            }}
            className="mb-2"
          />
          <p>Current search term: {searchTerm}</p>
        </div>

        {/* State Toggle Test */}
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">State Toggle Test</h2>
          <Button
            onClick={() => {
              setShowFilters(!showFilters);
              console.log('Filters toggled:', !showFilters);
            }}
            variant="outline"
            className="mr-4"
          >
            Toggle Filters ({showFilters ? 'ON' : 'OFF'})
          </Button>
          {showFilters && (
            <div className="mt-4 p-4 bg-green-100 rounded">
              <p>Filters panel is visible!</p>
            </div>
          )}
        </div>

        {/* Dialog Modal Test */}
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">Dialog Modal Test</h2>
          <Dialog>
            <DialogTrigger asChild>
              <Button className="bg-orange-500 hover:bg-orange-600 text-white">
                Open Modal
              </Button>
            </DialogTrigger>
            <DialogContent>
              <DialogHeader>
                <DialogTitle>Test Modal</DialogTitle>
              </DialogHeader>
              <div className="p-4">
                <p>This is a test modal. If you can see this, the dialog functionality is working!</p>
              </div>
            </DialogContent>
          </Dialog>
        </div>

        <div className="mt-8">
          <Button
            onClick={() => window.location.href = '/'}
            variant="outline"
          >
            Back to Main Site
          </Button>
        </div>
      </div>
    </div>
  );
}
