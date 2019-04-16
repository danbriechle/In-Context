user_1 = User.create!(name: "Dan Briechle")
project_1 = Project.create!(title: "Look at how much this cost",
                            description: "Rural america from the outsider's perspective",
                            media: "mixed",
                            due_date: "Feb 6th",
                            search_tag: "rural america",
                            user: user_1)
project_2 = Project.create!(title: "Wearing ourselves out",
                            description: "Identity as it relates to who we wish we were",
                            media: "Oil",
                            due_date: "May 19th",
                            search_tag: "fast fashion",
                            user: user_1)
article_1 = Article.create!(title: "Getting Real About Rural America",
                            authors: "PAUL KRUGMAN",
                            source: "The New York Times",
                            image_url: "https://static01.nyt.com/images/2019/03/18/opinion/18krugmanWeb/18krugmanWeb-facebookJumbo.jpg",
                            publication_date: "2019-03-18T22:00:06Z",
                            description: "Politically, rural America is increasingly a world apart.",
                            project: project_1,
                            content: "Even then, rural areas and small towns werent the real America, somehow morally
                            superior to the rest of us. But they were a major part of the demographic, social
                            and cultural landscape.Since then, however, while Americas population has doubled,
                            the number o… ")
article_2 = Article.create!(title: "What Rural America Has to Teach Us",
                            authors: "DAVID BROOKS",
                            source: "The New York Times",
                            image_url: "https://static01.nyt.com/images/2019/03/21/opinion/21brooks1/21brooks1-facebookJumbo.jpg",
                            publication_date: "2019-03-21T22:33:22Z",
                            description: "A couple at a “cowboy church” service at the Nebraska State Fair in Grand Island.",
                            project: project_1,
                            content: "Even then, rural areas and small towns werent the real America, somehow morally
                            superior to the rest of us. But they were a major part of the demographic, social
                            and cultural landscape.Since then, however, while Americas population has doubled,
                            the number o… ")
article_3 = Article.create!(title: "How Co-ops Are Bringing Solar Power to Rural America",
                            authors: "John Fialka, E&E News",
                            source: "Scientificamerican.com",
                            image_url: "https://static.scientificamerican.com/sciam/cache/file/30183670-890B-4BB8-876371D37598AE05.jpg",
                            publication_date: "2019-03-22T16:30:00Z",
                            description: "Declining solar costs have helped spur a move away from coal",
                            project: project_1,
                            content: "Even then, rural areas and small towns werent the real America, somehow morally
                            superior to the rest of us. But they were a major part of the demographic, social
                            and cultural landscape.Since then, however, while Americas population has doubled,
                            the number o… ")
article_4 = Article.create!(title: "Forever 21’s new USPS capsule collection is fast fashion at its worst",
                            authors: "Elizabeth Segran",
                            source: "Fastcompany.com",
                            image_url: "https://images.fastcompany.net/image/upload/w_1280,f_auto,q_auto,fl_lossy/wp-cms/uploads/2019/03/p-1-90326378-would-you-wear-a-us-postal-service-branded-tube-top.jpg",
                            publication_date: "2019-03-28T14:21:54Z",
                            description: "Forever 21 recreates Lance Armstrong’s infamous U.S. Postal Service Pro Cycling Team",
                            project: project_2,
                            content: "Don’t get me wrong, I’m a big fan of the U.S. Postal Service. I love my November
                            visit to the local post office to pick out stamps for Christmas cards. I love neatly boxing
                            up care packages, then handing them off to my trusty mailman.But let’s be clear about … ")
article_5 = Article.create!(title: "We visited a Charlotte Russe store on its last day open, and it was a depressing bargain bonanza",
                            authors: "Áine Cain",
                            source: "Business Insider",
                            image_url: "https://amp.businessinsider.com/images/5c992ffd09b60361701a3c87-1920-960.jpg",
                            publication_date: "2019-03-25T19:48:53Z",
                            description: "Charlotte Russe is in the process of liquidating.",
                            project: project_2,
                            content: "Don’t get me wrong, I’m a big fan of the U.S. Postal Service. I love my November
                            visit to the local post office to pick out stamps for Christmas cards. I love neatly boxing
                            up care packages, then handing them off to my trusty mailman.But let’s be clear about … ")
article_6 = Article.create!(title: "Instead of hiding rips and tears, the visible mending movement turns them into art",
                            authors: "Meghan Racklin",
                            source: "Vox.com",
                            image_url: "https://cdn.vox-cdn.com/thumbor/jDvPL_2MiCUoq_qP9EbaVXWAssw=/0x698:2000x1745/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/15979907/jessica_marquez_sashiko_mending_2918.jpg",
                            publication_date: "2019-03-25T12:00:00Z",
                            description: "Born from the Japanese art of Sashiko, the visible mending movement enables crafters to eschew fast fashion and make mistakes beautiful.",
                            project: project_2,
                            content: "Don’t get me wrong, I’m a big fan of the U.S. Postal Service. I love my November
                            visit to the local post office to pick out stamps for Christmas cards. I love neatly boxing
                            up care packages, then handing them off to my trusty mailman.But let’s be clear about … ")
