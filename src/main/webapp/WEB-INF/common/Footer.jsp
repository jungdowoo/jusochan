<%@ page contentType="text/html; charset=UTF-8" %>

<style>
    footer.site-footer {
        margin-top: 40px;
        padding: 18px 0 22px;
        background: #0f172a;
        color: rgba(255,255,255,0.85);
        font-size: 12px;
    }

    .footer-inner {
        max-width: 1080px;
        margin: 0 auto;
        padding: 0 20px;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        gap: 20px;
        flex-wrap: wrap;
    }

    .footer-left strong {
        font-weight: 600;
    }

    .footer-links a {
        color: rgba(255,255,255,0.8);
        margin-right: 14px;
        text-decoration: none;
    }

    .footer-links a:hover {
        text-decoration: underline;
    }

    .footer-right {
        text-align: right;
        color: rgba(255,255,255,0.6);
    }

    .footer-right span {
        display: block;
    }
</style>

<footer class="site-footer">
    <div class="footer-inner">
        <div class="footer-left">
            <div><strong>주소챈 Jusochan</strong></div>
            <div class="footer-links">
                <a href="/privacy">개인정보처리방침</a>
                <a href="/terms">이용약관</a>
                <a href="/contact">문의하기</a>
            </div>
        </div>
        <div class="footer-right">
            <span>도로명·지번 주소 다국어 번역 서비스</span>
            <span>© 2025 Jusochan. All rights reserved.</span>
        </div>
    </div>
</footer>
