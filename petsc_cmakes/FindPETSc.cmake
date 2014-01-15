


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>cmake-modules/FindPETSc.cmake at master · jedbrown/cmake-modules · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe137-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (e1c0c3f392) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="83BC180C:7B1B:13AF3A:529E6967" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="DfPKaa56LKU2K2O8eg6kuZcHzM/p5kaSrcFD40l0rpE=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-fa46bf86884db81851bfd73430b3d71e07fcb3ac.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-62c6a6e51e09f7f4ac5a95b9e7abe014c87b163f.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-5970f5a0a3dcc441d5f7ff74326ffd59bbe9388e.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-d90a86ad3d776ad7466f16ce8477627decf55f62.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="0c1382b9ce5023d36bc5adabb0f11f34">

        <link data-pjax-transient rel='permalink' href='/jedbrown/cmake-modules/blob/d510bc35b9952c8224f994bb122ab625e132cfb2/FindPETSc.cmake'>
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
      <a class="button signin" href="/login?return_to=%2Fjedbrown%2Fcmake-modules%2Fblob%2Fmaster%2FFindPETSc.cmake">Sign in</a>
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
          


<!-- blob contrib key: blob_contributors:v21:8d90afe6f576bd110701309854d4c2f4 -->

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
              <a href="/jedbrown/cmake-modules/blob/master/FindPETSc.cmake"
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
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jedbrown/cmake-modules" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">cmake-modules</span></a></span></span><span class="separator"> / </span><strong class="final-path">FindPETSc.cmake</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="FindPETSc.cmake" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/5190b6ac9033bd5ca13075ac7e422774?d=https%3A%2F%2Fidenticons.github.com%2Ff24ad6f72d6cc4cb51464f2b29ab69d3.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/jedbrown" rel="author">jedbrown</a></span>
    <time class="js-relative-date" datetime="2013-07-03T12:59:49-07:00" title="2013-07-03 12:59:49">July 03, 2013</time>
    <div class="commit-title">
        <a href="/jedbrown/cmake-modules/commit/d510bc35b9952c8224f994bb122ab625e132cfb2" class="message" data-pjax="true" title="FindPETSc: add Debian-style path for petsc-3.4">FindPETSc: add Debian-style path for petsc-3.4</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>3</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="jedbrown" href="/jedbrown/cmake-modules/commits/master/FindPETSc.cmake?author=jedbrown"><img height="20" src="https://0.gravatar.com/avatar/5190b6ac9033bd5ca13075ac7e422774?d=https%3A%2F%2Fidenticons.github.com%2Ff24ad6f72d6cc4cb51464f2b29ab69d3.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="johnfettig" href="/jedbrown/cmake-modules/commits/master/FindPETSc.cmake?author=johnfettig"><img height="20" src="https://2.gravatar.com/avatar/6915e0bfa97d741e002f2a2110c16c50?d=https%3A%2F%2Fidenticons.github.com%2F30681eff9a74c656af98cd64d0323bc4.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="ckhroulev" href="/jedbrown/cmake-modules/commits/master/FindPETSc.cmake?author=ckhroulev"><img height="20" src="https://0.gravatar.com/avatar/80d82d6ca711e7e6b6a79eea44c75682?d=https%3A%2F%2Fidenticons.github.com%2F99cae14c8892b84aaf56f0da811cce85.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/5190b6ac9033bd5ca13075ac7e422774?d=https%3A%2F%2Fidenticons.github.com%2Ff24ad6f72d6cc4cb51464f2b29ab69d3.png&amp;r=x&amp;s=140" width="24" />
            <a href="/jedbrown">jedbrown</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://2.gravatar.com/avatar/6915e0bfa97d741e002f2a2110c16c50?d=https%3A%2F%2Fidenticons.github.com%2F30681eff9a74c656af98cd64d0323bc4.png&amp;r=x&amp;s=140" width="24" />
            <a href="/johnfettig">johnfettig</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/80d82d6ca711e7e6b6a79eea44c75682?d=https%3A%2F%2Fidenticons.github.com%2F99cae14c8892b84aaf56f0da811cce85.png&amp;r=x&amp;s=140" width="24" />
            <a href="/ckhroulev">ckhroulev</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>324 lines (298 sloc)</span>
        <span>14.987 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped leftwards js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/jedbrown/cmake-modules?branch=master&amp;filepath=FindPETSc.cmake"
               title="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/jedbrown/cmake-modules/raw/master/FindPETSc.cmake" class="button minibutton " id="raw-url">Raw</a>
            <a href="/jedbrown/cmake-modules/blame/master/FindPETSc.cmake" class="button minibutton ">Blame</a>
          <a href="/jedbrown/cmake-modules/commits/master/FindPETSc.cmake" class="button minibutton " rel="nofollow">History</a>
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
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c"># - Try to find PETSc</span></div><div class='line' id='LC2'><span class="c"># Once done this will define</span></div><div class='line' id='LC3'><span class="err">#</span></div><div class='line' id='LC4'><span class="c">#  PETSC_FOUND        - system has PETSc</span></div><div class='line' id='LC5'><span class="c">#  PETSC_INCLUDES     - the PETSc include directories</span></div><div class='line' id='LC6'><span class="c">#  PETSC_LIBRARIES    - Link these to use PETSc</span></div><div class='line' id='LC7'><span class="c">#  PETSC_COMPILER     - Compiler used by PETSc, helpful to find a compatible MPI</span></div><div class='line' id='LC8'><span class="c">#  PETSC_DEFINITIONS  - Compiler switches for using PETSc</span></div><div class='line' id='LC9'><span class="c">#  PETSC_MPIEXEC      - Executable for running MPI programs</span></div><div class='line' id='LC10'><span class="c">#  PETSC_VERSION      - Version string (MAJOR.MINOR.SUBMINOR)</span></div><div class='line' id='LC11'><span class="err">#</span></div><div class='line' id='LC12'><span class="c">#  Usage:</span></div><div class='line' id='LC13'><span class="c">#  find_package(PETSc COMPONENTS CXX)  - required if build --with-clanguage=C++ --with-c-support=0</span></div><div class='line' id='LC14'><span class="c">#  find_package(PETSc COMPONENTS C)    - standard behavior of checking build using a C compiler</span></div><div class='line' id='LC15'><span class="c">#  find_package(PETSc)                 - same as above</span></div><div class='line' id='LC16'><span class="err">#</span></div><div class='line' id='LC17'><span class="c"># Setting these changes the behavior of the search</span></div><div class='line' id='LC18'><span class="c">#  PETSC_DIR - directory in which PETSc resides</span></div><div class='line' id='LC19'><span class="c">#  PETSC_ARCH - build architecture</span></div><div class='line' id='LC20'><span class="err">#</span></div><div class='line' id='LC21'><span class="c"># Redistribution and use is allowed according to the terms of the BSD license.</span></div><div class='line' id='LC22'><span class="c"># For details see the accompanying COPYING-CMAKE-SCRIPTS file.</span></div><div class='line' id='LC23'><span class="err">#</span></div><div class='line' id='LC24'><br/></div><div class='line' id='LC25'><span class="nb">set</span><span class="p">(</span><span class="s">PETSC_VALID_COMPONENTS</span></div><div class='line' id='LC26'>&nbsp;&nbsp;<span class="s">C</span></div><div class='line' id='LC27'>&nbsp;&nbsp;<span class="s">CXX</span><span class="p">)</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="nb">if</span><span class="p">(</span><span class="s">NOT</span> <span class="s">PETSc_FIND_COMPONENTS</span><span class="p">)</span></div><div class='line' id='LC30'>&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">PETSC_LANGUAGE_BINDINGS</span> <span class="s2">&quot;C&quot;</span><span class="p">)</span></div><div class='line' id='LC31'><span class="nb">else</span><span class="p">()</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="c"># Right now, this is designed for compatability with the --with-clanguage option, so</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="c"># only allow one item in the components list.</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="nb">list</span><span class="p">(</span><span class="s">LENGTH</span> <span class="o">${</span><span class="nv">PETSc_FIND_COMPONENTS</span><span class="o">}</span> <span class="s">components_length</span><span class="p">)</span></div><div class='line' id='LC35'>&nbsp;&nbsp;<span class="nb">if</span><span class="p">(</span><span class="o">${</span><span class="nv">components_length</span><span class="o">}</span> <span class="s">GREATER</span> <span class="s">1</span><span class="p">)</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span><span class="p">(</span><span class="s">FATAL_ERROR</span> <span class="s2">&quot;Only one component for PETSc is allowed to be specified&quot;</span><span class="p">)</span></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="nb">endif</span><span class="p">()</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="c"># This is a stub for allowing multiple components should that time ever come. Perhaps</span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="c"># to also test Fortran bindings?</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="nb">foreach</span><span class="p">(</span><span class="s">component</span> <span class="o">${</span><span class="nv">PETSc_FIND_COMPONENTS</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">list</span><span class="p">(</span><span class="s">FIND</span> <span class="s">PETSC_VALID_COMPONENTS</span> <span class="o">${</span><span class="nv">component</span><span class="o">}</span> <span class="s">component_location</span><span class="p">)</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span><span class="p">(</span><span class="o">${</span><span class="nv">component_location</span><span class="o">}</span> <span class="s">EQUAL</span> <span class="s">-1</span><span class="p">)</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span><span class="p">(</span><span class="s">FATAL_ERROR</span> <span class="s2">&quot;\&quot;</span><span class="o">${</span><span class="nv">component</span><span class="o">}</span><span class="s">\&quot;</span> <span class="s">is</span> <span class="s">not</span> <span class="s">a</span> <span class="s">valid</span> <span class="s">PETSc</span> <span class="s">component.</span><span class="s2">&quot;)</span></div><div class='line' id='LC44'><span class="s2">    else()</span></div><div class='line' id='LC45'><span class="s2">      list(APPEND PETSC_LANGUAGE_BINDINGS ${component})</span></div><div class='line' id='LC46'><span class="s2">    endif()</span></div><div class='line' id='LC47'><span class="s2">  endforeach()</span></div><div class='line' id='LC48'><span class="s2">endif()</span></div><div class='line' id='LC49'><br/></div><div class='line' id='LC50'><span class="s2">function (petsc_get_version)</span></div><div class='line' id='LC51'><span class="s2">  if (EXISTS &quot;</span><span class="o">${</span><span class="nv">PETSC_DIR</span><span class="o">}</span><span class="s">/include/petscversion.h</span><span class="s2">&quot;)</span></div><div class='line' id='LC52'><span class="s2">    file (STRINGS &quot;</span><span class="o">${</span><span class="nv">PETSC_DIR</span><span class="o">}</span><span class="s">/include/petscversion.h</span><span class="s2">&quot; vstrings REGEX &quot;</span><span class="c">#define PETSC_VERSION_(RELEASE|MAJOR|MINOR|SUBMINOR|PATCH) &quot;)</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">foreach</span> <span class="p">(</span><span class="s">line</span> <span class="o">${</span><span class="nv">vstrings</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">string</span> <span class="p">(</span><span class="s">REGEX</span> <span class="s">REPLACE</span> <span class="s2">&quot; +&quot;</span> <span class="s2">&quot;;&quot;</span> <span class="s">fields</span> <span class="o">${</span><span class="nv">line</span><span class="o">}</span><span class="p">)</span> <span class="c"># break line into three fields (the first is always &quot;#define&quot;)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">list</span> <span class="p">(</span><span class="s">GET</span> <span class="s">fields</span> <span class="s">1</span> <span class="s">var</span><span class="p">)</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">list</span> <span class="p">(</span><span class="s">GET</span> <span class="s">fields</span> <span class="s">2</span> <span class="s">val</span><span class="p">)</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">var</span><span class="o">}</span> <span class="o">${</span><span class="nv">val</span><span class="o">}</span> <span class="s">PARENT_SCOPE</span><span class="p">)</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">var</span><span class="o">}</span> <span class="o">${</span><span class="nv">val</span><span class="o">}</span><span class="p">)</span>         <span class="c"># Also in local scope so we have access below</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">endforeach</span> <span class="p">()</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">if</span> <span class="p">(</span><span class="s">PETSC_VERSION_RELEASE</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">PETSC_VERSION</span> <span class="s2">&quot;${PETSC_VERSION_MAJOR}.${PETSC_VERSION_MINOR}.${PETSC_VERSION_SUBMINOR}p${PETSC_VERSION_PATCH}&quot;</span> <span class="s">PARENT_SCOPE</span><span class="p">)</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">else</span> <span class="p">()</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c"># make dev version compare higher than any patch level of a released version</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">PETSC_VERSION</span> <span class="s2">&quot;${PETSC_VERSION_MAJOR}.${PETSC_VERSION_MINOR}.${PETSC_VERSION_SUBMINOR}.99&quot;</span> <span class="s">PARENT_SCOPE</span><span class="p">)</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">endif</span> <span class="p">()</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="s">else</span> <span class="p">()</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">message</span> <span class="p">(</span><span class="s">SEND_ERROR</span> <span class="s2">&quot;PETSC_DIR can not be used, ${PETSC_DIR}/include/petscversion.h does not exist&quot;</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;<span class="s">endif</span> <span class="p">()</span></div><div class='line' id='LC69'><span class="s">endfunction</span> <span class="p">()</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'><span class="s">find_path</span> <span class="p">(</span><span class="s">PETSC_DIR</span> <span class="s">include/petsc.h</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="s">HINTS</span> <span class="s">ENV</span> <span class="s">PETSC_DIR</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="s">PATHS</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="c"># Debian paths</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="s">/usr/lib/petscdir/3.4</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="s">/usr/lib/petscdir/3.3</span> <span class="s">/usr/lib/petscdir/3.2</span> <span class="s">/usr/lib/petscdir/3.1</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="s">/usr/lib/petscdir/3.0.0</span> <span class="s">/usr/lib/petscdir/2.3.3</span> <span class="s">/usr/lib/petscdir/2.3.2</span></div><div class='line' id='LC78'>&nbsp;&nbsp;<span class="err">$</span><span class="s">ENV{HOME}/petsc</span></div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="s">DOC</span> <span class="s2">&quot;PETSc Directory&quot;</span><span class="p">)</span></div><div class='line' id='LC80'><br/></div><div class='line' id='LC81'><span class="s">find_program</span> <span class="p">(</span><span class="s">MAKE_EXECUTABLE</span> <span class="s">NAMES</span> <span class="s">make</span> <span class="s">gmake</span><span class="p">)</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="s">if</span> <span class="p">(</span><span class="s">PETSC_DIR</span> <span class="s">AND</span> <span class="s">NOT</span> <span class="s">PETSC_ARCH</span><span class="p">)</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">_petsc_arches</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">$</span><span class="s">ENV{PETSC_ARCH}</span>                   <span class="c"># If set, use environment variable first</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">linux-gnu-c-debug</span> <span class="s">linux-gnu-c-opt</span>  <span class="c"># Debian defaults</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">x86_64-unknown-linux-gnu</span> <span class="s">i386-unknown-linux-gnu</span><span class="p">)</span></div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petscconf</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">FILEPATH</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="s">foreach</span> <span class="p">(</span><span class="s">arch</span> <span class="o">${</span><span class="nv">_petsc_arches</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">if</span> <span class="p">(</span><span class="s">NOT</span> <span class="s">PETSC_ARCH</span><span class="p">)</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">find_path</span> <span class="p">(</span><span class="s">petscconf</span> <span class="s">petscconf.h</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">HINTS</span> <span class="o">${</span><span class="nv">PETSC_DIR</span><span class="o">}</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">PATH_SUFFIXES</span> <span class="o">${</span><span class="nv">arch</span><span class="o">}</span><span class="s">/include</span> <span class="s">bmake/</span><span class="o">${</span><span class="nv">arch</span><span class="o">}</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">if</span> <span class="p">(</span><span class="s">petscconf</span><span class="p">)</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">PETSC_ARCH</span> <span class="s2">&quot;${arch}&quot;</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;PETSc build architecture&quot;</span><span class="p">)</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">endif</span> <span class="p">(</span><span class="s">petscconf</span><span class="p">)</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">endif</span> <span class="p">(</span><span class="s">NOT</span> <span class="s">PETSC_ARCH</span><span class="p">)</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="s">endforeach</span> <span class="p">(</span><span class="s">arch</span><span class="p">)</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petscconf</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Scratch variable&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC101'><span class="s">endif</span> <span class="p">(</span><span class="s">PETSC_DIR</span> <span class="s">AND</span> <span class="s">NOT</span> <span class="s">PETSC_ARCH</span><span class="p">)</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="s">set</span> <span class="p">(</span><span class="s">petsc_slaves</span> <span class="s">LIBRARIES_SYS</span> <span class="s">LIBRARIES_VEC</span> <span class="s">LIBRARIES_MAT</span> <span class="s">LIBRARIES_DM</span> <span class="s">LIBRARIES_KSP</span> <span class="s">LIBRARIES_SNES</span> <span class="s">LIBRARIES_TS</span></div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="s">INCLUDE_DIR</span> <span class="s">INCLUDE_CONF</span><span class="p">)</span></div><div class='line' id='LC105'><span class="s">include</span> <span class="p">(</span><span class="s">FindPackageMultipass</span><span class="p">)</span></div><div class='line' id='LC106'><span class="s">find_package_multipass</span> <span class="p">(</span><span class="s">PETSc</span> <span class="s">petsc_config_current</span></div><div class='line' id='LC107'>&nbsp;&nbsp;<span class="s">STATES</span> <span class="s">DIR</span> <span class="s">ARCH</span></div><div class='line' id='LC108'>&nbsp;&nbsp;<span class="s">DEPENDENTS</span> <span class="s">INCLUDES</span> <span class="s">LIBRARIES</span> <span class="s">COMPILER</span> <span class="s">MPIEXEC</span> <span class="o">${</span><span class="nv">petsc_slaves</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="c"># Determine whether the PETSc layout is old-style (through 2.3.3) or</span></div><div class='line' id='LC111'><span class="c"># new-style (&gt;= 3.0.0)</span></div><div class='line' id='LC112'><span class="s">if</span> <span class="p">(</span><span class="s">EXISTS</span> <span class="s2">&quot;${PETSC_DIR}/${PETSC_ARCH}/include/petscconf.h&quot;</span><span class="p">)</span>   <span class="c"># &gt; 2.3.3</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petsc_conf_rules</span> <span class="s2">&quot;${PETSC_DIR}/conf/rules&quot;</span><span class="p">)</span></div><div class='line' id='LC114'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petsc_conf_variables</span> <span class="s2">&quot;${PETSC_DIR}/conf/variables&quot;</span><span class="p">)</span></div><div class='line' id='LC115'><span class="s">elseif</span> <span class="p">(</span><span class="s">EXISTS</span> <span class="s2">&quot;${PETSC_DIR}/bmake/${PETSC_ARCH}/petscconf.h&quot;</span><span class="p">)</span> <span class="c"># &lt;= 2.3.3</span></div><div class='line' id='LC116'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petsc_conf_rules</span> <span class="s2">&quot;${PETSC_DIR}/bmake/common/rules&quot;</span><span class="p">)</span></div><div class='line' id='LC117'>&nbsp;&nbsp;<span class="s">set</span> <span class="p">(</span><span class="s">petsc_conf_variables</span> <span class="s2">&quot;${PETSC_DIR}/bmake/common/variables&quot;</span><span class="p">)</span></div><div class='line' id='LC118'><span class="s">elseif</span> <span class="p">(</span><span class="s">PETSC_DIR</span><span class="p">)</span></div><div class='line' id='LC119'>&nbsp;&nbsp;<span class="s">message</span> <span class="p">(</span><span class="s">SEND_ERROR</span> <span class="s2">&quot;The pair PETSC_DIR=${PETSC_DIR} PETSC_ARCH=${PETSC_ARCH} do not specify a valid PETSc installation&quot;</span><span class="p">)</span></div><div class='line' id='LC120'><span class="s">endif</span> <span class="p">()</span></div><div class='line' id='LC121'><br/></div><div class='line' id='LC122'><span class="s">if</span> <span class="p">(</span><span class="s">petsc_conf_rules</span> <span class="s">AND</span> <span class="s">petsc_conf_variables</span> <span class="s">AND</span> <span class="s">NOT</span> <span class="s">petsc_config_current</span><span class="p">)</span></div><div class='line' id='LC123'>&nbsp;&nbsp;<span class="s">petsc_get_version(</span><span class="p">)</span></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'>&nbsp;&nbsp;<span class="c"># Put variables into environment since they are needed to get</span></div><div class='line' id='LC126'>&nbsp;&nbsp;<span class="c"># configuration (petscvariables) in the PETSc makefile</span></div><div class='line' id='LC127'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ENV{PETSC_DIR}</span> <span class="s2">&quot;${PETSC_DIR}&quot;</span><span class="p">)</span></div><div class='line' id='LC128'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">ENV{PETSC_ARCH}</span> <span class="s2">&quot;${PETSC_ARCH}&quot;</span><span class="p">)</span></div><div class='line' id='LC129'><br/></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="c"># A temporary makefile to probe the PETSc configuration</span></div><div class='line' id='LC131'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_config_makefile</span> <span class="s2">&quot;${PROJECT_BINARY_DIR}/Makefile.petsc&quot;</span><span class="p">)</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="nb">file</span> <span class="p">(</span><span class="s">WRITE</span> <span class="s2">&quot;${petsc_config_makefile}&quot;</span></div><div class='line' id='LC133'><span class="s2">&quot;## This file was autogenerated by FindPETSc.cmake</span></div><div class='line' id='LC134'><span class="s2"># PETSC_DIR  = ${PETSC_DIR}</span></div><div class='line' id='LC135'><span class="s2"># PETSC_ARCH = ${PETSC_ARCH}</span></div><div class='line' id='LC136'><span class="s2">include ${petsc_conf_rules}</span></div><div class='line' id='LC137'><span class="s2">include ${petsc_conf_variables}</span></div><div class='line' id='LC138'><span class="s2">show :</span></div><div class='line' id='LC139'><span class="s2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-@echo -n \${\${VARIABLE}}</span></div><div class='line' id='LC140'><span class="s2">&quot;</span><span class="p">)</span></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'>&nbsp;&nbsp;<span class="nb">macro</span> <span class="p">(</span><span class="s">PETSC_GET_VARIABLE</span> <span class="s">name</span> <span class="s">var</span><span class="p">)</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="o">${</span><span class="nv">var</span><span class="o">}</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">execute_process</span> <span class="p">(</span><span class="s">COMMAND</span> <span class="o">${</span><span class="nv">MAKE_EXECUTABLE</span><span class="o">}</span> <span class="s">--no-print-directory</span> <span class="s">-f</span> <span class="o">${</span><span class="nv">petsc_config_makefile</span><span class="o">}</span> <span class="s">show</span> <span class="s">VARIABLE=</span><span class="o">${</span><span class="nv">name</span><span class="o">}</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">OUTPUT_VARIABLE</span> <span class="o">${</span><span class="nv">var</span><span class="o">}</span></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">RESULT_VARIABLE</span> <span class="s">petsc_return</span><span class="p">)</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="nb">endmacro</span> <span class="p">(</span><span class="s">PETSC_GET_VARIABLE</span><span class="p">)</span></div><div class='line' id='LC148'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PETSC_LIB_DIR</span>            <span class="s">petsc_lib_dir</span><span class="p">)</span></div><div class='line' id='LC149'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PETSC_EXTERNAL_LIB_BASIC</span> <span class="s">petsc_libs_external</span><span class="p">)</span></div><div class='line' id='LC150'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PETSC_CCPPFLAGS</span>          <span class="s">petsc_cpp_line</span><span class="p">)</span></div><div class='line' id='LC151'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PETSC_INCLUDE</span>            <span class="s">petsc_include</span><span class="p">)</span></div><div class='line' id='LC152'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PCC</span>                      <span class="s">petsc_cc</span><span class="p">)</span></div><div class='line' id='LC153'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">PCC_FLAGS</span>                <span class="s">petsc_cc_flags</span><span class="p">)</span></div><div class='line' id='LC154'>&nbsp;&nbsp;<span class="nb">petsc_get_variable</span> <span class="p">(</span><span class="s">MPIEXEC</span>                  <span class="s">petsc_mpiexec</span><span class="p">)</span></div><div class='line' id='LC155'>&nbsp;&nbsp;<span class="c"># We are done with the temporary Makefile, calling PETSC_GET_VARIABLE after this point is invalid!</span></div><div class='line' id='LC156'>&nbsp;&nbsp;<span class="nb">file</span> <span class="p">(</span><span class="s">REMOVE</span> <span class="o">${</span><span class="nv">petsc_config_makefile</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'>&nbsp;&nbsp;<span class="nb">include</span> <span class="p">(</span><span class="s">ResolveCompilerPaths</span><span class="p">)</span></div><div class='line' id='LC159'>&nbsp;&nbsp;<span class="c"># Extract include paths and libraries from compile command line</span></div><div class='line' id='LC160'>&nbsp;&nbsp;<span class="nb">resolve_includes</span> <span class="p">(</span><span class="s">petsc_includes_all</span> <span class="s2">&quot;${petsc_cpp_line}&quot;</span><span class="p">)</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'>&nbsp;&nbsp;<span class="c">#on windows we need to make sure we&#39;re linking against the right</span></div><div class='line' id='LC163'>&nbsp;&nbsp;<span class="c">#runtime library</span></div><div class='line' id='LC164'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">WIN32</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">petsc_cc_flags</span> <span class="s">MATCHES</span> <span class="s2">&quot;-MT&quot;</span><span class="p">)</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">using_md</span> <span class="s">False</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">foreach</span><span class="p">(</span><span class="s">flag_var</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">CMAKE_C_FLAGS</span> <span class="s">CMAKE_C_FLAGS_DEBUG</span> <span class="s">CMAKE_C_FLAGS_RELEASE</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">CMAKE_C_FLAGS_MINSIZEREL</span> <span class="s">CMAKE_C_FLAGS_RELWITHDEBINFO</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">CMAKE_CXX_FLAGS</span> <span class="s">CMAKE_CXX_FLAGS_DEBUG</span> <span class="s">CMAKE_CXX_FLAGS_RELEASE</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">CMAKE_CXX_FLAGS_MINSIZEREL</span> <span class="s">CMAKE_CXX_FLAGS_RELWITHDEBINFO</span><span class="p">)</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span><span class="p">(</span><span class="o">${</span><span class="nv">flag_var</span><span class="o">}</span> <span class="s">MATCHES</span> <span class="s2">&quot;/MD&quot;</span><span class="p">)</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">using_md</span> <span class="s">True</span><span class="p">)</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span><span class="p">(</span><span class="o">${</span><span class="nv">flag_var</span><span class="o">}</span> <span class="s">MATCHES</span> <span class="s2">&quot;/MD&quot;</span><span class="p">)</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endforeach</span><span class="p">(</span><span class="s">flag_var</span><span class="p">)</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span><span class="p">(</span><span class="o">${</span><span class="nv">using_md</span><span class="o">}</span> <span class="s">MATCHES</span> <span class="s2">&quot;True&quot;</span><span class="p">)</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span><span class="p">(</span><span class="s">WARNING</span> <span class="s2">&quot;PETSc was built with /MT, but /MD is currently set.</span></div><div class='line' id='LC178'><span class="s2"> See http://www.cmake.org/Wiki/CMake_FAQ#How_can_I_build_my_MSVC_application_with_a_static_runtime.3F&quot;</span><span class="p">)</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span><span class="p">(</span><span class="o">${</span><span class="nv">using_md</span><span class="o">}</span> <span class="s">MATCHES</span> <span class="s2">&quot;True&quot;</span><span class="p">)</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">petsc_cc_flags</span> <span class="s">MATCHES</span> <span class="s2">&quot;-MT&quot;</span><span class="p">)</span></div><div class='line' id='LC181'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">WIN32</span><span class="p">)</span></div><div class='line' id='LC182'><br/></div><div class='line' id='LC183'>&nbsp;&nbsp;<span class="nb">include</span> <span class="p">(</span><span class="s">CorrectWindowsPaths</span><span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="nb">convert_cygwin_path</span><span class="p">(</span><span class="s">petsc_lib_dir</span><span class="p">)</span></div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;petsc_lib_dir ${petsc_lib_dir}&quot;</span><span class="p">)</span></div><div class='line' id='LC186'><br/></div><div class='line' id='LC187'>&nbsp;&nbsp;<span class="nb">macro</span> <span class="p">(</span><span class="s">PETSC_FIND_LIBRARY</span> <span class="s">suffix</span> <span class="s">name</span><span class="p">)</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_</span><span class="o">${</span><span class="nv">suffix</span><span class="o">}</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span> <span class="c"># Clear any stale value, if we got here, we need to find it again</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">WIN32</span><span class="p">)</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">libname</span> <span class="s">lib</span><span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="p">)</span> <span class="c">#windows expects &quot;libfoo&quot;, linux expects &quot;foo&quot;</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">(</span><span class="s">WIN32</span><span class="p">)</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">libname</span> <span class="o">${</span><span class="nv">name</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">WIN32</span><span class="p">)</span></div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">find_library</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_</span><span class="o">${</span><span class="nv">suffix</span><span class="o">}</span> <span class="s">NAMES</span> <span class="o">${</span><span class="nv">libname</span><span class="o">}</span> <span class="s">HINTS</span> <span class="o">${</span><span class="nv">petsc_lib_dir</span><span class="o">}</span> <span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_LIBRARIES_</span><span class="o">${</span><span class="nv">suffix</span><span class="o">}</span> <span class="s2">&quot;${PETSC_LIBRARY_${suffix}}&quot;</span><span class="p">)</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">mark_as_advanced</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_</span><span class="o">${</span><span class="nv">suffix</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC197'>&nbsp;&nbsp;<span class="nb">endmacro</span> <span class="p">(</span><span class="s">PETSC_FIND_LIBRARY</span> <span class="s">suffix</span> <span class="s">name</span><span class="p">)</span></div><div class='line' id='LC198'><br/></div><div class='line' id='LC199'>&nbsp;&nbsp;<span class="c"># Look for petscvec first, if it doesn&#39;t exist, we must be using single-library</span></div><div class='line' id='LC200'>&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">VEC</span> <span class="s">petscvec</span><span class="p">)</span></div><div class='line' id='LC201'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_VEC</span><span class="p">)</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">SYS</span>  <span class="s2">&quot;petscsys;petsc&quot;</span><span class="p">)</span> <span class="c"># libpetscsys is called libpetsc prior to 3.1 (when single-library was introduced)</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">MAT</span>  <span class="s">petscmat</span><span class="p">)</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">DM</span>   <span class="s">petscdm</span><span class="p">)</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">KSP</span>  <span class="s">petscksp</span><span class="p">)</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">SNES</span> <span class="s">petscsnes</span><span class="p">)</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">TS</span>   <span class="s">petscts</span><span class="p">)</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">macro</span> <span class="p">(</span><span class="s">PETSC_JOIN</span> <span class="s">libs</span> <span class="s">deps</span><span class="p">)</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">list</span> <span class="p">(</span><span class="s">APPEND</span> <span class="s">PETSC_LIBRARIES_</span><span class="o">${</span><span class="nv">libs</span><span class="o">}</span> <span class="o">${</span><span class="nv">PETSC_LIBRARIES_${deps</span><span class="o">}</span><span class="s">}</span><span class="p">)</span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endmacro</span> <span class="p">(</span><span class="s">PETSC_JOIN</span> <span class="s">libs</span> <span class="s">deps</span><span class="p">)</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">VEC</span>  <span class="s">SYS</span><span class="p">)</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">MAT</span>  <span class="s">VEC</span><span class="p">)</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">DM</span>   <span class="s">MAT</span><span class="p">)</span></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">KSP</span>  <span class="s">DM</span><span class="p">)</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">SNES</span> <span class="s">KSP</span><span class="p">)</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">TS</span>   <span class="s">SNES</span><span class="p">)</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_join</span> <span class="p">(</span><span class="s">ALL</span>  <span class="s">TS</span><span class="p">)</span></div><div class='line' id='LC218'>&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_VEC</span> <span class="s2">&quot;NOTFOUND&quot;</span> <span class="s">CACHE</span> <span class="s">INTERNAL</span> <span class="s2">&quot;Cleared&quot;</span> <span class="s">FORCE</span><span class="p">)</span> <span class="c"># There is no libpetscvec</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_find_library</span> <span class="p">(</span><span class="s">SINGLE</span> <span class="s">petsc</span><span class="p">)</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">foreach</span> <span class="p">(</span><span class="s">pkg</span> <span class="s">SYS</span> <span class="s">VEC</span> <span class="s">MAT</span> <span class="s">DM</span> <span class="s">KSP</span> <span class="s">SNES</span> <span class="s">TS</span> <span class="s">ALL</span><span class="p">)</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_LIBRARIES_</span><span class="o">${</span><span class="nv">pkg</span><span class="o">}</span> <span class="s2">&quot;${PETSC_LIBRARY_SINGLE}&quot;</span><span class="p">)</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endforeach</span> <span class="p">()</span></div><div class='line' id='LC224'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC225'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">PETSC_LIBRARY_TS</span><span class="p">)</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;Recognized PETSc install with separate libraries for each package&quot;</span><span class="p">)</span></div><div class='line' id='LC227'>&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;Recognized PETSc install with single library for all packages&quot;</span><span class="p">)</span></div><div class='line' id='LC229'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC230'><br/></div><div class='line' id='LC231'>&nbsp;&nbsp;<span class="nb">include</span><span class="p">(</span><span class="s">Check</span><span class="o">${</span><span class="nv">PETSC_LANGUAGE_BINDINGS</span><span class="o">}</span><span class="s">SourceRuns</span><span class="p">)</span></div><div class='line' id='LC232'>&nbsp;&nbsp;<span class="nb">macro</span> <span class="p">(</span><span class="s">PETSC_TEST_RUNS</span> <span class="s">includes</span> <span class="s">libraries</span> <span class="s">runs</span><span class="p">)</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span><span class="p">(</span><span class="o">${</span><span class="nv">PETSC_LANGUAGE_BINDINGS</span><span class="o">}</span> <span class="s">STREQUAL</span> <span class="s2">&quot;C&quot;</span><span class="p">)</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">_PETSC_ERR_FUNC</span> <span class="s2">&quot;CHKERRQ(ierr)&quot;</span><span class="p">)</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">elseif</span><span class="p">(</span><span class="o">${</span><span class="nv">PETSC_LANGUAGE_BINDINGS</span><span class="o">}</span> <span class="s">STREQUAL</span> <span class="s2">&quot;CXX&quot;</span><span class="p">)</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">_PETSC_ERR_FUNC</span> <span class="s2">&quot;CHKERRXX(ierr)&quot;</span><span class="p">)</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span><span class="p">()</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">PETSC_VERSION</span> <span class="s">VERSION_GREATER</span> <span class="s">3.1</span><span class="p">)</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">_PETSC_TSDestroy</span> <span class="s2">&quot;TSDestroy(&amp;ts)&quot;</span><span class="p">)</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">_PETSC_TSDestroy</span> <span class="s2">&quot;TSDestroy(ts)&quot;</span><span class="p">)</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;</div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span><span class="p">(</span><span class="s">_PETSC_TEST_SOURCE</span> <span class="s2">&quot;</span></div><div class='line' id='LC245'><span class="s2">static const char help[] = \&quot;</span><span class="s">PETSc</span> <span class="s">test</span> <span class="s">program.\</span><span class="s2">&quot;;</span></div><div class='line' id='LC246'><span class="s2">#include &lt;petscts.h&gt;</span></div><div class='line' id='LC247'><span class="s2">int main(int argc,char *argv[]) {</span></div><div class='line' id='LC248'><span class="s2">  PetscErrorCode ierr;</span></div><div class='line' id='LC249'><span class="s2">  TS ts;</span></div><div class='line' id='LC250'><br/></div><div class='line' id='LC251'><span class="s2">  ierr = PetscInitialize(&amp;argc,&amp;argv,0,help);${_PETSC_ERR_FUNC};</span></div><div class='line' id='LC252'><span class="s2">  ierr = TSCreate(PETSC_COMM_WORLD,&amp;ts);${_PETSC_ERR_FUNC};</span></div><div class='line' id='LC253'><span class="s2">  ierr = TSSetFromOptions(ts);${_PETSC_ERR_FUNC};</span></div><div class='line' id='LC254'><span class="s2">  ierr = ${_PETSC_TSDestroy};${_PETSC_ERR_FUNC};</span></div><div class='line' id='LC255'><span class="s2">  ierr = PetscFinalize();${_PETSC_ERR_FUNC};</span></div><div class='line' id='LC256'><span class="s2">  return 0;</span></div><div class='line' id='LC257'><span class="s2">}</span></div><div class='line' id='LC258'><span class="s2">&quot;</span><span class="p">)</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">multipass_source_runs</span> <span class="p">(</span><span class="s2">&quot;${includes}&quot;</span> <span class="s2">&quot;${libraries}&quot;</span> <span class="s2">&quot;${_PETSC_TEST_SOURCE}&quot;</span> <span class="o">${</span><span class="nv">runs</span><span class="o">}</span> <span class="s2">&quot;${PETSC_LANGUAGE_BINDINGS}&quot;</span><span class="p">)</span></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="o">${</span><span class="nv">${runs</span><span class="o">}</span><span class="s">}</span><span class="p">)</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_EXECUTABLE_RUNS</span> <span class="s2">&quot;YES&quot;</span> <span class="s">CACHE</span> <span class="s">BOOL</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;Can the system successfully run a PETSc executable?  This variable can be manually set to \&quot;</span><span class="s">YES\</span><span class="s2">&quot; to force CMake to accept a given PETSc configuration, but this will almost always result in a broken build.  If you change PETSC_DIR, PETSC_ARCH, or PETSC_CURRENT you would have to reset this variable.&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="o">${</span><span class="nv">${runs</span><span class="o">}</span><span class="s">}</span><span class="p">)</span></div><div class='line' id='LC264'>&nbsp;&nbsp;<span class="nb">endmacro</span> <span class="p">(</span><span class="s">PETSC_TEST_RUNS</span><span class="p">)</span></div><div class='line' id='LC265'><br/></div><div class='line' id='LC266'><br/></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="nb">find_path</span> <span class="p">(</span><span class="s">PETSC_INCLUDE_DIR</span> <span class="s">petscts.h</span> <span class="s">HINTS</span> <span class="s2">&quot;${PETSC_DIR}&quot;</span> <span class="s">PATH_SUFFIXES</span> <span class="s">include</span> <span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC268'>&nbsp;&nbsp;<span class="nb">find_path</span> <span class="p">(</span><span class="s">PETSC_INCLUDE_CONF</span> <span class="s">petscconf.h</span> <span class="s">HINTS</span> <span class="s2">&quot;${PETSC_DIR}&quot;</span> <span class="s">PATH_SUFFIXES</span> <span class="s2">&quot;${PETSC_ARCH}/include&quot;</span> <span class="s2">&quot;bmake/${PETSC_ARCH}&quot;</span> <span class="s">NO_DEFAULT_PATH</span><span class="p">)</span></div><div class='line' id='LC269'>&nbsp;&nbsp;<span class="nb">mark_as_advanced</span> <span class="p">(</span><span class="s">PETSC_INCLUDE_DIR</span> <span class="s">PETSC_INCLUDE_CONF</span><span class="p">)</span></div><div class='line' id='LC270'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_includes_minimal</span> <span class="o">${</span><span class="nv">PETSC_INCLUDE_CONF</span><span class="o">}</span> <span class="o">${</span><span class="nv">PETSC_INCLUDE_DIR</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC271'><br/></div><div class='line' id='LC272'>&nbsp;&nbsp;<span class="nb">petsc_test_runs</span> <span class="p">(</span><span class="s2">&quot;${petsc_includes_minimal}&quot;</span> <span class="s2">&quot;${PETSC_LIBRARIES_TS}&quot;</span> <span class="s">petsc_works_minimal</span><span class="p">)</span></div><div class='line' id='LC273'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">petsc_works_minimal</span><span class="p">)</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;Minimal PETSc includes and libraries work.  This probably means we are building with shared libs.&quot;</span><span class="p">)</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_includes_needed</span> <span class="s2">&quot;${petsc_includes_minimal}&quot;</span><span class="p">)</span></div><div class='line' id='LC276'>&nbsp;&nbsp;<span class="nb">else</span> <span class="p">(</span><span class="s">petsc_works_minimal</span><span class="p">)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c"># Minimal includes fail, see if just adding full includes fixes it</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_test_runs</span> <span class="p">(</span><span class="s2">&quot;${petsc_includes_all}&quot;</span> <span class="s2">&quot;${PETSC_LIBRARIES_TS}&quot;</span> <span class="s">petsc_works_allincludes</span><span class="p">)</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">petsc_works_allincludes</span><span class="p">)</span> <span class="c"># It does, we just need all the includes (</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;PETSc requires extra include paths, but links correctly with only interface libraries.  This is an unexpected configuration (but it seems to work fine).&quot;</span><span class="p">)</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_includes_needed</span> <span class="o">${</span><span class="nv">petsc_includes_all</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">(</span><span class="s">petsc_works_allincludes</span><span class="p">)</span> <span class="c"># We are going to need to link the external libs explicitly</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">resolve_libraries</span> <span class="p">(</span><span class="s">petsc_libraries_external</span> <span class="s2">&quot;${petsc_libs_external}&quot;</span><span class="p">)</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">foreach</span> <span class="p">(</span><span class="s">pkg</span> <span class="s">SYS</span> <span class="s">VEC</span> <span class="s">MAT</span> <span class="s">DM</span> <span class="s">KSP</span> <span class="s">SNES</span> <span class="s">TS</span> <span class="s">ALL</span><span class="p">)</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">list</span> <span class="p">(</span><span class="s">APPEND</span> <span class="s">PETSC_LIBRARIES_</span><span class="o">${</span><span class="nv">pkg</span><span class="o">}</span>  <span class="o">${</span><span class="nv">petsc_libraries_external</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endforeach</span> <span class="p">(</span><span class="s">pkg</span><span class="p">)</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_test_runs</span> <span class="p">(</span><span class="s2">&quot;${petsc_includes_minimal}&quot;</span> <span class="s2">&quot;${PETSC_LIBRARIES_TS}&quot;</span> <span class="s">petsc_works_alllibraries</span><span class="p">)</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">petsc_works_alllibraries</span><span class="p">)</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;PETSc only need minimal includes, but requires explicit linking to all dependencies.  This is expected when PETSc is built with static libraries.&quot;</span><span class="p">)</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_includes_needed</span> <span class="o">${</span><span class="nv">petsc_includes_minimal</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">(</span><span class="s">petsc_works_alllibraries</span><span class="p">)</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c"># It looks like we really need everything, should have listened to Matt</span></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">petsc_includes_needed</span> <span class="o">${</span><span class="nv">petsc_includes_all</span><span class="o">}</span><span class="p">)</span></div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">petsc_test_runs</span> <span class="p">(</span><span class="s2">&quot;${petsc_includes_all}&quot;</span> <span class="s2">&quot;${PETSC_LIBRARIES_TS}&quot;</span> <span class="s">petsc_works_all</span><span class="p">)</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="s">petsc_works_all</span><span class="p">)</span> <span class="c"># We fail anyways</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;PETSc requires extra include paths and explicit linking to all dependencies.  This probably means you have static libraries and something unexpected in PETSc headers.&quot;</span><span class="p">)</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">else</span> <span class="p">(</span><span class="s">petsc_works_all</span><span class="p">)</span> <span class="c"># We fail anyways</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="nb">message</span> <span class="p">(</span><span class="s">STATUS</span> <span class="s2">&quot;PETSc could not be used, maybe the install is broken.&quot;</span><span class="p">)</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">petsc_works_all</span><span class="p">)</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">petsc_works_alllibraries</span><span class="p">)</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">petsc_works_allincludes</span><span class="p">)</span></div><div class='line' id='LC301'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">(</span><span class="s">petsc_works_minimal</span><span class="p">)</span></div><div class='line' id='LC302'><br/></div><div class='line' id='LC303'>&nbsp;&nbsp;<span class="c"># We do an out-of-source build so __FILE__ will be an absolute path, hence __INSDIR__ is superfluous</span></div><div class='line' id='LC304'>&nbsp;&nbsp;<span class="nb">if</span> <span class="p">(</span><span class="o">${</span><span class="nv">PETSC_VERSION</span><span class="o">}</span> <span class="s">VERSION_LESS</span> <span class="s">3.1</span><span class="p">)</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_DEFINITIONS</span> <span class="s2">&quot;-D__SDIR__=\&quot;</span><span class="s">\&quot;&quot;</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;PETSc definitions&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC306'>&nbsp;&nbsp;<span class="nb">else</span> <span class="p">()</span></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_DEFINITIONS</span> <span class="s2">&quot;-D__INSDIR__=&quot;</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;PETSc definitions&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC308'>&nbsp;&nbsp;<span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC309'>&nbsp;&nbsp;<span class="c"># Sometimes this can be used to assist FindMPI.cmake</span></div><div class='line' id='LC310'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_MPIEXEC</span> <span class="o">${</span><span class="nv">petsc_mpiexec</span><span class="o">}</span> <span class="s">CACHE</span> <span class="s">FILEPATH</span> <span class="s2">&quot;Executable for running PETSc MPI programs&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC311'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_INCLUDES</span> <span class="o">${</span><span class="nv">petsc_includes_needed</span><span class="o">}</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;PETSc include path&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC312'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_LIBRARIES</span> <span class="o">${</span><span class="nv">PETSC_LIBRARIES_ALL</span><span class="o">}</span> <span class="s">CACHE</span> <span class="s">STRING</span> <span class="s2">&quot;PETSc libraries&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC313'>&nbsp;&nbsp;<span class="nb">set</span> <span class="p">(</span><span class="s">PETSC_COMPILER</span> <span class="o">${</span><span class="nv">petsc_cc</span><span class="o">}</span> <span class="s">CACHE</span> <span class="s">FILEPATH</span> <span class="s2">&quot;PETSc compiler&quot;</span> <span class="s">FORCE</span><span class="p">)</span></div><div class='line' id='LC314'>&nbsp;&nbsp;<span class="c"># Note that we have forced values for all these choices.  If you</span></div><div class='line' id='LC315'>&nbsp;&nbsp;<span class="c"># change these, you are telling the system to trust you that they</span></div><div class='line' id='LC316'>&nbsp;&nbsp;<span class="c"># work.  It is likely that you will end up with a broken build.</span></div><div class='line' id='LC317'>&nbsp;&nbsp;<span class="nb">mark_as_advanced</span> <span class="p">(</span><span class="s">PETSC_INCLUDES</span> <span class="s">PETSC_LIBRARIES</span> <span class="s">PETSC_COMPILER</span> <span class="s">PETSC_DEFINITIONS</span> <span class="s">PETSC_MPIEXEC</span> <span class="s">PETSC_EXECUTABLE_RUNS</span><span class="p">)</span></div><div class='line' id='LC318'><span class="nb">endif</span> <span class="p">()</span></div><div class='line' id='LC319'><br/></div><div class='line' id='LC320'><span class="nb">include</span> <span class="p">(</span><span class="s">FindPackageHandleStandardArgs</span><span class="p">)</span></div><div class='line' id='LC321'><span class="nb">find_package_handle_standard_args</span> <span class="p">(</span><span class="s">PETSc</span></div><div class='line' id='LC322'>&nbsp;&nbsp;<span class="s2">&quot;PETSc could not be found.  Be sure to set PETSC_DIR and PETSC_ARCH.&quot;</span></div><div class='line' id='LC323'>&nbsp;&nbsp;<span class="s">PETSC_INCLUDES</span> <span class="s">PETSC_LIBRARIES</span> <span class="s">PETSC_EXECUTABLE_RUNS</span><span class="p">)</span></div></pre></div>
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
      <li>&copy; 2013 <span title="0.05874s from github-fe137-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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

