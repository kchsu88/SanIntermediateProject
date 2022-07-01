.class public Lccsancom/applovin/impl/adview/w;
.super Lccsanandroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/w$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/r;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/impl/adview/w$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/w;->a:Lccsancom/applovin/impl/sdk/r;

    return-void
.end method

.method private a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/w;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing click on ad URL \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewButtonClient"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    instance-of v0, p1, Lccsancom/applovin/impl/adview/v;

    if-eqz v0, :cond_3

    check-cast p1, Lccsancom/applovin/impl/adview/v;

    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lccsancom/applovin/impl/adview/w;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/applovin/impl/adview/w$a;

    const-string v5, "applovin"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.applovin.sdk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "/track_click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4, p1}, Lccsancom/applovin/impl/adview/w$a;->a(Lccsancom/applovin/impl/adview/v;)V

    goto :goto_0

    :cond_0
    const-string v1, "/close_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4, p1}, Lccsancom/applovin/impl/adview/w$a;->b(Lccsancom/applovin/impl/adview/v;)V

    goto :goto_0

    :cond_1
    const-string v1, "/skip_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4, p1}, Lccsancom/applovin/impl/adview/w$a;->c(Lccsancom/applovin/impl/adview/v;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/w;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/w;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/impl/adview/w$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/adview/w;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/w;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
