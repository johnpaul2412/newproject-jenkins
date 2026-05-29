<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NexusShop — Premium Commerce</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root {
  --ink: #0c0c0c;
  --ink2: #1a1a1a;
  --ink3: #2a2a2a;
  --surface: #141414;
  --surface2: #1e1e1e;
  --surface3: #252525;
  --border: rgba(255,255,255,0.07);
  --border2: rgba(255,255,255,0.12);
  --gold: #c9a84c;
  --gold2: #e8c56a;
  --gold-dim: rgba(201,168,76,0.12);
  --gold-dim2: rgba(201,168,76,0.2);
  --text: #f0ede6;
  --text2: #a09890;
  --text3: #6a6260;
  --radius: 16px;
  --radius-sm: 10px;
  --container: 1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html,body{height:100%}
body{
  font-family:'DM Sans',system-ui,sans-serif;
  background:var(--ink);
  color:var(--text);
  -webkit-font-smoothing:antialiased;
  line-height:1.5;
}
a{color:inherit;text-decoration:none}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 28px}

::-webkit-scrollbar{width:6px;height:6px}
::-webkit-scrollbar-track{background:var(--ink2)}
::-webkit-scrollbar-thumb{background:var(--ink3);border-radius:3px}

header{
  position:sticky;top:0;z-index:50;
  background:rgba(12,12,12,0.92);
  border-bottom:1px solid var(--border);
  backdrop-filter:blur(20px);
}
.header-inner{
  display:flex;align-items:center;justify-content:space-between;
  gap:16px;padding:16px 0;
}
.brand{
  font-family:'Playfair Display',serif;
  font-size:22px;font-weight:700;letter-spacing:0.01em;
  color:var(--text);
  display:flex;align-items:center;gap:4px;
}
.brand span{color:var(--gold)}
nav ul{
  display:flex;gap:2px;list-style:none;align-items:center;
}
nav ul li a{
  display:flex;align-items:center;gap:7px;
  padding:8px 14px;border-radius:8px;
  font-size:14px;font-weight:500;color:var(--text2);
  transition:color .2s,background .2s;
  letter-spacing:0.01em;
}
nav ul li a:hover{color:var(--text);background:var(--surface2)}
.search{
  display:flex;align-items:center;gap:8px;
  background:var(--surface2);
  border:1px solid var(--border2);
  padding:9px 14px;border-radius:999px;
  min-width:220px;transition:border-color .2s;
}
.search:focus-within{border-color:var(--gold)}
.search input{
  border:0;background:transparent;outline:none;
  font-size:13.5px;color:var(--text);font-family:'DM Sans',sans-serif;
  width:100%;
}
.search input::placeholder{color:var(--text3)}
.search .icon-btn{
  background:transparent;border:0;
  cursor:pointer;color:var(--text3);font-size:14px;
  transition:color .2s;
}
.search .icon-btn:hover{color:var(--gold)}
.header-actions{display:flex;align-items:center;gap:6px}
.hbtn{
  background:transparent;border:1px solid var(--border2);
  cursor:pointer;color:var(--text2);
  width:38px;height:38px;border-radius:10px;
  display:inline-grid;place-items:center;
  font-size:15px;transition:all .2s;
}
.hbtn:hover{border-color:var(--gold);color:var(--gold);background:var(--gold-dim)}
.cart-wrap{position:relative}
.cart-count{
  position:absolute;top:-5px;right:-5px;
  background:var(--gold);color:var(--ink);
  font-size:10px;font-weight:700;
  width:18px;height:18px;border-radius:50%;
  display:grid;place-items:center;
}
.mobile-toggle{
  display:none;background:transparent;border:0;
  font-size:20px;cursor:pointer;color:var(--text2);
}

