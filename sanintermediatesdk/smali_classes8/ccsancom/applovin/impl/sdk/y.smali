.class public Lccsancom/applovin/impl/sdk/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/y$a;
    }
.end annotation


# static fields
.field private static a:Lccsanandroid/webkit/WebView;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lccsancom/applovin/impl/sdk/y;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Lccsancom/applovin/impl/sdk/y;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static a(Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->a:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    sput-object v0, Lccsancom/applovin/impl/sdk/y;->a:Lccsanandroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lccsancom/applovin/impl/sdk/y$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/applovin/impl/sdk/y$a;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/y$1;)V

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p0

    const-string v1, "WebViewDataCollector"

    const-string v2, "Failed to initialize WebView for data collection."

    invoke-virtual {p0, v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->c:Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static b(Lccsancom/applovin/impl/sdk/k;)V
    .locals 4

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    sput-object v0, Lccsancom/applovin/impl/sdk/y;->b:Ljava/lang/String;

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/y;

    const/4 v2, 0x1

    new-instance v3, Lccsancom/applovin/impl/sdk/y$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/y$1;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    invoke-direct {v1, p0, v2, v3}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;ZLjava/lang/Runnable;)V

    sget-object p0, Lccsancom/applovin/impl/sdk/e/o$a;->c:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, p0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/applovin/impl/sdk/y$2;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/y$2;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic c()Lccsanandroid/webkit/WebView;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->a:Lccsanandroid/webkit/WebView;

    return-object v0
.end method

.method public static c(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/y;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/sdk/y;->c:Ljava/util/Map;

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lccsancom/applovin/impl/sdk/y$3;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/y$3;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
