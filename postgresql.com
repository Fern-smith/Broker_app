<!doctype html>
<html lang="en">
 <head>
  <title>PostgreSQL: The world's most advanced open source database</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="Content-Type" content="text/xhtml; charset=utf-8" />
  
  <meta name="description" content="The official site for PostgreSQL, the world's most advanced open source database" />
 
  <meta name="theme-color" content="#336791"/>
  <meta name="copyright" content="The PostgreSQL Global Development Group" />
  <meta property="og:url" content="https://www.postgresql.org/" />
  <meta property="og:type" content="article" />
  <meta property="article:author" content="PostgreSQL Global Development Group" />
  <meta property="article:published_time" content="2025-09-18T20:51:41.358544" />
  <meta property="og:image" content="https://www.postgresql.org/media/img/about/press/elephant.png" />
  <meta property="og:title" content="PostgreSQL" />
  <meta property="og:description" content="The world&#x27;s most advanced open source database." />
  <meta property="og:site_name" content="PostgreSQL" />
  <link href="/media/css/fontawesome.css?8fac4673" rel="stylesheet">
  <link rel="stylesheet" href="/media/css/bootstrap-4.4.1.min.css">
  <link rel="shortcut icon" href="/favicon.ico" />
  
  <link rel="stylesheet" type="text/css" href="/dyncss/base.css?8fac4673">

  <script src="/media/js/theme.js?8fac4673"></script>

  
  </head>
  <body>
    <div class="container-fluid">
      <div class="row justify-content-md-center">
        <div class="col">
          <!-- Header -->
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand p-0" href="/">
              <img class="logo" src="/media/img/about/press/elephant.png" alt="PostgreSQL Elephant Logo">
            </a>
            <input type="checkbox" id="navbar-toggler" aria-controls="pgNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <label for="navbar-toggler" id="navbar-toggler-label" class="navbar-toggler" tabindex="0"><span class="navbar-toggler-icon"></span></label>
            <div class="navbar-collapse" id="pgNavbar">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item p-2"><a href="/" title="Home">Home</a></li>
                <li class="nav-item p-2"><a href="/about/" title="About">About</a></li>
                <li class="nav-item p-2"><a href="/download/" title="Download">Download</a></li>
                <li class="nav-item p-2"><a href="/docs/" title="Documentation">Documentation</a></li>
                <li class="nav-item p-2"><a href="/community/" title="Community">Community</a></li>
                <li class="nav-item p-2"><a href="/developer/" title="Developers">Developers</a></li>
                <li class="nav-item p-2"><a href="/support/" title="Support">Support</a></li>
                <li class="nav-item p-2"><a href="/about/donate/" title="Donate">Donate</a></li>
                <li class="nav-item p-2"><a href="/account/" title="Your account">Your account</a></li>
              </ul>
              <form role="search" method="get" action="/search/">
                <div class="input-group">
                  <input id="q" name="q" type="text" size="20" maxlength="255" accesskey="s"  class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                  </span>
                </div><!-- /input-group -->
              </form>
              <form id="form-theme" class="form-inline d-none">
                <button id="btn-theme" class="btn btn-default ml-1" type="button"></button>
              </form>
            </div>
          </nav>
        </div>
      </div>
      <div class="row justify-content-center pg-shout-box">
        <div class="col text-white text-center">September 4, 2025: <a href="/about/news/postgresql-18-rc-1-released-3130/">
  PostgreSQL 18 RC 1 Released!
</a>
</div>
      </div>
    </div>
    
<div class="jumbotron jumbotron-fluid pg-jumbotron">
  <div class="container">
    <h1 class="text-white pg-jumbotron-header">PostgreSQL: The World's Most Advanced Open Source Relational Database</h1>
    <div class="row">
      <div class="col text-center">
        <a class="btn btn-light btn-rounded" role="button" href="/download/">Download <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
        <a class="btn btn-light btn-rounded" role="button" href="/about/">New to PostgreSQL?</a>
      </div>
    </div>
  </div>