.hero{
  position:relative;overflow:hidden;
  min-height:520px;
  display:flex;align-items:center;
  background:var(--ink2);
}
.hero-bg{
  position:absolute;inset:0;
  background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
  opacity:0.18;
}
.hero-gradient{
  position:absolute;inset:0;
  background:linear-gradient(90deg, rgba(12,12,12,0.98) 40%, rgba(12,12,12,0.3) 100%);
}
.hero-content{
  position:relative;z-index:2;
  padding:72px 0;max-width:600px;
}
.hero-eyebrow{
  display:inline-flex;align-items:center;gap:8px;
  font-size:12px;letter-spacing:0.18em;text-transform:uppercase;
  color:var(--gold);font-weight:600;margin-bottom:20px;
}
.hero-eyebrow::before{
  content:'';width:32px;height:1px;background:var(--gold);
}
.hero h1{
  font-family:'Playfair Display',serif;
  font-size:clamp(36px,5vw,58px);
  font-weight:700;line-height:1.08;
  letter-spacing:-0.02em;
  color:var(--text);margin-bottom:18px;
}
.hero h1 em{font-style:italic;color:var(--gold)}
.hero p{
  font-size:16px;color:var(--text2);
  max-width:480px;margin-bottom:32px;
  line-height:1.7;font-weight:300;
}
.hero-actions{display:flex;align-items:center;gap:14px;flex-wrap:wrap}
.btn-gold{
  display:inline-flex;align-items:center;gap:10px;
  padding:13px 26px;border-radius:999px;
  background:var(--gold);color:var(--ink);
  font-weight:600;font-size:14px;cursor:pointer;border:0;
  letter-spacing:0.02em;
  transition:all .25s;font-family:'DM Sans',sans-serif;
}
.btn-gold:hover{background:var(--gold2);transform:translateY(-2px)}
.btn-outline{
  display:inline-flex;align-items:center;gap:10px;
  padding:12px 26px;border-radius:999px;
  background:transparent;
  border:1px solid var(--border2);
  color:var(--text);font-weight:500;font-size:14px;cursor:pointer;
  transition:all .25s;font-family:'DM Sans',sans-serif;
}
.btn-outline:hover{border-color:var(--gold);color:var(--gold)}
.hero-stats{
  display:flex;gap:40px;margin-top:48px;padding-top:32px;
  border-top:1px solid var(--border);
}
.stat-num{
  font-family:'Playfair Display',serif;
  font-size:28px;font-weight:700;color:var(--text);
}
.stat-label{font-size:12px;color:var(--text3);margin-top:2px;letter-spacing:0.05em}

.section{padding:64px 0}
.section-header{margin-bottom:40px}
.section-eyebrow{
  font-size:11px;letter-spacing:0.18em;text-transform:uppercase;
  color:var(--gold);font-weight:600;margin-bottom:10px;
  display:flex;align-items:center;gap:8px;
}
.section-eyebrow::before{content:'';width:24px;height:1px;background:var(--gold)}
.section-header h2{
  font-family:'Playfair Display',serif;
  font-size:clamp(26px,3vw,36px);font-weight:700;
  color:var(--text);line-height:1.15;
}
.section-header p{color:var(--text2);margin-top:8px;font-size:15px;font-weight:300}
.section-row{
  display:flex;align-items:flex-end;
  justify-content:space-between;gap:16px;flex-wrap:wrap;
}
.see-all{
  display:inline-flex;align-items:center;gap:6px;
  font-size:13px;font-weight:500;color:var(--gold);
  border-bottom:1px solid transparent;
  transition:border-color .2s;padding-bottom:2px;
}
.see-all:hover{border-color:var(--gold)}

.cat-grid{
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:12px;
}
.cat-card{
  background:var(--surface2);
  border:1px solid var(--border);
  border-radius:var(--radius);
  padding:22px 14px;
  text-align:center;
  cursor:pointer;
  transition:all .25s;
  position:relative;overflow:hidden;
}
.cat-card::before{
  content:'';
  position:absolute;bottom:0;left:0;right:0;height:2px;
  background:var(--gold);transform:scaleX(0);
  transition:transform .25s;
}
.cat-card:hover{
  background:var(--surface3);
  border-color:var(--border2);
  transform:translateY(-4px);
}
.cat-card:hover::before{transform:scaleX(1)}
.cat-icon{
  width:48px;height:48px;border-radius:12px;
  background:var(--gold-dim);
  display:grid;place-items:center;
  margin:0 auto 12px;font-size:20px;color:var(--gold);
  transition:all .25s;
}
.cat-card:hover .cat-icon{background:var(--gold-dim2)}
.cat-card h4{font-size:13px;font-weight:500;color:var(--text);margin-bottom:4px}
.cat-card span{font-size:12px;color:var(--text3)}

