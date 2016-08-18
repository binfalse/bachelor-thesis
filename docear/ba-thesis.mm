<map version="docear 1.1" project="154ED8407E89FCASQ6GZXVKVYB0712RGQW1X" project_last_home="file:/home/martin/git/martin-thesis-ba/docear/" dcr_id="1464273733685_63sjvafco1yb3zqf6ar6mqi05">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="Extension of a graph database concept&#xa;to store multiple versions of standard&#xa;encoded biological models" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1465685049078"><hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

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
<node TEXT="Motivation out of Koehn2008 (different versions, with pictures) motivating the development of bives" ID="ID_717259666" CREATED="1471422496633" MODIFIED="1471422535321"/>
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
<node TEXT="description of graph database models" FOLDED="true" ID="ID_635669089" CREATED="1465845592385" MODIFIED="1465845748679" MOVED="1465845774831">
<node TEXT="Entity Relation" ID="ID_1094964584" CREATED="1465845719391" MODIFIED="1465845735072">
<node TEXT="From the entity-relationship to the property-graph model" ID="ID_1056812311" CREATED="1465905686348" MODIFIED="1466101322845" LINK="https://lambdazen.blogspot.co.za/2014/01/from-entity-relationship-to-property.html" MOVED="1466180677679">
<attribute NAME="key" VALUE="Siriwaradhana2014"/>
<attribute NAME="year" VALUE="2014"/>
<attribute NAME="title" VALUE="From the entity-relationship to the property-graph model"/>
<attribute NAME="authors" VALUE="Shalin Siriwaradhana"/>
</node>
<node TEXT="entities" ID="ID_1299310355" CREATED="1465910294045" MODIFIED="1465910301647">
<node TEXT="name of the entity becomes vertex name (neo4j Label)" ID="ID_1783384109" CREATED="1465910301957" MODIFIED="1465912192946"/>
<node TEXT="associated attributes become vertex properties" ID="ID_1279956888" CREATED="1465910328229" MODIFIED="1465910352690"/>
</node>
<node TEXT="relations" ID="ID_1172547819" CREATED="1465910356396" MODIFIED="1465910358301">
<node TEXT="binary relations&#xa;(e.g. one-to-many or many-to-many)" ID="ID_32841007" CREATED="1465910386272" MODIFIED="1465910847571">
<node TEXT="become edge type" ID="ID_1721568646" CREATED="1465910833444" MODIFIED="1465910840345" MOVED="1465910842071"/>
<node TEXT="name of relation becomes the edge label" ID="ID_1901622504" CREATED="1465910402750" MODIFIED="1465910418863"/>
<node TEXT="associated attributes become properties" ID="ID_1609589829" CREATED="1465910420010" MODIFIED="1465910445002"/>
<node TEXT="end-point of the edge-type are the vertex-type corresponding to the related entity type" ID="ID_1762219920" CREATED="1465910445175" MODIFIED="1465910499879"/>
<node TEXT="direction does not matter" ID="ID_1516880035" CREATED="1465910503316" MODIFIED="1465910509364"/>
</node>
<node TEXT="n-ary relations" ID="ID_75719510" CREATED="1465910817095" MODIFIED="1465910827730">
<node TEXT="name of the the relation becomes name of a [new] vertex type" ID="ID_1711281191" CREATED="1465911469788" MODIFIED="1465911487940"/>
<node TEXT="associated attributes become the properties of the vertex type" ID="ID_717390113" CREATED="1465911494825" MODIFIED="1465911529737"/>
<node TEXT="new vertex-type includes edges to vertex-types corresponding to the related entity-types" ID="ID_1647137616" CREATED="1465911530116" MODIFIED="1465911568214"/>
<node TEXT="these edges are labeled after the role of the participating entity in the relationship" ID="ID_801648682" CREATED="1465911568490" MODIFIED="1465911609457"/>
<node TEXT="directions do not matter" ID="ID_53485672" CREATED="1465911613349" MODIFIED="1465911620777"/>
</node>
</node>
</node>
<node TEXT="Relation Table" ID="ID_957497530" CREATED="1465845735939" MODIFIED="1465845742026"/>
</node>
<node TEXT="MaSyMoS" FOLDED="true" ID="ID_693489327" CREATED="1464450659240" MODIFIED="1464450662808">
<node TEXT="This work is based on MaSyMoS, a..." ID="ID_925204660" CREATED="1466184487611" MODIFIED="1466184502873" MOVED="1466184489551">
<node TEXT="A graph database for simulation models and&#xa;associated data" FOLDED="true" ID="ID_913357327" CREATED="1466101637515" MODIFIED="1466169166896" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466184505133">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="2" object_id="3637972149357601438" object_number="220" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
<node TEXT="Many models in public databases encode networks that&#xa;can be represented as graphs" ID="ID_106309607" CREATED="1466101637748" MODIFIED="1466101637748" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102251584">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="6426390395388278136" object_number="346" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="relational databases were developed for&#xa;homogeneous, structured data, e.g. numerical data" ID="ID_655388537" CREATED="1466101637302" MODIFIED="1466101637302" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102257215">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="3901335021397006487" object_number="350" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT=" Designing a relational&#xa;representation for these links and keeping the database effi-&#xa;cient at the same time are impossible" ID="ID_394727144" CREATED="1466101637616" MODIFIED="1466101637616" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102261273">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="2251555710832645268" object_number="352" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
</node>
<node TEXT="MaSyMos is a database based on neo4j for storing and retrieving structural information of biological models" ID="ID_604193905" CREATED="1466169278734" MODIFIED="1466170156968" MOVED="1466179809312">
<node TEXT="We chose the&#xa;graph database Neo4J (25)" ID="ID_1467187705" CREATED="1466101637712" MODIFIED="1466101637713" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466169321927">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="5297571413817851943" object_number="354" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="follows the fun-&#xa;damental properties of databases, i.e. the ACID principles" ID="ID_351195724" CREATED="1466101637379" MODIFIED="1466101637379" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102273496">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="8394450414945544695" object_number="357" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="biological models are represented in heterogenous data structures e.g. networks. Traditional relational databases are build to quickly process highly structured data in tables, therefore they are less efficient in storing and retrieving standard encoded models, due to their &quot;highly linked structure&quot;" FOLDED="true" ID="ID_1268078391" CREATED="1466169437662" MODIFIED="1466170121523" MOVED="1466179819095">
<node TEXT=" No unified schema exists&#xa;for models and meta-data, making it difficult to define a&#xa;relational database schema" ID="ID_1335567236" CREATED="1466101637490" MODIFIED="1466101637490" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102252715">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="7394945408235840718" object_number="347" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="highly linked models,&#xa;model entities and meta-data are difficult to represent in a&#xa;table-based relational database" ID="ID_927042826" CREATED="1466101637230" MODIFIED="1466176796518" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466169481441">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="3" object_id="4563433676449743091" object_number="348" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="MaSyMoS data model and structure" FOLDED="true" ID="ID_285947696" CREATED="1466169527373" MODIFIED="1466179883512" MOVED="1466179868316">
<node TEXT="document root node is created for each data&#xa;item" ID="ID_907847538" CREATED="1466101637214" MODIFIED="1466101637214" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466169413016">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="4" object_id="6938372319867484960" object_number="469" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="each model is represented by a model node" ID="ID_830244427" CREATED="1466169556958" MODIFIED="1466169576397">
<node TEXT="entry point for each model import is a document node" ID="ID_1451410759" CREATED="1466100290732" MODIFIED="1466100290732" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466101588765">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="12" object_id="6533409960970622021" object_number="850" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="Attached to the model node&#xa;are annotation nodes, including the reference publication" ID="ID_296677102" CREATED="1466101637333" MODIFIED="1466101637333" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102448415">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="4" object_id="7709229411726855903" object_number="472" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="in SBML compartments, species and reactions are linked to the model node" ID="ID_359361957" CREATED="1466169619985" MODIFIED="1466169654800"/>
<node TEXT="in CellML each component is linked to the model node, further containing variables and mathematical relationships to manipulate other variables" ID="ID_960761149" CREATED="1466169655179" MODIFIED="1466169734023">
<node TEXT="component contains vari-&#xa;ables and mathematical relationships that manipulate&#xa;those variables" ID="ID_767946673" CREATED="1466101637200" MODIFIED="1466101637200" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102338230">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="5" object_id="1395576150053381997" object_number="519" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="Experiment setups are stored under a SEDML node, instead of a model node. In comparison to species, reactions, compartments or components the SEDML node has links to Modelreference nodes, as well as nodes pointing to different model entities used in plots. Nevertheless no processing information is stored in the database." FOLDED="true" ID="ID_1697656386" CREATED="1466174561485" MODIFIED="1466175954569">
<node TEXT="SEDML node serves as the anchor for an experiment" ID="ID_1976947804" CREATED="1466101637447" MODIFIED="1466101637447" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102378265">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="5" object_id="1443790339896074157" object_number="529" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT=" Modelreference node links the experiment to all&#xa;Model nodes used in the simulation" ID="ID_1031575967" CREATED="1466101637803" MODIFIED="1466101637803" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102379264">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="5" object_id="2362486985311389301" object_number="530" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="do not store the specific processing of a&#xa;model entity" ID="ID_902400869" CREATED="1466101637858" MODIFIED="1466101637858" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102150820">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="173125460113934888" object_number="594" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="&quot;Semantic annotations and cross-references&quot; from the models are stored as seperate nodes and linked to the ontology node representing the used ontology term." FOLDED="true" ID="ID_974182268" CREATED="1466170230651" MODIFIED="1466170319999" MOVED="1466171542158">
<node TEXT="Semantic annotations and cross-references" ID="ID_796187214" CREATED="1466101637545" MODIFIED="1466101637545" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102499868">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="4" object_id="3564047585737081541" object_number="482" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT=" We parse these ontologies and add all concepts&#xa;and relations as nodes and edges, respectively." ID="ID_1868861562" CREATED="1466101637635" MODIFIED="1466101637635" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466172261702">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="93345957214934318" object_number="583" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="ensure an easy traversal upwards, a connection is created&#xa;from each node of the stored model that points to the par-&#xa;ent of the current node. The corresponding edges are&#xa;named belongsTo" ID="ID_676045218" CREATED="1466100290704" MODIFIED="1466100290704" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466101601558">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="12" object_id="1750498949756572308" object_number="857" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="Linking model related data" ID="ID_645669068" CREATED="1466175384411" MODIFIED="1466177055033" MOVED="1466179860948">
<node TEXT="main advantage to prior mentioned storage in relational databases is the possibility to flexibly link data between different domains. //Henkel et al.// describes 3 different links, which are currently implemented:&#xa;1. links between (model) annotations and the corresponding ontology term&#xa;2. links between models or model entities and SEDML simulation descriptions or respectively SEDML variables&#xa;3. links between model entities in different standard format representation" FOLDED="true" ID="ID_726710174" CREATED="1466175403453" MODIFIED="1466175989315">
<node TEXT="The main advantage of the previously described concept is&#xa;its possibility to define flexible links between the data do-&#xa;mains" ID="ID_1782800882" CREATED="1466101637563" MODIFIED="1466101637563" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102139019">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="6254426421266046482" object_number="587" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT=" links between annotations (in SBML, CellML and&#xa;SED-ML) and ontology concepts" ID="ID_1345564156" CREATED="1466101637235" MODIFIED="1466101637235" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102140730">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="5168871354340595204" object_number="588" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="links between models (in SBML or CellML format) and&#xa;SED-ML" ID="ID_1074967961" CREATED="1466101637386" MODIFIED="1466101637386" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102142053">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="4798658539716464019" object_number="589" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="link is that between a model and a&#xa;simulation description" ID="ID_1794577793" CREATED="1466101637351" MODIFIED="1466101637351" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466175795766">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="6432897159264146232" object_number="593" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="links between model entities and SED-ML variables" ID="ID_1110557228" CREATED="1466101637429" MODIFIED="1466101637429" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102143810">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="8396625476777862844" object_number="590" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT=" links between model entities from different model rep-&#xa;resentation formats" ID="ID_668658953" CREATED="1466101637296" MODIFIED="1466101637296" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102145250">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="3926033807882102077" object_number="591" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
<node TEXT="For each annotation in&#xa;a model we add an explicit link to the data entry in the ref-&#xa;erenced bio-ontology" ID="ID_1155874076" CREATED="1466101637496" MODIFIED="1466101637496" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102146780">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="7386545327765486781" object_number="592" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="This link is shared between all models using this annotation, regardless of the format" ID="ID_710501636" CREATED="1466175876367" MODIFIED="1466175909168"/>
<node TEXT="Further to explicit links (one hop in the graph), MaSyMoS is able to determine implicit links between different models. Those can be established over shared resources like a publication, publication author or annotations with common bio-ontologies.&#xa;Regarding a publications the database may establish connections based on the likelihood of names by Hemming Distance, resulting in a confidence which can be increased, &quot;if the entities&apos; annotations match&quot;" ID="ID_1759012821" CREATED="1466176024483" MODIFIED="1466176682615">
<node TEXT="In addition, we determine implicit links between&#xa;models of different representation formats" ID="ID_1376371760" CREATED="1466101637521" MODIFIED="1466101637521" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102160985">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="5228349203156882033" object_number="599" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
<node TEXT="If two models share&#xa;a publication, the systems can infer implicit links between&#xa;those entities that are equally named" ID="ID_816879596" CREATED="1466101637533" MODIFIED="1466101637533" LINK="project://154ED8407E89FCASQ6GZXVKVYB0712RGQW1X/../literature/sems/masymos.pdf" MOVED="1466102162537">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="7" object_id="806217340521920243" object_number="600" document_hash="23BDF3CA63F76B5FDA54530A4DDFFCD9236E1F5A59C0326C7FE4C595304F44">
    <pdf_title>Combining computational models, semantic annotations and simulation experiments in a graph database</pdf_title>
</pdf_annotation>
<attribute NAME="key" VALUE="Henkel2015"/>
<attribute NAME="journal" VALUE="Database"/>
<attribute NAME="year" VALUE="2015"/>
<attribute NAME="title" VALUE="Combining computational models, semantic annotations and simulation experiments in a graph database"/>
<attribute NAME="authors" VALUE="Henkel, Ron and Wolkenhauer, Olaf and Waltemath, Dagmar"/>
</node>
</node>
</node>
<node TEXT="Implementation" ID="ID_439848774" CREATED="1466177045460" MODIFIED="1466177051533" MOVED="1466179855008">
<node TEXT="MaSyMoS is designed to run as both standalone commandline application with embedded neo4j and as an extension to the neo4j server. Latter is controlled by an unmanaged neo4j plugin providing a RESTful json interface." ID="ID_1860393218" CREATED="1466177096498" MODIFIED="1466177227817"/>
<node TEXT="Same interface also cooperates with the retrieval engine Morre, by providing endpoints to query different search indexes." ID="ID_620231476" CREATED="1466177228252" MODIFIED="1466177304144"/>
</node>
<node TEXT="MaSyMoS project structure" ID="ID_945553139" CREATED="1465685091404" MODIFIED="1465685116958" MOVED="1465845528607">
<node TEXT="The MaSyMoS project is divided into 3 different modules: MaSyMoS-core, Morre and a CLI." ID="ID_1078409398" CREATED="1466178991347" MODIFIED="1466180000900" MOVED="1466178993110"/>
<node TEXT="The core module contains the logic of the database and communicates directly with neo4j. It consists of routines and a Java API to import models, experiments and ontologies. Further it fetches linked information from common bio-ontologies and manages, updates and queries Lucene indexes." ID="ID_1408528992" CREATED="1465685118217" MODIFIED="1466179993104"/>
<node TEXT="The Command Line Interface (CLI) provides a user interface, to easily interact with the API provided by the core module. It&apos;s main purpose was to simplify the development process by skipping the deployment step. Instead it is possible to directly interact with and debug MaSyMoS" ID="ID_869727585" CREATED="1466179121934" MODIFIED="1466179797351"/>
<node TEXT="The Morre module is similiar to the CLI, by providing an way to interact with the core. But instead of providing a user interface, Morre is loaded as neo4j unmanaged extension and exposes a RESTful interface, which can be used to query the Lucene indexes or to push and update models to the database." ID="ID_62794655" CREATED="1465685134620" MODIFIED="1466180122140"/>
<node TEXT="planned extensions" ID="ID_1091050992" CREATED="1465685141482" MODIFIED="1465685147401"/>
</node>
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