</div>
<!-- END Jumbotron -->
<div class="container margin">
  <!-- Start First Feature Row -->

  <div class="row">
    <!-- Feature -->
    <div class="col-lg-6 feature">
      <img src="/media/img/about/press/elephant.png" alt="PostgreSQL Elephant Logo">
      <h2>New to PostgreSQL?</h2>
      <div class="text">
        <p>
          PostgreSQL is a powerful, open source object-relational database system with over 35 years of active development
          that has earned it a strong reputation for reliability, feature robustness, and performance.
        </p>
        <p>
          There is a wealth of information to be found describing how to <a href="/download/">install</a> and <a href="/docs/">use</a> PostgreSQL through the <a href="/docs/">official documentation</a>.
          The <a href="/community/">open source community</a>
          provides many helpful places to become familiar with PostgreSQL,
          discover how it works, and find career opportunities. Learn more on
          how to <a href="/community/">engage with the community</a>.
        </p>
      </div>
      <a href="/about/" title="Learn More"><button type="button" class="btn btn-center btn-primary btn-inline-block">Learn More</button></a>
      <a href="/about/featurematrix/" title="Feature Matrix"><button type="button" class="btn btn-center btn-primary btn-inline-block">Feature Matrix</button></a>
      <a href="/about/governance/" title="Governance"><button type="button" class="btn btn-center btn-primary btn-inline-block">Governance</button></a>
    </div>
    <!-- END Feature -->

    <!-- Feature -->
    <div class="col-lg-6 feature">
      <i class="fas fa-download"></i>
      <h2>Latest Releases</h2>
      <div class="text">
        <p>
          <strong>
            2025-09-04 -
            <a href="/about/news/postgresql-18-rc-1-released-3130/">
              PostgreSQL 18 RC 1 Released!
            </a>
          </strong>
        </p>
        <p>
          The PostgreSQL Global Development Group announces that the
          <a href="/developer/beta/">first release candidate of PostgreSQL 18</a>
          is now available for <a href="/download/">download</a>. As a release
          candidate, PostgreSQL 18 RC 1 will be mostly identical to the initial release of
          PostgreSQL 18, though some more fixes may be applied prior to the general
          availability of PostgreSQL 18.
        </p>
        <p>
          The planned date for the general availability of PostgreSQL 18 is
          September 25, 2025.
        </p>
        <ul>
          
            <li class=""><strong>17.6</strong> &middot; 2025-08-14 &middot; <a href="/docs/17/release-17-6.html">Notes</a></li>
          
            <li class="pg-bg-gray"><strong>16.10</strong> &middot; 2025-08-14 &middot; <a href="/docs/16/release-16-10.html">Notes</a></li>
          
            <li class=""><strong>15.14</strong> &middot; 2025-08-14 &middot; <a href="/docs/15/release-15-14.html">Notes</a></li>
          
            <li class="pg-bg-gray"><strong>14.19</strong> &middot; 2025-08-14 &middot; <a href="/docs/14/release-14-19.html">Notes</a></li>
          
            <li class=""><strong>13.22</strong> &middot; 2025-08-14 &middot; <a href="/docs/13/release-13-22.html">Notes</a></li>
          
        </ul>
      </div>
      <a href="/download/" title="Download"><button type="button" class="btn btn-center btn-primary">Download</button></a>
      <a href="/support/versioning/" title="Why Upgrade?"><button type="button" class="btn btn-center btn-outline-secondary btn-inline-block">Why Upgrade?</button></a>
      <a href="/support/security/" title="Security"><button type="button" class="btn btn-center btn-outline-secondary btn-inline-block">Security</button></a>
    </div>
    <!-- END Feature -->

  </div>
  <!-- END First Feature Row -->
  <!-- Start Second Feature Row -->
  <div class="row">
    <!-- Feature -->
    <div class="col-lg-6 feature">
      <i class="fas fa-calendar-alt"></i>
      <h2>Upcoming Events</h2>
      <div class="text">
        <ul>
          
            <li class=" ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-09-25 &middot; <a href="/about/event/pgday-napoli-2025-2537/">PGDay Napoli 2025</a>
            </li>
          
            <li class="pg-bg-gray ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-09-29 &ndash; 2025-10-01 &middot; <a href="/about/event/pgconf-nyc-2025-2555/">PGConf NYC 2025</a>
            </li>
          
            <li class=" ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-10-15 &ndash; 2025-10-17 &middot; <a href="/about/event/postgres-ibiza-2025-2561/">Postgres Ibiza 2025</a>
            </li>
          
            <li class="pg-bg-gray ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-10-17 &middot; <a href="/about/event/pg-down-under-2025-2547/">PG Down Under 2025</a>
            </li>
          
            <li class=" ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-10-19 &middot; <a href="/about/event/pgday-israel-2025-2528/">PGDay Israel 2025</a>
            </li>
          
            <li class="pg-bg-gray ">
              
                <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
              
              2025-10-21 &ndash; 2025-10-24 &middot; <a href="/about/event/pgconfeu-2025-2550/">PGConf.EU 2025</a>
            </li>
          
            <li class=" non-badged">
              
              2025-11-20 &middot; <a href="/about/event/postgis-day-2025-2557/">PostGIS Day 2025</a>
            </li>
          
        </ul>
        <p>
          <img src="/media/img/PostgreSQL_Badge1.svg" class="community" alt="PostgreSQL Community Event">
          indicates that an event is recognised under the <a href="/about/policies/conferences/">community event guidelines</a> and is directly helping the PostgreSQL community.
        </p>
      </div>
      <a href="/about/events/" title="Check Schedule"><button type="button" class="btn btn-center btn-primary btn-inline-block">Check Schedule</button></a>
      <a href="/account/events/new/" title="Add Your Event"><button type="button" class="btn btn-center btn-primary btn-inline-block">Add Your Event</button></a>
    </div>
    <!-- END Feature -->
    <!-- Feature -->
    <div class="col-lg-6 feature">
      <i class="fas fa-envelope"></i>
      <h2>Mailing Lists</h2>
      <div class="text">
        <p>
          The PostgreSQL <a href="https://lists.postgresql.org" target="_blank" rel="noopener">mailing lists</a> enable you to interact with active community participants on subjects related to the development of PostgreSQL, discovering how to use PostgreSQL, or learning about upcoming events and product releases.
        </p>
        <p>
          In order to manage your mailing list subscription, you need a <a href="/account/">PostgreSQL community account</a>. <a href="/account/">Signing up</a> is easy and gives you direct access to the <a href="/community/">global PostgreSQL community</a>.
        </p>
      </div>
      <a href="https://lists.postgresql.org" title="Subscribe"><button type="button" class="btn btn-center btn-primary btn-inline-block">Subscribe</button></a>
      <a href="https://www.postgresql.org/list/" title="View Archives"><button type="button" class="btn btn-center btn-outline-secondary btn-inline-block">View Archives</button></a>
    </div>
    <!-- END Feature -->
  </div>
  <!-- END Second Feature Row -->