.prod-grid{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:20px;
}
.product{
  background:var(--surface2);
  border:1px solid var(--border);
  border-radius:var(--radius);
  overflow:hidden;
  display:flex;flex-direction:column;
  transition:all .3s;
  position:relative;
}
.product:hover{
  border-color:var(--border2);
  transform:translateY(-6px);
  box-shadow:0 24px 60px rgba(0,0,0,0.5);
}
.product-img-wrap{position:relative;overflow:hidden;background:var(--surface3)}
.product img{
  width:100%;height:210px;
  object-fit:cover;display:block;
  transition:transform .5s;
}
.product:hover img{transform:scale(1.06)}
.badge{
  position:absolute;top:12px;left:12px;
  padding:5px 9px;border-radius:6px;
  font-size:11px;font-weight:700;letter-spacing:0.04em;
}
.badge-new{background:var(--gold);color:var(--ink)}
.badge-sale{background:#c0392b;color:#fff}
.wish-btn{
  position:absolute;top:12px;right:12px;
  width:34px;height:34px;border-radius:8px;
  background:rgba(12,12,12,0.7);border:1px solid var(--border2);
  display:grid;place-items:center;cursor:pointer;
  color:var(--text3);font-size:14px;
  transition:all .2s;opacity:0;
}
.product:hover .wish-btn{opacity:1}
.wish-btn:hover{background:rgba(201,168,76,0.15);color:var(--gold);border-color:var(--gold)}
.product-body{padding:16px 18px;flex:1;display:flex;flex-direction:column;gap:8px}
.product-cat{font-size:11px;letter-spacing:0.1em;text-transform:uppercase;color:var(--text3);font-weight:500}
.product h5{font-size:15px;font-weight:500;color:var(--text);line-height:1.3}
.product-meta{display:flex;align-items:center;justify-content:space-between;margin-top:auto;padding-top:8px}
.price{font-size:18px;font-weight:600;color:var(--text);font-family:'Playfair Display',serif}
.old-price{font-size:13px;color:var(--text3);text-decoration:line-through;font-weight:400;font-family:'DM Sans',sans-serif;margin-left:6px}
.rating{display:flex;align-items:center;gap:4px;font-size:12px;color:var(--text3)}
.stars{color:var(--gold);font-size:11px}
.add-btn{
  background:var(--surface3);
  border:1px solid var(--border2);
  color:var(--text);font-size:13px;font-weight:500;
  padding:11px;border-radius:10px;cursor:pointer;
  margin:0 18px 18px;
  width:calc(100% - 36px);
  display:flex;align-items:center;justify-content:center;gap:8px;
  transition:all .22s;font-family:'DM Sans',sans-serif;
}
.add-btn:hover{background:var(--gold);color:var(--ink);border-color:var(--gold)}

.deal-section{background:var(--surface);border-radius:24px;overflow:hidden}
.deal-grid{display:grid;grid-template-columns:1fr 1fr}
.deal-img{position:relative;overflow:hidden;min-height:400px}
.deal-img img{width:100%;height:100%;object-fit:cover;display:block;filter:brightness(0.85)}
.deal-img-overlay{
  position:absolute;inset:0;
  background:linear-gradient(90deg,transparent 40%,var(--surface) 100%);
}
.deal-content{padding:52px 48px;display:flex;flex-direction:column;justify-content:center}
.deal-tag{
  display:inline-flex;align-items:center;gap:6px;
  background:rgba(192,57,43,0.15);
  color:#e74c3c;border:1px solid rgba(192,57,43,0.25);
  font-size:11px;font-weight:700;letter-spacing:0.1em;text-transform:uppercase;
  padding:6px 12px;border-radius:6px;margin-bottom:18px;width:fit-content;
}
.deal-content h3{
  font-family:'Playfair Display',serif;
  font-size:clamp(28px,3vw,42px);font-weight:700;
  color:var(--text);line-height:1.1;margin-bottom:10px;
}
.deal-content p{color:var(--text2);font-weight:300;margin-bottom:24px;font-size:15px;line-height:1.6}
.timer{display:flex;gap:10px;margin-bottom:28px}
.time-box{
  background:var(--ink2);border:1px solid var(--border2);
  border-radius:12px;padding:14px 18px;text-align:center;min-width:72px;
}
.time-val{
  font-family:'Playfair Display',serif;
  font-size:26px;font-weight:700;color:var(--text);line-height:1;
}
.time-label{font-size:10px;color:var(--text3);margin-top:4px;letter-spacing:0.08em;text-transform:uppercase}
.deal-price{display:flex;align-items:baseline;gap:10px;margin-bottom:8px}
.deal-price .price{font-size:32px}
.deal-disc{
  background:rgba(192,57,43,0.15);color:#e74c3c;
  font-weight:700;font-size:13px;padding:5px 10px;border-radius:6px;
}
.deal-stock{font-size:13px;color:var(--text3);margin-bottom:24px}
.deal-stock strong{color:var(--gold)}

.testi-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.testi{
  background:var(--surface2);
  border:1px solid var(--border);
  border-radius:var(--radius);
  padding:24px;
  position:relative;
}
.testi::before{
  content:'"';
  position:absolute;top:18px;right:22px;
  font-family:'Playfair Display',serif;
  font-size:80px;line-height:1;
  color:var(--gold-dim2);pointer-events:none;
  font-weight:700;
}
.testi-stars{color:var(--gold);font-size:14px;margin-bottom:12px}
.testi p{font-size:14px;color:var(--text2);line-height:1.7;font-weight:300;margin-bottom:20px}
.testi-author{display:flex;align-items:center;gap:12px}
.testi-avatar{
  width:42px;height:42px;border-radius:50%;
  border:2px solid var(--border2);overflow:hidden;flex-shrink:0;
}
.testi-avatar img{width:100%;height:100%;object-fit:cover}
.testi-name{font-size:14px;font-weight:500;color:var(--text)}
.testi-role{font-size:12px;color:var(--text3)}

.newsletter{
  background:linear-gradient(135deg,var(--surface2) 0%,var(--surface3) 100%);
  border:1px solid var(--border2);
  border-radius:24px;
  padding:56px 40px;
  text-align:center;
  position:relative;overflow:hidden;
}
.newsletter::before{
  content:'';position:absolute;
  top:-80px;left:50%;transform:translateX(-50%);
  width:360px;height:360px;border-radius:50%;
  background:radial-gradient(var(--gold-dim2),transparent 70%);
  pointer-events:none;
}
.newsletter h3{
  font-family:'Playfair Display',serif;
  font-size:clamp(24px,3vw,34px);font-weight:700;
  color:var(--text);margin-bottom:10px;position:relative;
}
.newsletter p{color:var(--text2);margin-bottom:28px;font-weight:300;position:relative}
.newsletter-form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap;position:relative}
.newsletter-form input{
  padding:13px 20px;border-radius:999px;
  background:var(--ink2);border:1px solid var(--border2);
  color:var(--text);font-family:'DM Sans',sans-serif;font-size:14px;
  outline:none;width:320px;max-width:100%;
  transition:border-color .2s;
}
.newsletter-form input:focus{border-color:var(--gold)}
.newsletter-form input::placeholder{color:var(--text3)}
#newsletterMsg{margin-top:12px;font-size:13px}

