


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>cmake-modules/FindITAPS.cmake at master · jedbrown/cmake-modules · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe121-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (e1c0c3f392) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="83BC180C:3B1E:2571A0:529E6BEF" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="DfPKaa56LKU2K2O8eg6kuZcHzM/p5kaSrcFD40l0rpE=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-fa46bf86884db81851bfd73430b3d71e07fcb3ac.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-62c6a6e51e09f7f4ac5a95b9e7abe014c87b163f.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-5970f5a0a3dcc441d5f7ff74326ffd59bbe9388e.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-d90a86ad3d776ad7466f16ce8477627decf55f62.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="0c1382b9ce5023d36bc5adabb0f11f34">

        <link data-pjax-transient rel='permalink' href='/jedbrown/cmake-modules/blob/d510bc35b9952c8224f994bb122ab625e132cfb2/FindITAPS.cmake'>
  <meta property="og:title" content="cmake-modules"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/jedbrown/cmake-modules"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="cmake-modules - CMake modules for some scientific libraries"/>

  <meta name="description" content="cmake-modules - CMake modules for some scientific libraries" />

  <meta content="3303" name="octolytics-dimension-user_id" /><meta content="jedbrown" name="octolytics-dimension-user_login" /><meta content="71563" name="octolytics-dimension-repository_id" /><meta content="jedbrown/cmake-modules" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="71563" name="octolytics-dimension-repository_network_root_id" /><meta content="jedbrown/cmake-modules" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/jedbrown/cmake-modules/commits/master.atom" rel="alternate" title="Recent Commits to cmake-modules:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production macintosh vis-public page-blob">
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fjedbrown%2Fcmake-modules%2Fblob%2Fmaster%2FFindITAPS.cmake">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="jedbrown/cmake-modules"
      data-branch="master"
      data-sha="ccba133ddbd10b18f19b500b791ee10057ee29d2"
  >

    <input type="hidden" name="nwo" value="jedbrown/cmake-modules" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2Fjedbrown%2Fcmake-modules"
    class="minibutton with-count js-toggler-target star-button tooltipped upwards"
    title="You must be signed in to use this feature" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/jedbrown/cmake-modules/stargazers">
      16
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fjedbrown%2Fcmake-modules"
        class="minibutton with-count js-toggler-target fork-button tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/jedbrown/cmake-modules/network" class="social-count">
        11
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/jedbrown" class="url fn" itemprop="url" rel="author"><span itemprop="title">jedbrown</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/jedbrown/cmake-modules" class="js-current-repository js-repo-home-link">cmake-modules</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    

    <div class="container">

      <div class="repository-with-sidebar repo-container  ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/jedbrown/cmake-modules" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /jedbrown/cmake-modules">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/jedbrown/cmake-modules/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /jedbrown/cmake-modules/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>2</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/jedbrown/cmake-modules/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /jedbrown/cmake-modules/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>2</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/jedbrown/cmake-modules/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /jedbrown/cmake-modules/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/jedbrown/cmake-modules/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /jedbrown/cmake-modules/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/jedbrown/cmake-modules/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /jedbrown/cmake-modules/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/jedbrown/cmake-modules.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jedbrown/cmake-modules.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/jedbrown/cmake-modules" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/jedbrown/cmake-modules" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/jedbrown/cmake-modules" class="minibutton sidebar-button js-conduit-rewrite-url">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


              <a href="/jedbrown/cmake-modules/archive/master.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:e2f092666a43e4634a0e4021f4ee1c9b -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/jedbrown/cmake-modules/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/jedbrown/cmake-modules/blob/master/FindITAPS.cmake"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jedbrown/cmake-modules" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">cmake-modules</span></a></span></span><span class="separator"> / </span><strong class="final-path">FindITAPS.cmake</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="FindITAPS.cmake" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/jedbrown/cmake-modules/contributors/master/FindITAPS.cmake">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>188 lines (172 sloc)</span>
        <span>7.519 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/jedbrown/cmake-modules?branch=master&amp;filepath=FindITAPS.cmake"
               title="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/jedbrown/cmake-modules/raw/master/FindITAPS.cmake" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jedbrown/cmake-modules/blame/master/FindITAPS.cmake" class="button minibutton ">Blame</a>
          <a href="/jedbrown/cmake-modules/commits/master/FindITAPS.cmake" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped leftwards" href="#"
             title="You must be signed in and on a branch to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-cmake js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c"># - Try to find ITAPS</span></div><div class='line' id='LC2'><span class="err">#</span></div><div class='line' id='LC3'><span class="c"># This will define</span></div><div class='line' id='LC4'><span class="err">#</span></div><div class='line' id='LC5'><span class="c">#  ITAPS_FOUND          - Requested components were found</span></div><div class='line' id='LC6'><span class="c">#  ITAPS_INCLUDES       - Includes for all available components</span></div><div class='line' id='LC7'><span class="c">#  ITAPS_LIBRARIES      - Libraries for all available components</span></div><div class='line' id='LC8'><span class="err">#</span></div><div class='line' id='LC9'><span class="c">#  ITAPS_MESH_FOUND     - System has iMesh</span></div><div class='line' id='LC10'><span class="c">#  ITAPS_MESH_INCLUDES  - The iMesh include directory</span></div><div class='line' id='LC11'><span class="c">#  ITAPS_MESH_LIBRARIES - Link these to use iMesh</span></div><div class='line' id='LC12'><span class="err">#</span></div><div class='line' id='LC13'><span class="c">#  ITAPS_GEOM_FOUND     - System has iGeom</span></div><div class='line' id='LC14'><span class="c">#  ITAPS_GEOM_INCLUDES  - The iGeom include directory</span></div><div class='line' id='LC15'><span class="c">#  ITAPS_GEOM_LIBRARIES - Link these to use iGeom</span></div><div class='line' id='LC16'><span class="err">#</span></div><div class='line' id='LC17'><span class="c">#  ITAPS_REL_FOUND      - System has iRel</span></div><div class='line' id='LC18'><span class="c">#  ITAPS_REL_INCLUDES   - The iRel include directory</span></div><div class='line' id='LC19'><span class="c">#  ITAPS_REL_LIBRARIES  - Link these to use iRel</span></div><div class='line' id='LC20'><span class="err">#</span></div><div class='line' id='LC21'><span class="c"># Setting this changes the behavior of the search</span></div><div class='line' id='LC22'><span class="c">#  ITAPS_MESH_DEFS_FILE - path to iMesh-Defs.inc</span></div><div class='line' id='LC23'><span class="c">#  ITAPS_GEOM_DEFS_FILE - path to iGeom-Defs.inc</span></div><div class='line' id='LC24'><span class="c">#  ITAPS_REL_DEFS_FILE  - path to iRel-Defs.inc</span></div><div class='line' id='LC25'><span class="err">#</span></div><div class='line' id='LC26'><span class="c"># If any of these variables are in your environment, they will be used as hints</span></div><div class='line' id='LC27'><span class="c">#  IMESH_DIR - directory in which iMesh resides</span></div><div class='line' id='LC28'><span class="c">#  IGEOM_DIR - directory in which iGeom resides</span></div><div class='line' id='LC29'><span class="c">#  IREL_DIR  - directory in which iRel resides</span></div><div class='line' id='LC30'><span class="err">#</span></div><div class='line' id='LC31'><span class="c"># Redistribution and use is allowed according to the terms of the BSD license.</span></div><div class='line' id='LC32'><span class="c"># For details see the accompanying COPYING-CMAKE-SCRIPTS file.</span></div><div class='line' id='LC33'><span class="err">#</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="nb">include</span> <span class="p">(</span><span class="s">FindPackageMultipass</span><span class="p">)</span></div><div class='line' id='LC36'><span class="nb">include</span> <span class="p">(</span><span class="s">ResolveCompilerPaths</span><span class="p">)</span></div><div class='line' id='LC37'><span class="nb">include</span> <span class="p">(</span><span class="s">CheckCSourceRuns</span><span class="p">)</span></div><div class='line' id='LC38'><span class="nb">include</span> <span class="p">(</span><span class="s">FindPackageHandleStandardArgs</span><span class="p">)</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="nb">find_program</span> <span class="p">(</span><span class="s">MAKE_EXECUTABLE</span> <span class="s">NAMES</span> <span class="s">make</span> <span class="s">gmake</span><span class="p">)</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'><span class="nb">macro</span> <span class="p">(</span><span class="s">ITAPS_PREPARE_COMPONENT</span> <span class="s">component</span> <span class="s">name</span><span class="p">)</span></div><div class='line' id='LC43'>&nbsp;&nbsp;<span class="nb">find_file</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_DEFS_FILE</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">-Defs.inc</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">HINTS</span> <span class="s">ENV</span> <span class="s">I</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_DIR</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">PATH_SUFFIXES</span> <span class="s">lib64</span> <span class="s">lib</span><span class="p">)</span></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="c"># If ITAPS_XXX_DEFS_FILE has changed, the library will be found again</span></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="nb">find_package_multipass</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span> <span class="s">itaps_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_config_current</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">STATES</span> <span class="s">DEFS_FILE</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">DEPENDENTS</span> <span class="s">INCLUDES</span> <span class="s">LIBRARIES</span> <span class="s">EXECUTABLE_RUNS</span><span class="p">)</span></div><div class='line' id='LC50'><span class="nb">endmacro</span> <span class="p">()</span>    </div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="nb">macro</span> <span class="p">(</span><span class="s">ITAPS_GET_VARIABLE</span> <span class="s">makefile</span> <span class="s">name</span> <span class="s">var</span><span class="p">)</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">var</span><span class="o">}</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="nb">execute_process</span> <span class="p">(</span><span class="s">COMMAND</span> <span class="o">${</span><span class="nv">MAKE_EXECUTABLE</span><span class="o">}</span> <span class="s">-f</span> <span class="o">${</span><span class="nv">${makefile</span><span class="o">}</span><span class="s">}</span> <span class="s">show</span> <span class="s">VARIABLE=</span><span class="o">${</span><span class="nv">name</span><span class="o">}</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">OUTPUT_VARIABLE</span> <span class="o">${</span><span class="nv">var</span><span class="o">}</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">RESULT_VARIABLE</span> <span class="s">itaps_return</span><span class="p">)</span></div><div class='line' id='LC57'><span class="nb">endmacro</span> <span class="p">(</span><span class="s">ITAPS_GET_VARIABLE</span><span class="p">)</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'><span class="nb">macro</span> <span class="p">(</span><span class="s">ITAPS_TEST_RUNS</span> <span class="s">component</span> <span class="s">name</span> <span class="s">includes</span> <span class="s">libraries</span> <span class="s">program</span> <span class="s">runs</span><span class="p">)</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="c"># message (STATUS &quot;Starting run test: ${includes} ${libraries} ${runs}&quot;)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="nb">multipass_c_source_runs</span> <span class="p">(</span><span class="s2">&quot;${includes}&quot;</span> <span class="s2">&quot;${libraries}&quot;</span> <span class="s2">&quot;${program}&quot;</span> <span class="o">${</span><span class="nv">runs</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC62'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">NOT</span> <span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_EXECUTABLE_RUNS</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_EXECUTABLE_RUNS</span> <span class="s2">&quot;${${runs}}&quot;</span> <span class="s">CACHE</span> <span class="s">BOOL</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;Can the system successfully run an ${name} executable?  This variable can be manually set to \&quot;</span><span class="s">YES\</span><span class="s2">&quot; to force CMake to accept a given configuration, but this will almost always result in a broken build.&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC65'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC66'><span class="nb">endmacro</span> <span class="p">(</span><span class="s">ITAPS_TEST_RUNS</span><span class="p">)</span></div><div class='line' id='LC67'><br/></div><div class='line' id='LC68'><span class="nb">macro</span> <span class="p">(</span><span class="s">ITAPS_REQUIRED_LIBS</span> <span class="s">component</span> <span class="s">name</span> <span class="s">includes</span> <span class="s">libraries_all</span> <span class="s">program</span> <span class="s">libraries_required</span><span class="p">)</span></div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="c"># message (STATUS &quot;trying program: ${program}&quot;)</span></div><div class='line' id='LC70'>&nbsp;&nbsp;<span class="nb">resolve_libraries</span> <span class="p">(</span><span class="s">_all_libraries</span> <span class="s2">&quot;${libraries_all}&quot;</span><span class="p">)</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="nb">list</span> <span class="p">(</span><span class="s">GET</span> <span class="s">_all_libraries</span> <span class="s">0</span> <span class="s">_first_library</span><span class="p">)</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="nb">itaps_test_runs</span> <span class="p">(</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span> <span class="s2">&quot;${includes}&quot;</span> <span class="s2">&quot;${_first_library};${itaps_rel_libs}&quot;</span> <span class="s2">&quot;${program}&quot;</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">_works_minimal</span><span class="p">)</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">_works_minimal</span><span class="p">)</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">libraries_required</span><span class="o">}</span> <span class="s2">&quot;${_first_library}&quot;</span><span class="p">)</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;${name} executable works when only linking to the interface lib, this probably means you have shared libs.&quot;</span><span class="p">)</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">itaps_test_runs</span> <span class="p">(</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span> <span class="s2">&quot;${includes}&quot;</span> <span class="s2">&quot;${_all_libraries};${itaps_rel_libs}&quot;</span> <span class="s2">&quot;${itaps_mesh_program}&quot;</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">_works_extra</span><span class="p">)</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">_works_extra</span><span class="p">)</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">libraries_required</span><span class="o">}</span> <span class="s2">&quot;${_all_libraries}&quot;</span><span class="p">)</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;${name} executable requires linking to extra libs, this probably means it&#39;s statically linked.&quot;</span><span class="p">)</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;${name} could not be used, maybe the install is broken.&quot;</span><span class="p">)</span></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC85'><span class="nb">endmacro</span> <span class="p">()</span></div><div class='line' id='LC86'><br/></div><div class='line' id='LC87'><span class="nb">macro</span> <span class="p">(</span><span class="s">ITAPS_HANDLE_COMPONENT</span> <span class="s">component</span> <span class="s">name</span> <span class="s">program</span><span class="p">)</span></div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="nb">itaps_prepare_component</span> <span class="p">(</span><span class="s2">&quot;${component}&quot;</span> <span class="s2">&quot;${name}&quot;</span><span class="p">)</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_DEFS_FILE</span> <span class="s">AND</span> <span class="s">NOT</span> <span class="s">itaps_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_config_current</span><span class="p">)</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c"># A temporary makefile to probe this ITAPS components&#39;s configuration</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">itaps_config_makefile</span> <span class="s2">&quot;${PROJECT_BINARY_DIR}/Makefile.${name}&quot;</span><span class="p">)</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">file</span> <span class="p">(</span><span class="s">WRITE</span> <span class="o">${</span><span class="nv">itaps_config_makefile</span><span class="o">}</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;## This file was autogenerated by FindITAPS.cmake</span></div><div class='line' id='LC94'><span class="s2">include ${ITAPS_${component}_DEFS_FILE}</span></div><div class='line' id='LC95'><span class="s2">show :</span></div><div class='line' id='LC96'><span class="s2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-@echo -n \${\${VARIABLE}}&quot;</span><span class="p">)</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">itaps_get_variable</span> <span class="p">(</span><span class="s">itaps_config_makefile</span> <span class="s">I</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_INCLUDEDIR</span>   <span class="s">itaps_includedir</span><span class="p">)</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">itaps_get_variable</span> <span class="p">(</span><span class="s">itaps_config_makefile</span> <span class="s">I</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_LIBS</span>         <span class="s">itaps_libs</span><span class="p">)</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">file</span> <span class="p">(</span><span class="s">REMOVE</span> <span class="o">${</span><span class="nv">itaps_config_makefile</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">find_path</span> <span class="p">(</span><span class="s">itaps_include_tmp</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="s">.h</span> <span class="s">HINTS</span> <span class="o">${</span><span class="nv">itaps_includedir</span><span class="o">}</span> <span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_INCLUDES</span> <span class="s2">&quot;${itaps_include_tmp}&quot;</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;Include directories for ${name}&quot;</span><span class="p">)</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">itaps_include_tmp</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">itaps_required_libs</span> <span class="p">(</span><span class="s2">&quot;${component}&quot;</span> <span class="s2">&quot;${name}&quot;</span> <span class="s2">&quot;${ITAPS_${component}_INCLUDES}&quot;</span> <span class="s2">&quot;${itaps_libs}&quot;</span> <span class="s2">&quot;${program}&quot;</span> <span class="s">itaps_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_required_libraries</span><span class="p">)</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_LIBRARIES</span> <span class="s2">&quot;${itaps_${component}_required_libraries}&quot;</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;Libraries for ${name}&quot;</span><span class="p">)</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">mark_as_advanced</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_EXECUTABLE_RUNS</span> <span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_LIBRARIES</span><span class="p">)</span></div><div class='line' id='LC106'>&nbsp;&nbsp;<span class="nb">endif</span><span class="p">()</span></div><div class='line' id='LC107'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_FOUND</span> <span class="s2">&quot;${ITAPS_${component}_EXECUTABLE_RUNS}&quot;</span><span class="p">)</span></div><div class='line' id='LC108'><span class="nb">endmacro</span><span class="p">()</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="nb">itaps_handle_component</span> <span class="p">(</span><span class="s">MESH</span> <span class="s">iMesh</span> <span class="s2">&quot;</span></div><div class='line' id='LC111'><span class="s2">/* iMesh test program */</span></div><div class='line' id='LC112'><span class="s2">#include &lt;iMesh.h&gt;</span></div><div class='line' id='LC113'><span class="s2">#define CHK(err) if (err) return 1</span></div><div class='line' id='LC114'><span class="s2">int main(int argc,char *argv[]) {</span></div><div class='line' id='LC115'><span class="s2">  int err;</span></div><div class='line' id='LC116'><span class="s2">  iMesh_Instance m;</span></div><div class='line' id='LC117'><span class="s2">  iMesh_newMesh(\&quot;</span><span class="s">\&quot;,&amp;m,&amp;err,0);CHK(err);</span></div><div class='line' id='LC118'>&nbsp;&nbsp;<span class="s">iMesh_dtor(m,&amp;err</span><span class="p">)</span><span class="err">;</span><span class="nb">CHK</span><span class="p">(</span><span class="s">err</span><span class="p">)</span><span class="err">;</span></div><div class='line' id='LC119'>&nbsp;&nbsp;<span class="err">return</span> <span class="err">0;</span></div><div class='line' id='LC120'><span class="err">}</span></div><div class='line' id='LC121'><span class="err">&quot;)</span></div><div class='line' id='LC122'><span class="nb">find_path</span> <span class="p">(</span><span class="s">imesh_include_tmp</span> <span class="s">iMeshP.h</span> <span class="s">HINTS</span> <span class="o">${</span><span class="nv">ITAPS_MESH_INCLUDES</span><span class="o">}</span> <span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC123'><span class="nb">if</span> <span class="p">(</span><span class="s">imesh_include_tmp</span><span class="p">)</span></div><div class='line' id='LC124'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_MESH_HAS_PARALLEL</span> <span class="s2">&quot;YES&quot;</span><span class="p">)</span></div><div class='line' id='LC125'><span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC126'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_MESH_HAS_PARALLEL</span> <span class="s2">&quot;NO&quot;</span><span class="p">)</span></div><div class='line' id='LC127'><span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC128'><span class="nb">set</span> <span class="p">(</span><span class="s">imesh_include_tmp</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC129'><br/></div><div class='line' id='LC130'><span class="nb">set</span> <span class="p">(</span><span class="s">itaps_rel_libs</span><span class="p">)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c"># Extra libraries which should only be set when linking with iRel</span></div><div class='line' id='LC131'><br/></div><div class='line' id='LC132'><span class="nb">itaps_handle_component</span> <span class="p">(</span><span class="s">GEOM</span> <span class="s">iGeom</span> <span class="s2">&quot;</span></div><div class='line' id='LC133'><span class="s2">/* iGeom test program */</span></div><div class='line' id='LC134'><span class="s2">#include &lt;iGeom.h&gt;</span></div><div class='line' id='LC135'><span class="s2">#define CHK(err) if (err) return 1</span></div><div class='line' id='LC136'><span class="s2">int main() {</span></div><div class='line' id='LC137'><span class="s2">  int ierr;</span></div><div class='line' id='LC138'><span class="s2">  iGeom_Instance g;</span></div><div class='line' id='LC139'><span class="s2">  iGeom_newGeom(\&quot;</span><span class="s">\&quot;,&amp;g,&amp;ierr,0);CHK(ierr);</span></div><div class='line' id='LC140'>&nbsp;&nbsp;<span class="s">iGeom_dtor(g,&amp;ierr</span><span class="p">)</span><span class="err">;</span><span class="nb">CHK</span><span class="p">(</span><span class="s">ierr</span><span class="p">)</span><span class="err">;</span></div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="err">return</span> <span class="err">0;</span></div><div class='line' id='LC142'><span class="err">}</span></div><div class='line' id='LC143'><span class="err">&quot;)</span></div><div class='line' id='LC144'><br/></div><div class='line' id='LC145'><span class="nb">if</span> <span class="p">(</span><span class="s">ITAPS_MESH_FOUND</span> <span class="s">AND</span> <span class="s">ITAPS_GEOM_FOUND</span><span class="p">)</span> <span class="c"># iRel only makes sense if iMesh and iGeom are found</span></div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">itaps_rel_libs</span> <span class="s2">&quot;${ITAPS_MESH_LIBRARIES}&quot;</span> <span class="s2">&quot;${ITAPS_GEOM_LIBRARIES}&quot;</span><span class="p">)</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="nb">itaps_handle_component</span> <span class="p">(</span><span class="s">REL</span> <span class="s">iRel</span> <span class="s2">&quot;</span></div><div class='line' id='LC148'><span class="s2">/* iRel test program */</span></div><div class='line' id='LC149'><span class="s2">#include &lt;iRel.h&gt;</span></div><div class='line' id='LC150'><span class="s2">#define CHK(err) if (err) return 1</span></div><div class='line' id='LC151'><span class="s2">int main() {</span></div><div class='line' id='LC152'><span class="s2">  int ierr;</span></div><div class='line' id='LC153'><span class="s2">  iRel_Instance rel;</span></div><div class='line' id='LC154'><span class="s2">  iRel_create(\&quot;</span><span class="s">\&quot;,&amp;rel,&amp;ierr,0);CHK(ierr);</span></div><div class='line' id='LC155'>&nbsp;&nbsp;<span class="s">iRel_destroy(rel,&amp;ierr</span><span class="p">)</span><span class="err">;</span><span class="nb">CHK</span><span class="p">(</span><span class="s">ierr</span><span class="p">)</span><span class="err">;</span></div><div class='line' id='LC156'>&nbsp;&nbsp;<span class="err">return</span> <span class="err">0;</span></div><div class='line' id='LC157'><span class="err">}</span></div><div class='line' id='LC158'><span class="err">&quot;)</span></div><div class='line' id='LC159'><span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC160'><br/></div><div class='line' id='LC161'><span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_INCLUDES</span><span class="p">)</span></div><div class='line' id='LC162'><span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_LIBRARIES</span><span class="p">)</span></div><div class='line' id='LC163'><span class="nb">foreach</span> <span class="p">(</span><span class="s">component</span> <span class="s">REL</span> <span class="s">GEOM</span> <span class="s">MESH</span><span class="p">)</span></div><div class='line' id='LC164'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_INCLUDES</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">list</span> <span class="p">(</span><span class="s">APPEND</span> <span class="s">ITAPS_INCLUDES</span> <span class="s2">&quot;${ITAPS_${component}_INCLUDES}&quot;</span><span class="p">)</span></div><div class='line' id='LC166'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC167'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_LIBRARIES</span><span class="p">)</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">list</span> <span class="p">(</span><span class="s">APPEND</span> <span class="s">ITAPS_LIBRARIES</span> <span class="s2">&quot;${ITAPS_${component}_LIBRARIES}&quot;</span><span class="p">)</span></div><div class='line' id='LC169'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC170'>&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;ITAPS_${component}: ${ITAPS_${component}_INCLUDES} ${ITAPS_${component}_LIBRARIES}&quot;</span><span class="p">)</span></div><div class='line' id='LC171'><span class="nb">endforeach</span><span class="p">()</span></div><div class='line' id='LC172'><span class="nb">list</span> <span class="p">(</span><span class="s">REMOVE_DUPLICATES</span> <span class="s">ITAPS_INCLUDES</span><span class="p">)</span></div><div class='line' id='LC173'><span class="nb">list</span> <span class="p">(</span><span class="s">REMOVE_DUPLICATES</span> <span class="s">ITAPS_LIBRARIES</span><span class="p">)</span></div><div class='line' id='LC174'><br/></div><div class='line' id='LC175'><span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_FOUND_REQUIRED_COMPONENTS</span> <span class="s">YES</span><span class="p">)</span></div><div class='line' id='LC176'><span class="nb">if</span> <span class="p">(</span><span class="s">ITAPS_FIND_REQUIRED</span><span class="p">)</span></div><div class='line' id='LC177'>&nbsp;&nbsp;<span class="nb">foreach</span> <span class="p">(</span><span class="s">component</span> <span class="o">${</span><span class="nv">ITAPS_FIND_COMPONENTS</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">NOT</span> <span class="s">ITAPS_</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">_FOUND</span><span class="p">)</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ITAPS_FOUND_REQUIRED_COMPONENTS</span> <span class="s">NOTFOUND</span><span class="p">)</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span><span class="p">()</span></div><div class='line' id='LC181'>&nbsp;&nbsp;<span class="nb">endforeach</span><span class="p">()</span></div><div class='line' id='LC182'><span class="nb">endif</span><span class="p">()</span></div><div class='line' id='LC183'><br/></div><div class='line' id='LC184'><span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;ITAPS: ${ITAPS_INCLUDES}  ${ITAPS_LIBRARIES}&quot;</span><span class="p">)</span></div><div class='line' id='LC185'><br/></div><div class='line' id='LC186'><span class="nb">find_package_handle_standard_args</span> <span class="p">(</span><span class="s">ITAPS</span> <span class="s2">&quot;ITAPS not found, check environment variables I{MESH,GEOM,REL}_DIR&quot;</span></div><div class='line' id='LC187'>&nbsp;&nbsp;<span class="s">ITAPS_INCLUDES</span> <span class="s">ITAPS_LIBRARIES</span> <span class="s">ITAPS_FOUND_REQUIRED_COMPONENTS</span><span class="p">)</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.05147s from github-fe121-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/jedbrown/cmake-modules/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

