<map version="docear 1.1" dcr_id="1464273733685_63sjvafco1yb3zqf6ar6mqi05" project="154ED8407E89FCASQ6GZXVKVYB0712RGQW1X" project_last_home="file:/home/martin/git/martin-thesis-ba/docear/">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<node TEXT="Extension of a graph database concept&#xa;to store multiple versions of standard&#xa;encoded biological models" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1465685049078"><hook NAME="MapStyle">
    <properties show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<font BOLD="true"/>
<node TEXT="Introduction 10%" POSITION="right" ID="ID_836046497" CREATED="1464451602033" MODIFIED="1465844227472" MOVED="1464451949232">
<edge COLOR="#0000ff"/>
<node TEXT="Motivation" ID="ID_1959321146" CREATED="1464451609445" MODIFIED="1464451611671">
<node TEXT="reproducibility" ID="ID_1351414127" CREATED="1465845865960" MODIFIED="1465845876683" MOVED="1465846105963">
<node TEXT="SED-ML useless, when model changes" ID="ID_1106224534" CREATED="1465845996552" MODIFIED="1465846010484"/>
</node>
<node TEXT="transparency" ID="ID_1257258152" CREATED="1465845877191" MODIFIED="1465845880141" MOVED="1465846108419">
<node TEXT="tracking differences" ID="ID_67204476" CREATED="1465846024088" MODIFIED="1465846031849">
<node TEXT="what has changed" ID="ID_171044478" CREATED="1465846032789" MODIFIED="1465846053191"/>
<node TEXT="who has it changed" ID="ID_442908713" CREATED="1465846037042" MODIFIED="1465846043154"/>
<node TEXT="oxford2012 + first bives paper" ID="ID_838656697" CREATED="1465846061902" MODIFIED="1465846087962"/>
</node>
</node>
<node TEXT="reusability" ID="ID_1472421584" CREATED="1465845880696" MODIFIED="1465845893532" MOVED="1465846111548">
<node TEXT="model only reuseable, when changes are/development is transparent" ID="ID_1594527518" CREATED="1465846141333" MODIFIED="1465846187254"/>
<node TEXT="is newest version more suitable" ID="ID_240271192" CREATED="1465846193210" MODIFIED="1465846202871">
<node TEXT="bug fixes" ID="ID_1933423886" CREATED="1465846205815" MODIFIED="1465846210559"/>
<node TEXT="essential changes" ID="ID_322298610" CREATED="1465846211308" MODIFIED="1465846214877"/>
<node TEXT="only possible, when aware of changes" ID="ID_571935178" CREATED="1465846215433" MODIFIED="1465846227710"/>
</node>
</node>
<node TEXT="doing analysis of the evolution of a biological model" ID="ID_523922851" CREATED="1464451632329" MODIFIED="1464452127769"/>
<node TEXT="rank model versions differently depending on the changes it was undergoing" ID="ID_1558910386" CREATED="1464451699244" MODIFIED="1464451967105"/>
<node TEXT="provide a comprehensive repository of biological models and there history" ID="ID_1210237500" CREATED="1464452138558" MODIFIED="1464452158159"/>
<node TEXT="discover similarities and differences in the development of model through Ontology crosslinking" ID="ID_1541404807" CREATED="1464452163017" MODIFIED="1464452211064"/>
</node>
<node TEXT="goals" ID="ID_441425098" CREATED="1464452109730" MODIFIED="1464452113031">
<node TEXT="extend an existing database to store multiple versions of one model in it" ID="ID_998616181" CREATED="1464452219825" MODIFIED="1464452249348"/>
<node TEXT="semantically conect the versions" ID="ID_1839105840" CREATED="1464452257057" MODIFIED="1464452273074"/>
<node TEXT="store differences to allow for efficient analysis" ID="ID_563018806" CREATED="1464452273494" MODIFIED="1464452393884"/>
</node>
<node TEXT="short results?" ID="ID_1005643870" CREATED="1465846284500" MODIFIED="1465846290589"/>
</node>
<node TEXT="Background 30%" POSITION="right" ID="ID_335029665" CREATED="1464450597007" MODIFIED="1465844233482">
<edge COLOR="#ff0000"/>
<node TEXT="Existing versioning and version controll systems" ID="ID_1683526886" CREATED="1464451974104" MODIFIED="1464452024829" MOVED="1464451975647">
<node TEXT="definition" ID="ID_42295983" CREATED="1464452027957" MODIFIED="1464452057437">
<node TEXT="benefits" ID="ID_595982733" CREATED="1464460588311" MODIFIED="1464460595479"/>
</node>
<node TEXT="simple file storage" ID="ID_800062863" CREATED="1464452059436" MODIFIED="1464460580818" MOVED="1464452068771"/>
<node TEXT="svn" ID="ID_1154324695" CREATED="1464460043428" MODIFIED="1464460293110" MOVED="1464460047985">
<node TEXT="client/server structure" ID="ID_500599951" CREATED="1464460063898" MODIFIED="1464460070321"/>
<node TEXT="reverse-delta storage with Snapshots" ID="ID_1732433032" CREATED="1464460295436" MODIFIED="1464460303734"/>
</node>
<node TEXT="git" ID="ID_428175944" CREATED="1464452058177" MODIFIED="1464452059071">
<node TEXT="distributed" ID="ID_1656355271" CREATED="1464460025402" MODIFIED="1464460028378"/>
<node TEXT="version-graph" ID="ID_887748903" CREATED="1464460028903" MODIFIED="1464460036316"/>
<node TEXT="reverse-delta storage" ID="ID_1211748192" CREATED="1464460036863" MODIFIED="1464460287550">
<node TEXT="https://git-scm.com/book/en/v2/Git-Internals-Plumbing-and-Porcelain" ID="ID_1358477766" CREATED="1464460535813" MODIFIED="1464460542881"/>
</node>
</node>
<node TEXT="Link to Oxford-paper-2012 -&gt; decision on BiVeS" ID="ID_1103479875" CREATED="1465845331436" MODIFIED="1465845375640"/>
</node>
<node TEXT="Difference Detection/Delta Algorithm" ID="ID_771130746" CREATED="1464450675691" MODIFIED="1464452347102">
<node TEXT="unix diff" ID="ID_1802040318" CREATED="1464450689438" MODIFIED="1464450693026">
<node TEXT="problems with XML" ID="ID_839416966" CREATED="1464450738394" MODIFIED="1464450794709"/>
</node>
<node TEXT="BiVes" ID="ID_690275631" CREATED="1464450694116" MODIFIED="1464451037541">
<node TEXT="solution" ID="ID_1572483311" CREATED="1464450803732" MODIFIED="1464450808989"/>
<node TEXT="XmlDiff" ID="ID_546256059" CREATED="1464450809625" MODIFIED="1464451034321"/>
<node TEXT="Application in LiveScience" ID="ID_247493229" CREATED="1464451043022" MODIFIED="1464451048858"/>
</node>
</node>
<node TEXT="Ontologies in Computer Science" ID="ID_786500031" CREATED="1464450604943" MODIFIED="1465845797538">
<node TEXT="definition" ID="ID_737294920" CREATED="1464460642215" MODIFIED="1464460644628" MOVED="1464460645416">
<node TEXT="formal definition, properties and relations of entities" ID="ID_1231731650" CREATED="1464460969641" MODIFIED="1464460984201"/>
</node>
<node TEXT="OWL Standard" ID="ID_1641170628" CREATED="1464450641402" MODIFIED="1464450647715" MOVED="1464450652696">
<node TEXT="cf. doi:10.1007/978-0-387-39940-9_1073" ID="ID_1435712187" CREATED="1464461118085" MODIFIED="1464461133345"/>
</node>
<node TEXT="COMODI" ID="ID_1969812522" CREATED="1464450608891" MODIFIED="1464450616997" MOVED="1464450632666"/>
</node>
<node TEXT="Database Systems" ID="ID_1797519651" CREATED="1465844978525" MODIFIED="1465844984889">
<node TEXT="relational databases" ID="ID_152310256" CREATED="1465845025951" MODIFIED="1465845031926" MOVED="1465845033510"/>
<node TEXT="Graph Databases" ID="ID_1049563004" CREATED="1464450618948" MODIFIED="1464450624335" MOVED="1465844987462">
<node TEXT="neo4j" ID="ID_1216237604" CREATED="1464450656182" MODIFIED="1464450658948"/>
<node TEXT="description of graph database models" ID="ID_635669089" CREATED="1465845592385" MODIFIED="1465845748679" MOVED="1465845774831">
<node TEXT="Entity Relation" ID="ID_1094964584" CREATED="1465845719391" MODIFIED="1465845735072"/>
<node TEXT="Relation Table" ID="ID_957497530" CREATED="1465845735939" MODIFIED="1465845742026"/>
</node>
<node TEXT="MaSyMoS" ID="ID_693489327" CREATED="1464450659240" MODIFIED="1464450662808">
<node TEXT="MaSyMoS project structure" ID="ID_945553139" CREATED="1465685091404" MODIFIED="1465685116958" MOVED="1465845528607">
<node TEXT="core" ID="ID_1408528992" CREATED="1465685118217" MODIFIED="1465685124623"/>
<node TEXT="Morre" ID="ID_62794655" CREATED="1465685134620" MODIFIED="1465685137353"/>
<node TEXT="planned extensions" ID="ID_1091050992" CREATED="1465685141482" MODIFIED="1465685147401"/>
</node>
<node TEXT="MaSyMoS data model" ID="ID_1909402936" CREATED="1465845583057" MODIFIED="1465845589379"/>
</node>
</node>
</node>
</node>
<node TEXT="Results 50%" POSITION="right" ID="ID_1373098570" CREATED="1465685403894" MODIFIED="1465844507237" MOVED="1465844442786">
<edge COLOR="#00ffff"/>
<node TEXT="alle &#xdc;berlegungen mit Entscheidungen (results+discussion)" ID="ID_769104555" CREATED="1465844491833" MODIFIED="1465844690283"/>
<node TEXT="concepts" ID="ID_637205851" CREATED="1465844652686" MODIFIED="1465844655307">
<node TEXT="extension to database model" ID="ID_1967908791" CREATED="1465685156437" MODIFIED="1465685193637" MOVED="1465844661401">
<node TEXT="linking versions" ID="ID_117675993" CREATED="1465685195964" MODIFIED="1465685199543"/>
<node TEXT="storing differences" ID="ID_1232616576" CREATED="1465685200162" MODIFIED="1465685213441"/>
</node>
<node TEXT="decisions on storage model" ID="ID_1027244741" CREATED="1465685229211" MODIFIED="1465685269436" MOVED="1465844666249">
<node TEXT="storing each version full (no delta-storage)" ID="ID_1398937513" CREATED="1465685270536" MODIFIED="1465685287195"/>
<node TEXT="each version is aware to the search index" ID="ID_1310827980" CREATED="1465685287597" MODIFIED="1465685297194"/>
<node TEXT="diff still enables for analysis of changes" ID="ID_249614621" CREATED="1465685297829" MODIFIED="1465685379240"/>
<node TEXT="higher storage consumption" ID="ID_556237123" CREATED="1465685388832" MODIFIED="1465685397775"/>
</node>
<node TEXT="extended storage model" ID="ID_1206948822" CREATED="1465844779616" MODIFIED="1465844783041"/>
</node>
<node TEXT="discussion" ID="ID_993805768" CREATED="1465844668675" MODIFIED="1465844670520"/>
</node>
<node TEXT="Implementation 50%" POSITION="right" ID="ID_373173851" CREATED="1465685084655" MODIFIED="1465844237920">
<edge COLOR="#00ff00"/>
<node TEXT="nur Umsetzung" ID="ID_444327216" CREATED="1465844467353" MODIFIED="1465844471166"/>
</node>
<node TEXT="Outlook" POSITION="right" ID="ID_1682005382" CREATED="1465685399697" MODIFIED="1465685402807">
<edge COLOR="#ff00ff"/>
<node TEXT="Improving index search with metrics on how much impact a change had to the searched criteria" ID="ID_943720943" CREATED="1465685420168" MODIFIED="1465685485140"/>
<node TEXT="detecting similar changes on different models" ID="ID_1250734524" CREATED="1465685486446" MODIFIED="1465685594993"/>
</node>
<node TEXT="conclusion/discussion" POSITION="left" ID="ID_874718267" CREATED="1465844614435" MODIFIED="1465844624650">
<edge COLOR="#ffff00"/>
</node>
</node>
</map>