footer{border-top:1px solid var(--border);padding:52px 0 28px;color:var(--text3);font-size:14px}
.footer-grid{
  display:grid;
  grid-template-columns:1.5fr repeat(3,1fr);
  gap:40px;margin-bottom:40px;
}
.footer-brand{font-family:'Playfair Display',serif;font-size:20px;color:var(--text);margin-bottom:12px}
.footer-brand span{color:var(--gold)}
.footer-desc{color:var(--text3);line-height:1.7;font-weight:300;font-size:13px;margin-bottom:20px}
.social-links{display:flex;gap:8px}
.social-link{
  width:36px;height:36px;border-radius:8px;
  border:1px solid var(--border2);
  display:grid;place-items:center;
  color:var(--text3);font-size:14px;
  transition:all .2s;
}
.social-link:hover{border-color:var(--gold);color:var(--gold);background:var(--gold-dim)}
.footer-col h5{
  font-size:13px;font-weight:600;color:var(--text);
  letter-spacing:0.06em;text-transform:uppercase;margin-bottom:16px;
}
.footer-links{display:flex;flex-direction:column;gap:10px}
.footer-links a{font-size:13px;color:var(--text3);font-weight:300;transition:color .2s}
.footer-links a:hover{color:var(--text)}
.footer-bottom{
  border-top:1px solid var(--border);
  padding-top:24px;
  display:flex;align-items:center;justify-content:space-between;
  flex-wrap:wrap;gap:12px;
}
.footer-bottom a{color:var(--text3);transition:color .2s}
.footer-bottom a:hover{color:var(--text)}

