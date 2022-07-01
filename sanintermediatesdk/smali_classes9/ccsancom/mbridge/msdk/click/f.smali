.class public Lccsancom/mbridge/msdk/click/f;
.super Ljava/lang/Object;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/click/f$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static final d:Ljava/lang/String;


# instance fields
.field b:Z

.field c:Z

.field private e:I

.field private f:I

.field private g:Lccsanandroid/os/Handler;

.field private h:Lccsancom/mbridge/msdk/b/a;

.field private i:Lccsancom/mbridge/msdk/click/f$a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lccsanandroid/webkit/WebView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lccsancom/mbridge/msdk/click/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lccsancom/mbridge/msdk/click/f;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x3a98

    iput v0, p0, Lccsancom/mbridge/msdk/click/f;->e:I

    .line 33
    const/16 v0, 0xbb8

    iput v0, p0, Lccsancom/mbridge/msdk/click/f;->f:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/f;->p:Z

    .line 340
    new-instance v0, Lccsancom/mbridge/msdk/click/f$4;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/click/f$4;-><init>(Lccsancom/mbridge/msdk/click/f;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->r:Ljava/lang/Runnable;

    .line 349
    new-instance v0, Lccsancom/mbridge/msdk/click/f$5;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/click/f$5;-><init>(Lccsancom/mbridge/msdk/click/f;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->s:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    .line 55
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->h:Lccsancom/mbridge/msdk/b/a;

    .line 56
    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->h:Lccsancom/mbridge/msdk/b/a;

    .line 59
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->h:Lccsancom/mbridge/msdk/b/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->u()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/f;->m:Z

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->h:Lccsancom/mbridge/msdk/b/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->z()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/click/f;->e:I

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->h:Lccsancom/mbridge/msdk/b/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->z()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/click/f;->f:I

    .line 63
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/f;I)I
    .locals 0

    .line 28
    iput p1, p0, Lccsancom/mbridge/msdk/click/f;->o:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/f;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    .line 148
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setCacheMode(I)V

    .line 150
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    new-instance v1, Lccsancom/mbridge/msdk/click/f$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lccsancom/mbridge/msdk/click/f$2;-><init>(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 270
    new-instance p1, Lccsancom/mbridge/msdk/click/f$3;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/click/f$3;-><init>(Lccsancom/mbridge/msdk/click/f;)V

    .line 306
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p2, p1}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 307
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 2

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/click/f$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/f$1;-><init>(Lccsancom/mbridge/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 110
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lccsancom/mbridge/msdk/click/f;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f;->k:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 114
    const/16 p1, 0x7d0

    iput p1, p0, Lccsancom/mbridge/msdk/click/f;->f:I

    .line 115
    iput p1, p0, Lccsancom/mbridge/msdk/click/f;->e:I

    .line 116
    sget-object p1, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f;->k:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/f;->k:Ljava/lang/String;

    const-string v3, "*/*"

    const-string v4, "utf-8"

    move-object v1, p4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/click/f;->m:Z

    if-eqz p1, :cond_2

    .line 120
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p2}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 122
    const-string p2, "Referer"

    iget-object p3, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p2, p4, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {p1, p4}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    if-eqz p2, :cond_3

    .line 132
    const/4 p3, 0x0

    iget-object p4, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {p2, p3, p4, p1, v0}, Lccsancom/mbridge/msdk/click/f$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_3
    goto :goto_1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/f;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/f;->q:Z

    return p1
.end method

.method private b()V
    .locals 0

    .line 369
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->d()V

    .line 370
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->c()V

    .line 371
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/click/f;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/f;->q:Z

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/click/f;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/f;->p:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 378
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/click/f;)V
    .locals 4

    .line 28
    nop

    .line 1310
    sget-object v0, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    monitor-enter v0

    .line 1312
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->b()V

    .line 1313
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    if-eqz v1, :cond_0

    .line 1314
    iget-object v2, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/click/f;->p:Z

    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p0}, Lccsancom/mbridge/msdk/click/f$a;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    :cond_0
    :goto_0
    goto :goto_1

    .line 1318
    :catchall_0
    move-exception p0

    .line 1319
    :try_start_1
    sget-object v1, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1316
    :catch_0
    move-exception p0

    .line 1317
    sget-object v1, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1321
    :goto_1
    monitor-exit v0

    .line 28
    return-void

    .line 1321
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 386
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/click/f;)V
    .locals 4

    .line 28
    nop

    .line 1359
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->c()V

    .line 1360
    nop

    .line 1374
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->s:Ljava/lang/Runnable;

    iget p0, p0, Lccsancom/mbridge/msdk/click/f;->e:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/click/f;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->d()V

    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/click/f;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->c()V

    return-void
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/click/f;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/f;->m:Z

    return p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/click/f;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 28
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/click/f;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->b()V

    return-void
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/click/f;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/click/f;)V
    .locals 4

    .line 28
    nop

    .line 2364
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->d()V

    .line 2365
    nop

    .line 2382
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/f;->g:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->r:Ljava/lang/Runnable;

    iget p0, p0, Lccsancom/mbridge/msdk/click/f;->f:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/click/f;)V
    .locals 4

    .line 28
    nop

    .line 3325
    sget-object v0, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    monitor-enter v0

    .line 3327
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/f;->b()V

    .line 3328
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->l:Lccsanandroid/webkit/WebView;

    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->destroy()V

    .line 3329
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    if-eqz v1, :cond_0

    .line 3330
    iget-object v2, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/click/f;->p:Z

    iget-object p0, p0, Lccsancom/mbridge/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p0}, Lccsancom/mbridge/msdk/click/f$a;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3334
    :catchall_0
    move-exception p0

    .line 3335
    :try_start_1
    sget-object v1, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3332
    :catch_0
    move-exception p0

    .line 3333
    sget-object v1, Lccsancom/mbridge/msdk/click/f;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    :cond_0
    :goto_0
    nop

    .line 3337
    :goto_1
    monitor-exit v0

    .line 28
    return-void

    .line 3337
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/click/f$a;)V
    .locals 0

    .line 86
    if-eqz p5, :cond_0

    .line 89
    iput-object p4, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    .line 93
    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OverrideUrlLoadingListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/click/f$a;)V
    .locals 0

    .line 75
    if-eqz p6, :cond_0

    .line 78
    iput-object p5, p0, Lccsancom/mbridge/msdk/click/f;->k:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lccsancom/mbridge/msdk/click/f;->j:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lccsancom/mbridge/msdk/click/f;->i:Lccsancom/mbridge/msdk/click/f$a;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    .line 82
    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OverrideUrlLoadingListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