</div>
<!-- CTA -->
<div class="container-fluid">
  <div class="row">
    <div class="col-lg-6 cta cta-3"></div>
    <div class="col-lg-6 cta-text">
      <h2>Learning Opportunities Ahead</h2>
      <p class="text-left">
        Want to learn more about PostgreSQL and help build the community? Come to one of the many events, local user groups, &amp; training sessions where you can meet experienced PostgreSQL users and enhance your database skills.
      </p>
      <a href="/about/events/" title="Browse Events"><button type="button" class="btn btn-light btn-rounded">Browse Events</button></a>
      <a href="/community/user-groups/" title="Browse User Groups"><button type="button" class="btn btn-light btn-rounded">Browse User Groups</button></a>
    </div>
  </div>
</div>
<!-- END CTA -->
<!-- News -->
<div class="container">
  <div class="row">
    <div class="col-lg-7">
      <h2 class="centered-lines">Latest News</h2>
      <!-- Featured Post -->
        <header>
          <h3>
            <a href="/about/news/postgresql-18-rc-1-released-3130/">
              PostgreSQL 18 RC 1!
            </a>
          </h3>
          <ul class="meta">
            <li><i class="far fa-clock"></i>&nbsp;2025-09-04</li>
            <!--<li><i class="far fa-comments"></i> 0</li>-->
          </ul>
        </header>
        <p>
          The PostgreSQL Global Development Group announces that the
          <a href="/developer/beta/">first release candidate of PostgreSQL 18</a>
          is now available for <a href="/download/">download</a>. As a release
          candidate, PostgreSQL 18 RC 1 will be mostly identical to the initial release of
          PostgreSQL 18, though some more fixes may be applied prior to the general
          availability of PostgreSQL 18.
        </p>
        <p>
          The planned date for the general availability of PostgreSQL 18 is
          September 25, 2025.
        </p>
        <ul class="bold">
          <li><a href="/about/news/postgresql-18-rc-1-released-3130/">Release Announcement</a></li>
          <li><a href="/support/versioning/">Versioning Policy</a>
          <li><a href="/docs/18/release-18.html">Beta Release Notes</a></li>
          <li><a href="/developer/beta/">Beta Testing Information</a></li>
          <li><a href="/download/">Download</a></li>
        </ul>
        <a href="/about/newsarchive/" title="Archives"><button type="button" class="btn btn-primary btn-center btn-inline-block">Browse Archives</button></a>
        <a href="/account/news/new/" title="Submit News"><button type="button" class="btn btn-primary btn-center btn-inline-block">Submit News</button></a>
    </div>
    <div class="col-lg-5">
      <div class="sidebar">

        <!-- Archives -->
        <ul class="divided">
          
            <li>
              <h3><a href="/about/news/pgscv-0150-released-3138/">pgSCV 0.15.0 released!</a></h3>
              <ul class="meta">
                <li><i class="far fa-clock"></i>&nbsp;2025-09-17 by pgSCV</li>
              </ul>
            </li>
          
            <li>
              <h3><a href="/about/news/pgexporter-07-3136/">pgexporter 0.7</a></h3>
              <ul class="meta">
                <li><i class="far fa-clock"></i>&nbsp;2025-09-14 by pgexporter</li>
              </ul>
            </li>
          
            <li>
              <h3><a href="/about/news/pgformatter-v58-has-been-released-3137/">pgFormatter v5.8 has been released</a></h3>
              <ul class="meta">
                <li><i class="far fa-clock"></i>&nbsp;2025-09-14 by HexaCluster</li>
              </ul>
            </li>
          
            <li>
              <h3><a href="/about/news/synchdb-12-released-native-oracle-connector-enhanced-monitoring-quick-deployment-tools-3132/">SynchDB 1.2 Released - Native Oracle Connector, Enhanced Monitoring &amp; Quick Deployment Tools</a></h3>
              <ul class="meta">
                <li><i class="far fa-clock"></i>&nbsp;2025-09-08 by Hornetlabs Technology Inc</li>
              </ul>
            </li>
          
            <li>
              <h3><a href="/about/news/pgconf-india-2026-call-for-papers-3133/">PGConf India 2026: Call for Papers</a></h3>
              <ul class="meta">
                <li><i class="far fa-clock"></i>&nbsp;2025-09-06 by PGConf India</li>
              </ul>
            </li>
          
        </ul>
        <!-- END Archives -->
      </div>
    </div>
  </div>