#mobileMenu{
  display:none;
  background:var(--ink2);
  border-top:1px solid var(--border);
  padding:16px 28px 20px;
}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu ul li a{
  display:block;padding:10px 14px;border-radius:8px;
  color:var(--text2);font-weight:500;font-size:15px;transition:all .2s;
}
#mobileMenu ul li a:hover{background:var(--surface2);color:var(--text)}

@keyframes fadeUp{from{opacity:0;transform:translateY(20px)}to{opacity:1;transform:translateY(0)}}
.hero-content{animation:fadeUp .6s ease both}

@media(max-width:1100px){
  .cat-grid{grid-template-columns:repeat(3,1fr)}
  .prod-grid{grid-template-columns:repeat(3,1fr)}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:860px){
  nav.main-nav{display:none}
  .mobile-toggle{display:inline-flex}
  .search{min-width:160px}
  .prod-grid{grid-template-columns:repeat(2,1fr)}
  .cat-grid{grid-template-columns:repeat(2,1fr)}
  .deal-grid{grid-template-columns:1fr}
  .testi-grid{grid-template-columns:1fr 1fr}
  .deal-img{min-height:260px}
  .deal-img-overlay{background:linear-gradient(0deg,var(--surface) 0%,transparent 60%)}
}
@media(max-width:600px){
  .hero h1{font-size:32px}
  .hero-stats{gap:24px}
  .prod-grid{grid-template-columns:1fr}
  .cat-grid{grid-template-columns:repeat(2,1fr)}
  .testi-grid{grid-template-columns:1fr}
  .footer-grid{grid-template-columns:1fr}
  .deal-content{padding:28px 24px}
  .newsletter{padding:36px 20px}
}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#">Nexus<span>Shop</span></a>
    </div>
    <nav class="main-nav" aria-label="Primary">
      <ul>
        <li><a href="#"><i class="fas fa-home" style="font-size:13px"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large" style="font-size:13px"></i> Categories</a></li>
        <li><a href="#trending"><i class="fas fa-fire" style="font-size:13px"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag" style="font-size:13px"></i> Deals</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px">
      <div class="search" role="search">
        <i class="fas fa-search" style="font-size:13px;color:var(--text3)"></i>
        <input type="search" id="searchInput" placeholder="Search products…"/>
        <button class="icon-btn" id="searchBtn" aria-label="Go"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <button class="hbtn" title="Account"><i class="far fa-user"></i></button>
        <button class="hbtn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="hbtn" id="cartBtn" title="Cart">
            <i class="fas fa-shopping-bag"></i>
          </button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#trending">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>

