.class public Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;
.super Lccsanandroid/app/Activity;
.source "DomainMBCommonActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private c:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

.field private d:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->a:Ljava/lang/String;

    .line 68
    new-instance v0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;-><init>(Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->d:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    return-void
.end method

.method private a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 91
    const-string v0, "http"

    const-string v1, "MBCommonActivity"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    return v2

    .line 95
    :cond_0
    nop

    .line 97
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "https"

    const/4 v6, 0x1

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 100
    :goto_1
    if-eqz v4, :cond_3

    .line 101
    return v2

    .line 104
    :cond_3
    invoke-virtual {v3}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 105
    invoke-static {p2, v6}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 108
    :try_start_2
    invoke-virtual {v3}, Lccsanandroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 110
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 111
    invoke-virtual {p0, v3, v2}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->startActivityForResult(Lccsanandroid/content/Intent;I)V

    .line 112
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    return v6

    .line 117
    :cond_4
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v4

    .line 116
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    :goto_2
    :try_start_4
    const-string v4, "browser_fallback_url"

    invoke-virtual {v3, v4}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 122
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 124
    :goto_4
    if-eqz v0, :cond_7

    .line 125
    invoke-virtual {p1, v3}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    return v2

    .line 129
    :cond_7
    move-object p2, v3

    .line 133
    :cond_8
    goto :goto_5

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_9
    :goto_5
    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/click/b;->d(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 137
    const-string p1, "openDeepLink"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 139
    return v6

    .line 141
    :cond_a
    return v2

    .line 143
    :catchall_2
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return v2
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 32
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    .line 35
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 38
    :cond_0
    nop

    .line 1042
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->a:Ljava/lang/String;

    .line 1044
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1045
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v0, "mvcommon"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1047
    new-instance p1, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p1, p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->c:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    .line 1048
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->d:Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->setListener(Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;)V

    .line 1049
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->c:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    .line 1051
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->c:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    if-eqz p1, :cond_2

    .line 1052
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->setContentView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 1055
    :cond_1
    const/4 p1, 0x0

    const-string v0, "Error: no data"

    invoke-static {p0, v0, p1}, Lccsanandroid/widget/Toast;->makeText(Lccsanandroid/content/Context;Ljava/lang/CharSequence;I)Lccsanandroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/widget/Toast;->show()V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 61
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->c:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->destroy()V

    .line 66
    :cond_0
    return-void
.end method