</div>
<!-- Blog -->
 <div class="container margin">
   <div class="row">
     <div class="col-md-12">
       <h2 class="centered-lines"><span>PLANET POSTGRESQL</span></h2>
       <div class="feature"><i class="fas fa-globe"></i></div>
    </div>
   </div>
   <!-- First Row Planet PostgreSQL -->
   <div class="row">
     <!-- First Column First Row Planet PostgreSQL -->
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cR"> pgwatch v4-beta is out!</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Pavlo Golub</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-18</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cQ"> September PUG recording</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Henrietta Dombrovskaya</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cO"> Waiting for PostgreSQL 19 – Add date and timestamp variants of random(m</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Hubert &#x27;depesz&#x27; Lubaczewski</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cP"> 2025 PostGIS &amp; GEOS Release</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Paul Ramsey</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cN"> Making Postgres scale to zero with CNPG</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Esther Minano</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cM"> Contributions for the week 37</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Floor Drees</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cL"> Reconsidering the interface</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Ants Aasma</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-17</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cK"> PgPedia Week, 2025-09-07</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Ian Barwick</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-16</li>
            </ul>
          </div>
        </div>
      
        <div class="col-md-4">
          <div class="text-center">
            <h3><a href="https://postgr.es/p/7cI"> How to handle &quot;database is not accepting commands&quot;</a></h3>
            <ul class="meta">
              <li><i class="far fa-comments"></i>&nbsp;Laurenz Albe</li>
              <li><i class="far fa-clock"></i>&nbsp;2025-09-16</li>
            </ul>
          </div>
        </div>
      
   </div>
   <!-- END First Row Planet PostgreSQL -->
   <div class="row">
     <div class="col-sm-12">
       <a href="https://planet.postgresql.org" title="Browse Archives" target="_blank" rel="noopener"><button type="button" class="btn btn-center btn-primary">Browse Archives</button></a>
     </div>
   </div>
 </div>
 <!-- SUBMIT A BUG -->
 <div class="container-fluid">
   <div class="row">
     <div class="col-lg-6 cta-text">
       <h2>Seeing unexpected behavior?</h2>
       <p>
         The PostgreSQL community takes pride in releasing software that reliably stores your data. If you believe you've discovered a bug, please click the button below and follow the instructions on how to submit a bug.
       </p>
       <a href="/account/submitbug/" title="Submit a Bug"><button type="button" class="btn btn-light btn-rounded">Submit a Bug</button></a>
     </div>
     <div class="col-lg-6 cta cta-2"></div>
   </div>
 </div>
 <!-- END SUBMIT A BUG -->

    <!-- Footer -->
    <footer id="footer">
      <!-- Copyright -->
      <div class="container">
        <a href="/about/policies/">Policies</a> |
        <a href="/about/policies/coc/">Code of Conduct</a> |
        <a href="/about/">About PostgreSQL</a> |
        <a href="/about/contact/">Contact</a><br/>
        <p>Copyright &copy; 1996-2025 The PostgreSQL Global Development Group</p>
      </div>
    </footer>
    <script src="/media/js/main.js?8fac4673"></script>

  </body>
</html>