<section class="hero" role="banner">
  <div class="hero-bg"></div>
  <div class="hero-gradient"></div>
  <div class="container hero-content">
    <div class="hero-eyebrow">New Season 2025</div>
    <h1>Premium Picks,<br><em>Curated</em> for You</h1>
    <p>Discover the finest selection in fashion, technology and accessories — thoughtfully curated with exclusive deals and free delivery on orders over $75.</p>
    <div class="hero-actions">
      <button class="btn-gold" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
      <button class="btn-outline" id="exploreDeals"><i class="fas fa-tag"></i> Flash Sale</button>
    </div>
    <div class="hero-stats">
      <div><div class="stat-num">50K+</div><div class="stat-label">Products</div></div>
      <div><div class="stat-num">200K+</div><div class="stat-label">Customers</div></div>
      <div><div class="stat-num">4.9 ★</div><div class="stat-label">Avg Rating</div></div>
    </div>
  </div>
</section>

<section class="section container" id="categories" aria-labelledby="cat-title">
  <div class="section-header section-row">
    <div>
      <div class="section-eyebrow">Browse</div>
      <h2 id="cat-title">Shop by Category</h2>
      <p>Explore our curated range across six collections.</p>
    </div>
    <a class="see-all" href="#">View all <i class="fas fa-arrow-right" style="font-size:11px"></i></a>
  </div>
  <div class="cat-grid" id="categoriesGrid"></div>
</section>

<section class="section container" id="trending" aria-labelledby="prod-title">
  <div class="section-header section-row">
    <div>
      <div class="section-eyebrow">Popular</div>
      <h2 id="prod-title">Trending Products</h2>
      <p>Hand-picked based on what's selling right now.</p>
    </div>
    <a class="see-all" href="#">All products <i class="fas fa-arrow-right" style="font-size:11px"></i></a>
  </div>
  <div class="prod-grid" id="productsGrid"></div>
</section>

<section class="section container" id="deals" aria-labelledby="deals-title">
  <div class="section-header">
    <div class="section-eyebrow">Limited Time</div>
    <h2 id="deals-title">Flash Sale</h2>
  </div>
  <div class="deal-section">
    <div class="deal-grid">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
        <div class="deal-img-overlay"></div>
      </div>
      <div class="deal-content">
        <div class="deal-tag"><i class="fas fa-bolt"></i> Flash Deal</div>
        <h3>MacBook Air M2</h3>
        <p>Thin, impossibly light, and powered by M2. Redefining what a laptop can do.</p>
        <div class="timer">
          <div class="time-box"><div class="time-val" id="dealDays">0</div><div class="time-label">Days</div></div>
          <div class="time-box"><div class="time-val" id="dealHours">00</div><div class="time-label">Hours</div></div>
          <div class="time-box"><div class="time-val" id="dealMinutes">00</div><div class="time-label">Mins</div></div>
          <div class="time-box"><div class="time-val" id="dealSeconds">00</div><div class="time-label">Secs</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999 <span class="old-price">$1,199</span></span>
          <span class="deal-disc">–17%</span>
        </div>
        <p class="deal-stock">Only <strong>12</strong> units remaining at this price.</p>
        <button class="btn-gold" id="buyDeal"><i class="fas fa-shopping-bag"></i> Buy Now</button>
      </div>
    </div>
  </div>
</section>

<section class="section container" aria-labelledby="test-title">
  <div class="section-header section-row">
    <div>
      <div class="section-eyebrow">Reviews</div>
      <h2 id="test-title">What Customers Say</h2>
      <p>Real feedback from verified shoppers.</p>
    </div>
  </div>
  <div class="testi-grid">
    <div class="testi">
      <div class="testi-stars">★★★★★</div>
      <p>"Fast shipping and exceptional customer support. The product far exceeded my expectations — I'll definitely be ordering again."</p>
      <div class="testi-author">
        <div class="testi-avatar"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava"></div>
        <div><div class="testi-name">Ava Martin</div><div class="testi-role">Verified buyer</div></div>
      </div>
    </div>
    <div class="testi">
      <div class="testi-stars">★★★★☆</div>
      <p>"Great selection and the checkout was seamless. I found everything I was looking for at a great price. Will definitely shop again."</p>
      <div class="testi-author">
        <div class="testi-avatar"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael"></div>
        <div><div class="testi-name">Michael Lee</div><div class="testi-role">Frequent buyer</div></div>
      </div>
    </div>
    <div class="testi">
      <div class="testi-stars">★★★★★</div>
      <p>"The quality is outstanding and delivery was super fast. NexusShop has become my go-to store for all things tech and style."</p>
      <div class="testi-author">
        <div class="testi-avatar"><img src="https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?auto=format&fit=crop&w=80&q=80" alt="Priya"></div>
        <div><div class="testi-name">Priya Sharma</div><div class="testi-role">Verified buyer</div></div>
      </div>
    </div>
  </div>
