.class public Lccsancom/applovin/impl/adview/v;
.super Lccsancom/applovin/impl/adview/i;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/adview/w;Lccsanandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/adview/i;-><init>(Lccsanandroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/adview/v;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/v;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/v;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    new-instance p1, Lccsanandroid/webkit/WebChromeClient;

    invoke-direct {p1}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/v;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/adview/v;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/adview/v;->setHorizontalScrollBarEnabled(Z)V

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/v;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v1, "/"

    const-string/jumbo v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lccsancom/applovin/impl/adview/v;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
