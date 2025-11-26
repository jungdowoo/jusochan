<%@ page contentType="text/html; charset=UTF-8" %>

<%-- 공통 스타일: 헤더/푸터/레이아웃 --%>
<style>
    :root {
        --primary: #1450A3;
        --primary-dark: #0b3572;
        --accent: #FFB703;
        --bg: #f4f6fb;
        --text-main: #222;
        --text-sub: #666;
    }

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: "Noto Sans KR", system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        background: var(--bg);
        color: var(--text-main);
    }

    a {
        color: inherit;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    header.site-header {
        position: sticky;
        top: 0;
        z-index: 100;
        background: linear-gradient(90deg, var(--primary-dark), var(--primary));
        color: #fff;
        box-shadow: 0 2px 6px rgba(0,0,0,0.15);
    }

    .header-inner {
        max-width: 1080px;
        margin: 0 auto;
        padding: 12px 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 24px;
    }

    .logo-area {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .logo-mark {
        width: 32px;
        height: 32px;
        border-radius: 10px;
        background: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--primary-dark);
        font-weight: 900;
        font-size: 17px;
    }

    .logo-text-main {
        font-size: 20px;
        font-weight: 700;
    }

    .logo-text-sub {
        font-size: 11px;
        color: rgba(255,255,255,0.8);
        margin-top: 2px;
    }

    .nav-area {
        display: flex;
        align-items: center;
        gap: 18px;
        font-size: 14px;
    }

    .nav-area a {
        opacity: 0.9;
    }

    .nav-area a:hover {
        opacity: 1;
    }

    .nav-pill {
        padding: 6px 12px;
        border-radius: 999px;
        background: rgba(255,255,255,0.12);
        border: 1px solid rgba(255,255,255,0.35);
        font-size: 12px;
    }

    .nav-pill:hover {
        background: rgba(255,255,255,0.25);
    }

    .lang-badge {
        padding: 4px 10px;
        border-radius: 999px;
        background: rgba(0,0,0,0.25);
        font-size: 11px;
        opacity: 0.9;
    }

    .page-main {
        max-width: 1080px;
        margin: 24px auto 40px;
        padding: 0 20px;
    }

    .card {
        background: #fff;
        border-radius: 14px;
        padding: 20px 22px;
        box-shadow: 0 10px 25px rgba(15, 23, 42, 0.08);
    }

    .page-title {
        font-size: 22px;
        font-weight: 700;
        margin: 0 0 4px;
    }

    .page-desc {
        margin: 0 0 18px;
        font-size: 13px;
        color: var(--text-sub);
    }
</style>

<header class="site-header">
    <div class="header-inner">
        <div class="logo-area">
            <div class="logo-mark">주</div>
            <div>
                <div class="logo-text-main">주소챈 Jusochan</div>
                <div class="logo-text-sub">도로명&nbsp;·&nbsp;지번 주소 다국어 번역기</div>
            </div>
        </div>

        <nav class="nav-area">
            <a href="/">홈</a>
            <a href="/translate" class="nav-pill">번역 시작하기</a>
            <a href="/about">서비스 소개</a>
            <span class="lang-badge">KO → EN · JP · ZH</span>
        </nav>
    </div>
</header>