</section>

<section class="section container">
  <div class="newsletter">
    <h3>Stay in the Loop</h3>
    <p>Get exclusive offers and new arrivals before anyone else.</p>
    <form class="newsletter-form" id="newsletterForm" onsubmit="return false">
      <input type="email" id="newsletterEmail" placeholder="your@email.com" aria-label="Email address" required>
      <button class="btn-gold" type="submit">Subscribe</button>
    </form>
    <div id="newsletterMsg"></div>
  </div>
</section>

</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="footer-brand">Nexus<span>Shop</span></div>
        <p class="footer-desc">A modern premium commerce experience — curated products, fast delivery, and world-class service.</p>
        <div class="social-links">
          <a class="social-link" href="#"><i class="fab fa-facebook-f"></i></a>
          <a class="social-link" href="#"><i class="fab fa-twitter"></i></a>
          <a class="social-link" href="#"><i class="fab fa-instagram"></i></a>
          <a class="social-link" href="#"><i class="fab fa-pinterest-p"></i></a>
        </div>
      </div>
      <div class="footer-col">
        <h5>Company</h5>
        <div class="footer-links">
          <a href="#">About Us</a><a href="#">Careers</a><a href="#">Press</a><a href="#">Blog</a>
        </div>
      </div>
      <div class="footer-col">
        <h5>Support</h5>
        <div class="footer-links">
          <a href="#">Help Center</a><a href="#">Shipping & Returns</a><a href="#">Track Order</a><a href="#">Contact</a>
        </div>
      </div>
      <div class="footer-col">
        <h5>Legal</h5>
        <div class="footer-links">
          <a href="#">Privacy Policy</a><a href="#">Terms of Service</a><a href="#">Cookie Policy</a>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div>© <span id="year"></span> NexusShop. All rights reserved.</div>
      <div style="display:flex;gap:20px">
        <a href="#">Privacy</a><a href="#">Terms</a><a href="#">Sitemap</a>
      </div>
    </div>
  </div>
</footer>

<script>
const CATEGORIES=[
  {id:'phones',name:'Smartphones',icon:'fa-mobile-alt',count:'142 items'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop',count:'89 items'},
  {id:'clothing',name:'Clothing',icon:'fa-tshirt',count:'310 items'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:'204 items'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:'167 items'},
  {id:'accessories',name:'Accessories',icon:'fa-watch',count:'285 items'}
];
const PRODUCTS=[
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',badgeType:'new',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-13%',badgeType:'sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',category:'footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'-20%',badgeType:'sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'gadgets'}
];

const categoriesGrid=document.getElementById('categoriesGrid');
const productsGrid=document.getElementById('productsGrid');
const cartCountEl=document.getElementById('cartCount');
const searchInput=document.getElementById('searchInput');
let cartCount=0;

function escHtml(s){return String(s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]))}

function renderCategories(){
  categoriesGrid.innerHTML='';
  CATEGORIES.forEach(cat=>{
    const el=document.createElement('div');
    el.className='cat-card';
    el.innerHTML=`<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><span>${cat.count}</span>`;
    el.addEventListener('click',()=>{
      searchInput.value=cat.name;
      filterProducts(cat.name);
      document.getElementById('prod-title').scrollIntoView({behavior:'smooth',block:'start'});
    });
    categoriesGrid.appendChild(el);
  });
}

