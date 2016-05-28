<map version="docear 1.1" project="154ED8407E89FCASQ6GZXVKVYB0712RGQW1X" project_last_home="file:/home/martin/git/martin-thesis-ba/docear/" dcr_id="1464273733685_63sjvafco1yb3zqf6ar6mqi05">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<node TEXT="Extension of a graph database concept&#xa;to store multiple model versions" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1464452837663"><hook NAME="MapStyle">
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
<hook NAME="AutomaticEdgeColor" COUNTER="2"/>
<node TEXT="Introduction" POSITION="right" ID="ID_836046497" CREATED="1464451602033" MODIFIED="1464451607793" MOVED="1464451949232">
<edge COLOR="#0000ff"/>
<node TEXT="Motivation" ID="ID_1959321146" CREATED="1464451609445" MODIFIED="1464451611671">
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
</node>
<node TEXT="Background" POSITION="right" ID="ID_335029665" CREATED="1464450597007" MODIFIED="1464451601110">
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
<node TEXT="Ontologies" ID="ID_786500031" CREATED="1464450604943" MODIFIED="1464450608590">
<node TEXT="definition" ID="ID_737294920" CREATED="1464460642215" MODIFIED="1464460644628" MOVED="1464460645416">
<node TEXT="formal definition, properties and relations of entities" ID="ID_1231731650" CREATED="1464460969641" MODIFIED="1464460984201"/>
</node>
<node TEXT="OWL Standard" ID="ID_1641170628" CREATED="1464450641402" MODIFIED="1464450647715" MOVED="1464450652696">
<node TEXT="cf. doi:10.1007/978-0-387-39940-9_1073" ID="ID_1435712187" CREATED="1464461118085" MODIFIED="1464461133345"/>
</node>
<node TEXT="COMODI" ID="ID_1969812522" CREATED="1464450608891" MODIFIED="1464450616997" MOVED="1464450632666"/>
</node>
<node TEXT="Graph Databases" ID="ID_1049563004" CREATED="1464450618948" MODIFIED="1464450624335" MOVED="1464451395918">
<node TEXT="neo4j" ID="ID_1216237604" CREATED="1464450656182" MODIFIED="1464450658948"/>
<node TEXT="MaSyMoS" ID="ID_693489327" CREATED="1464450659240" MODIFIED="1464450662808"/>
</node>
</node>
</node>
</map>
