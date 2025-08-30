import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { ArrowLeft, Users, Calendar, Mail, Globe, Heart, Shield } from "lucide-react";
import Link from "next/link";

export default function AboutPage() {
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
              <Link href="/about" className="text-orange-500 font-medium">
                About
              </Link>
              <Link href="/archive" className="text-gray-600 hover:text-orange-500 transition-colors">
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
      <section className="bg-white py-16">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h1 className="text-5xl font-bold text-gray-900 mb-6">About WVN</h1>
          <p className="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
            The Wayland Voters Network has been the cornerstone of informed civic engagement
            in Wayland, Massachusetts since February 24, 2004. We believe that democracy
            thrives when citizens are well-informed and actively participate in their community.
          </p>
        </div>
      </section>

      {/* Mission & Values */}
      <section className="py-16 bg-[#f9faf8]">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid md:grid-cols-3 gap-8">
            <Card className="border-l-4 border-l-orange-500">
              <CardHeader>
                <CardTitle className="flex items-center">
                  <Heart className="w-6 h-6 text-orange-500 mr-3" />
                  Our Mission
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-gray-600 leading-relaxed">
                  To ensure that Town of Wayland voters are informed about Town decisions
                  that will directly affect them, and encourage voter participation. We
                  believe that an informed electorate will help make Wayland a better
                  place for everyone.
                </p>
              </CardContent>
            </Card>

            <Card className="border-l-4 border-l-blue-500">
              <CardHeader>
                <CardTitle className="flex items-center">
                  <Shield className="w-6 h-6 text-blue-500 mr-3" />
                  Our Values
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-gray-600 leading-relaxed">
                  We promote respect for citizens of all ages, backgrounds, economic
                  conditions, and household characteristics. We advocate for government
                  that is effective, efficient, responsible to, and representative of
                  all residents.
                </p>
              </CardContent>
            </Card>

            <Card className="border-l-4 border-l-green-500">
              <CardHeader>
                <CardTitle className="flex items-center">
                  <Globe className="w-6 h-6 text-green-500 mr-3" />
                  Our Vision
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-gray-600 leading-relaxed">
                  A Wayland where people in all stages of life thrive, supported by
                  transparent governance and an engaged citizenry that works together
                  to build a stronger, more inclusive community for everyone.
                </p>
              </CardContent>
            </Card>
          </div>
        </div>
      </section>

      {/* History */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="max-w-4xl mx-auto">
            <h2 className="text-3xl font-bold text-gray-900 mb-8 text-center">Our History</h2>

            <div className="space-y-8">
              <div className="flex items-start space-x-4">
                <div className="flex-shrink-0 w-12 h-12 bg-orange-500 rounded-full flex items-center justify-center">
                  <Calendar className="w-6 h-6 text-white" />
                </div>
                <div>
                  <h3 className="text-xl font-semibold text-gray-900 mb-2">February 24, 2004 - The Beginning</h3>
                  <p className="text-gray-600 leading-relaxed">
                    The Wayland Voters Network was founded with a simple but powerful mission:
                    to keep Wayland residents informed about local government decisions that
                    affect their daily lives. What started as a small email list has grown
                    into a vital community resource.
                  </p>
                </div>
              </div>

              <div className="flex items-start space-x-4">
                <div className="flex-shrink-0 w-12 h-12 bg-blue-500 rounded-full flex items-center justify-center">
                  <Users className="w-6 h-6 text-white" />
                </div>
                <div>
                  <h3 className="text-xl font-semibold text-gray-900 mb-2">Growing Community</h3>
                  <p className="text-gray-600 leading-relaxed">
                    Over the years, our community has grown to over 1,250 active members
                    who receive regular updates about town meetings, budget discussions,
                    school board decisions, and other important civic matters. Our members
                    represent diverse perspectives and all areas of Wayland.
                  </p>
                </div>
              </div>

              <div className="flex items-start space-x-4">
                <div className="flex-shrink-0 w-12 h-12 bg-green-500 rounded-full flex items-center justify-center">
                  <Mail className="w-6 h-6 text-white" />
                </div>
                <div>
                  <h3 className="text-xl font-semibold text-gray-900 mb-2">1,460+ Messages & Counting</h3>
                  <p className="text-gray-600 leading-relaxed">
                    Since our founding, we've shared over 1,460 messages covering everything
                    from budget hearings and zoning changes to school policies and environmental
                    initiatives. Every message is archived and searchable, creating a valuable
                    historical record of Wayland's civic life.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* How We Work */}
      <section className="py-16 bg-[#f9faf8]">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="max-w-4xl mx-auto text-center">
            <h2 className="text-3xl font-bold text-gray-900 mb-8">How We Work</h2>

            <div className="grid md:grid-cols-2 gap-8 text-left">
              <div>
                <h3 className="text-xl font-semibold text-gray-900 mb-4">Information Sharing</h3>
                <p className="text-gray-600 leading-relaxed mb-4">
                  We monitor town meetings, read official documents, and attend public hearings
                  to bring you clear, factual summaries of what's happening in Wayland government.
                </p>
                <p className="text-gray-600 leading-relaxed">
                  Our updates are non-partisan and focus on helping residents understand the
                  issues so they can make informed decisions as voters and community members.
                </p>
              </div>

              <div>
                <h3 className="text-xl font-semibold text-gray-900 mb-4">Community Engagement</h3>
                <p className="text-gray-600 leading-relaxed mb-4">
                  We encourage respectful dialogue and provide a platform for residents to
                  share information and perspectives on local issues that matter to them.
                </p>
                <p className="text-gray-600 leading-relaxed">
                  Our listserv fosters connection between neighbors and helps build a more
                  engaged, informed citizenry committed to Wayland's future.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Contact Information */}
      <section className="py-16 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-bold text-gray-900 mb-8">Get Involved</h2>
          <p className="text-lg text-gray-600 mb-8 max-w-2xl mx-auto">
            Join our community of engaged Wayland residents. Stay informed, ask questions,
            and help make our town an even better place to live.
          </p>

          <Card className="max-w-md mx-auto">
            <CardContent className="p-6">
              <h3 className="text-xl font-semibold text-gray-900 mb-4">Contact Information</h3>
              <div className="space-y-3 text-left">
                <div className="flex items-center">
                  <Mail className="w-5 h-5 text-orange-500 mr-3" />
                  <span className="text-gray-600">main@WaylandVoters.groups.io</span>
                </div>
                <div className="flex items-center">
                  <Users className="w-5 h-5 text-orange-500 mr-3" />
                  <span className="text-gray-600">Moderator: Wayland Voters Network</span>
                </div>
              </div>
            </CardContent>
          </Card>
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