function stars(n){return'★'.repeat(Math.round(n))+'☆'.repeat(5-Math.round(n))}

function renderProducts(list){
  productsGrid.innerHTML='';
  if(!list.length){
    productsGrid.innerHTML='<div style="grid-column:1/-1;text-align:center;padding:48px;color:var(--text3)">No products found.</div>';
    return;
  }
  list.forEach(p=>{
    const el=document.createElement('article');
    el.className='product';
    el.innerHTML=`
      <div class="product-img-wrap">
        <img src="${p.img}" alt="${escHtml(p.title)}" loading="lazy">
        ${p.badge?`<span class="badge ${p.badgeType==='sale'?'badge-sale':'badge-new'}">${p.badge}</span>`:''}
        <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      </div>
      <div class="product-body">
        <div class="product-cat">${p.category}</div>
        <h5>${escHtml(p.title)}</h5>
        <div class="product-meta">
          <div><span class="price">$${p.price.toLocaleString()}${p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:''}</span></div>
          <div class="rating"><span class="stars">${stars(p.rating)}</span> <span>(${p.reviews})</span></div>
        </div>
      </div>
      <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
    `;
    productsGrid.appendChild(el);
  });
  productsGrid.querySelectorAll('.add-btn').forEach(btn=>{
    btn.addEventListener('click',()=>addToCart(Number(btn.dataset.id)));
  });
}

function addToCart(id){
  const p=PRODUCTS.find(x=>x.id===id);if(!p)return;
  cartCount++;cartCountEl.textContent=cartCount;
  const btn=document.querySelector(`.add-btn[data-id="${id}"]`);
  if(btn){
    const orig=btn.innerHTML;
    btn.innerHTML='<i class="fas fa-check"></i> Added!';
    btn.disabled=true;
    btn.style.background='var(--gold)';btn.style.color='var(--ink)';btn.style.borderColor='var(--gold)';
    setTimeout(()=>{btn.innerHTML=orig;btn.disabled=false;btn.style.cssText='';},1400);
  }
}

function filterProducts(q){
  const s=String(q||'').trim().toLowerCase();
  renderProducts(s?PRODUCTS.filter(p=>p.title.toLowerCase().includes(s)||p.category.toLowerCase().includes(s)):PRODUCTS);
}

document.getElementById('searchBtn').addEventListener('click',()=>filterProducts(searchInput.value));
searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterProducts(e.target.value)});

document.getElementById('mobileToggle').addEventListener('click',()=>{
  const m=document.getElementById('mobileMenu');
  m.style.display=m.style.display==='block'?'none':'block';
});

document.getElementById('newsletterForm').addEventListener('submit',e=>{
  e.preventDefault();
  const email=document.getElementById('newsletterEmail').value.trim();
  const msg=document.getElementById('newsletterMsg');
  if(!email||!email.includes('@')){msg.textContent='Please enter a valid email.';msg.style.color='#e74c3c';msg.style.display='block';return;}
  msg.textContent="You're subscribed! Welcome to the family.";
  msg.style.color='var(--gold)';msg.style.display='block';
  document.getElementById('newsletterEmail').value='';
  setTimeout(()=>msg.style.display='none',4000);
});

(function dealTimer(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const d=target-Date.now();if(d<=0)return;
    document.getElementById('dealDays').textContent=Math.floor(d/86400000);
    document.getElementById('dealHours').textContent=String(Math.floor((d%86400000)/3600000)).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(Math.floor((d%3600000)/60000)).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(Math.floor((d%60000)/1000)).padStart(2,'0');
  }
  tick();setInterval(tick,1000);
})();

document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('prod-title').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{
  cartCount++;cartCountEl.textContent=cartCount;
  const b=document.getElementById('buyDeal');
  b.innerHTML='<i class="fas fa-check"></i> Added!';
  setTimeout(()=>b.innerHTML='<i class="fas fa-shopping-bag"></i> Buy Now',1500);
});

renderCategories();
renderProducts(PRODUCTS);
document.getElementById('year').textContent=new Date().getFullYear();
</script>
</body>
</html>
