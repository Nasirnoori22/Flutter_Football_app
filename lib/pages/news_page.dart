import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xff201d2b),
            elevation: 0,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(''),
              background: Image.asset(
                'images/ronaldo.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Color(0xff201d2b),
                  height: MediaQuery.of(context).size.height * 1.6,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Live Transfer Talk: Ronaldo pushing\nfor Man City move',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                      Html(
                          data: """
   '<p _ngcontent-serverapp-c99="" class="line-breaker" itemprop="description"><p>o&nbsp;&nbsp;Travel outside of Kabul for quality control and supervision of the project;</p><p>o&nbsp;&nbsp;Assist in the recruitment and management of a local research team, including providing training, mentoring and on-site monitoring of researchers;</p><p>o&nbsp;&nbsp;Management of field teams to ensure the proper field research and data collection;</p><p>o&nbsp;&nbsp;Collect and write daily field reports;</p><p>o&nbsp;&nbsp;Provide insights into the findings of field research, using substantial local knowledge (political, institutional, cultural, etc);</p><p>o&nbsp;&nbsp;Apply research standards and procedures established;</p><p>o&nbsp;&nbsp;Provide administrative, and technical assistance to the research team;</p><p>o&nbsp;&nbsp;Analyze the data and prepare a detailed and well-balanced reports;</p><p>o&nbsp;&nbsp;Any other tasks as assigned by the head of department.</p></p>', 

'<p _ngcontent-serverapp-c99="" class="line-breaker"><p><strong><em>To qualify as an advocate for every child you will have…</em></strong></p><ul><li>Completion of secondary education is required, preferably supplemented by technical or university courses related to the work of the organization.</li><li>A minimum of six years of administrative or clerical work experience is required.</li><li>Prior experience in programme support functions is an asset.</li><li>Fluency in English is required. Knowledge of a local language is an asset.</li></ul><p><strong>For every Child, you demonstrate…</strong></p><p>UNICEF\'s values of Care, Respect, Integrity, Trust, and Accountability (CRITA).</p><p><strong>Core Competencies</strong>&nbsp;</p><ul><li>Demonstrates Self Awareness and Ethical Awareness (1)</li><li>Works Collaboratively with others (1)</li><li>Builds and Maintains Partnerships (1)</li><li>Innovates and Embraces Change (1)</li><li>Thinks and Acts Strategically (1)</li><li>Drive to achieve impactful results (1)</li><li>Manages ambiguity and complexity (1)</li></ul><p>To view our competency framework, please visit&nbsp;<a href="https://www.unicef.org/careers/media/1041/file/UNICEF%27s_Competency_Framework.pdf" rel="noopener noreferrer" target="_blank">here</a>.</p><p>UNICEF is committed to diversity and inclusion within its workforce, and encourages all candidates, irrespective of gender, nationality, religious and ethnic backgrounds, including persons living with disabilities, to apply to become a part of the organization.</p><p>UNICEF has a zero-tolerance policy on conduct that is incompatible with the aims and objectives of the United Nations and UNICEF, including sexual exploitation and abuse, sexual harassment, abuse of authority and discrimination. UNICEF also adheres to strict child safeguarding principles. All selected candidates will be expected to adhere to these standards and principles and will therefore undergo rigorous reference and background checks. Background checks will include the verification of academic credential(s) and employment history. Selected candidates may be required to provide additional information to conduct a background check.</p></p>', """,
                          style: {
                            // tables will have the below background color
                            "p": Style(
                              color: Colors.white,
                            ),
                            // some other granular customizations are also possible
                            "li": Style(
                              color: Colors.white,
                            ),

                            "ul": Style(
                              padding: EdgeInsets.all(6),
                              color: Colors.white,
                            ),
                            "td": Style(
                              padding: EdgeInsets.all(6),
                              alignment: Alignment.topLeft,
                            ),
                            // text that renders h1 elements will be red
                            "h1": Style(color: Colors.red),
                          })
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
