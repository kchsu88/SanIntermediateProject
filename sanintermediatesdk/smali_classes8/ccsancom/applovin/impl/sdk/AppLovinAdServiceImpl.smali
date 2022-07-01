.class public Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;,
        Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Lccsanandroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/applovin/impl/sdk/a/d;",
            "Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
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
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Lccsanandroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {}, Lccsancom/applovin/impl/sdk/a/d;->g()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/a/d;->h()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/a/d;->i()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/a/d;->j()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/a/d;->k()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    if-nez v1, :cond_0

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz p4, :cond_0

    const/16 v1, 0x64

    if-le p4, v1, :cond_1

    :cond_0
    const/4 p4, 0x0

    :cond_1
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et_s"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "pv"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "vid_ts"

    invoke-virtual {p2, p3, p5}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "uvs"

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unknown error parsing the video end url: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovinAdService"

    invoke-virtual {p3, p4, p1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;JJZI)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "et_ms"

    invoke-virtual {p1, p3, p2}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "vs_ms"

    invoke-virtual {p1, p3, p2}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p1

    sget p2, Lccsancom/applovin/impl/sdk/f;->a:I

    if-eq p7, p2, :cond_0

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_ch"

    invoke-virtual {p1, p3, p2}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    invoke-static {p7}, Lccsancom/applovin/impl/sdk/f;->a(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_st"

    invoke-virtual {p1, p3, p2}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$2;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/sdk/AppLovinAdLoadListener;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lccsanandroid/net/Uri;Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/adview/b;)V
    .locals 2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lccsancom/applovin/adview/AppLovinAdView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->openUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/applovin/impl/sdk/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lccsancom/applovin/impl/adview/b;->g()Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    :cond_0
    invoke-virtual {p4}, Lccsancom/applovin/impl/adview/b;->o()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "AppLovinAdService"

    const-string p3, "Unable to launch click - adView has been prematurely destroyed"

    invoke-virtual {p1, p2, p3}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/c;->b(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using pre-loaded ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinAdService"

    invoke-virtual {p2, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    invoke-virtual {p3, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/applovin/impl/sdk/e/j;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, p2, p3, v1}, Lccsancom/applovin/impl/sdk/e/j;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    :goto_0
    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AppLovinAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading next ad of zone {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    move-result-object v0

    iget-object v1, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean p3, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    if-nez p3, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, v0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    new-instance p3, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v0, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$b;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "AppLovinAdService"

    const-string p3, "Already waiting on an ad load..."

    invoke-virtual {p1, p2, p3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lccsancom/applovin/impl/sdk/d/a;)V
    .locals 4

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->replaceCommonMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->replaceCommonMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object v2

    invoke-static {}, Lccsancom/applovin/impl/sdk/network/g;->o()Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/a;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "AppLovinAdService"

    const-string v1, "Requested a postback dispatch for a null URL; nothing to do..."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/e/a;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppLovinSdk"

    const-string v1, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener)."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, p1, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/d/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/d/a;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/d/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomQueryParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dequeueAd(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/c;->c(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for zone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v1, v2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public getCustomQueryParamsForNextAdRequest()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasPreloadedAd(Lccsancom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->REGULAR:Lccsancom/applovin/sdk/AppLovinAdType;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/a/d;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdType;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/c;->a(Lccsancom/applovin/impl/sdk/a/d;)Z

    move-result p1

    return p1
.end method

.method public hasPreloadedAdForZoneId(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppLovinAdService"

    const-string v0, "Unable to check if ad is preloaded - invalid zone id"

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/c;->a(Lccsancom/applovin/impl/sdk/a/d;)Z

    move-result p1

    return p1
.end method

.method public loadNextAd(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->REGULAR:Lccsancom/applovin/sdk/AppLovinAdType;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/a/d;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdType;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAd(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->REGULAR:Lccsancom/applovin/sdk/AppLovinAdType;

    invoke-static {p2, v0, p1}, Lccsancom/applovin/impl/sdk/a/d;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdType;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAdForAdToken(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x8

    const-string v2, "AppLovinAdService"

    if-eqz v0, :cond_1

    const-string p1, "Invalid ad token specified"

    invoke-static {v2, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void

    :cond_1
    new-instance v0, Lccsancom/applovin/impl/sdk/a/c;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, v3}, Lccsancom/applovin/impl/sdk/a/c;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/c;->b()Lccsancom/applovin/impl/sdk/a/c$a;

    move-result-object p1

    sget-object v3, Lccsancom/applovin/impl/sdk/a/c$a;->b:Lccsancom/applovin/impl/sdk/a/c$a;

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading next ad for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lccsancom/applovin/impl/sdk/e/k;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p1, v0, p2, v1}, Lccsancom/applovin/impl/sdk/e/k;-><init>(Lccsancom/applovin/impl/sdk/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    :goto_1
    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/c;->b()Lccsancom/applovin/impl/sdk/a/c$a;

    move-result-object p1

    sget-object v3, Lccsancom/applovin/impl/sdk/a/c$a;->c:Lccsancom/applovin/impl/sdk/a/c$a;

    if-ne p1, v3, :cond_5

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/c;->d()Lccsanorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5, p1}, Lccsancom/applovin/impl/sdk/utils/g;->h(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5, p1}, Lccsancom/applovin/impl/sdk/utils/g;->d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5, p1}, Lccsancom/applovin/impl/sdk/utils/g;->c(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5, p1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    const-string v1, "ads"

    invoke-static {v5, v1, p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering ad for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5, p1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getZone(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v6

    new-instance v8, Lccsancom/applovin/impl/sdk/a/f$a;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v8, v6, p2, p1}, Lccsancom/applovin/impl/sdk/a/f$a;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    const/4 p1, 0x1

    invoke-virtual {v8, p1}, Lccsancom/applovin/impl/sdk/a/f$a;->a(Z)V

    new-instance p1, Lccsancom/applovin/impl/sdk/e/p;

    sget-object v7, Lccsancom/applovin/impl/sdk/a/b;->f:Lccsancom/applovin/impl/sdk/a/b;

    iget-object v9, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lccsancom/applovin/impl/sdk/e/p;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ad returned from the server for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcc

    invoke-interface {p2, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve ad response JSON from token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ad token specified: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {p2, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :goto_3
    return-void
.end method

.method public loadNextAdForZoneId(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone id specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadNextAdForZoneIds(Ljava/util/List;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/applovin/sdk/AppLovinAdLoadListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->removeTrimmedEmptyStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "AppLovinAdService"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading next ad for zones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/e/i;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/e/i;-><init>(Ljava/util/List;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "No zones were provided"

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x7

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextIncentivizedAd(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next incentivized ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/d;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public preloadAd(Lccsancom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    return-void
.end method

.method public preloadAdForZoneId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAdService{adLoadStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackAndLaunchClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/adview/b;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;Z)V
    .locals 3

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Unable to track ad view click. No ad specified"

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Tracking click on an ad..."

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5, p6}, Lccsancom/applovin/impl/sdk/a/g;->a(Lccsanandroid/graphics/PointF;Z)Ljava/util/List;

    move-result-object p5

    invoke-direct {p0, p5}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    invoke-direct {p0, p4, p1, p2, p3}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsanandroid/net/Uri;Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/adview/b;)V

    return-void
.end method

.method public trackAndLaunchVideoClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;)V
    .locals 3

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Unable to track video click. No ad specified"

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Tracking VIDEO click on an ad..."

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lccsancom/applovin/impl/sdk/a/g;->a(Lccsanandroid/graphics/PointF;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    invoke-virtual {p2}, Lccsancom/applovin/adview/AppLovinAdView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p3, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->openUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Lccsancom/applovin/impl/sdk/k;)Z

    return-void
.end method

.method public trackAppKilled(Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 5

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Unable to track app killed. No ad specified"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Tracking app killed during ad..."

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->as()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/d/a;

    new-instance v1, Lccsancom/applovin/impl/sdk/d/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lccsancom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/d/a;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to track app killed during AD #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Missing app killed tracking URL."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public trackFullScreenAdClosed(Lccsancom/applovin/impl/sdk/a/g;JJZI)V
    .locals 13

    move-object v8, p0

    const-string v9, "AppLovinAdService"

    iget-object v0, v8, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    if-nez p1, :cond_0

    const-string v1, "Unable to track ad closed. No ad specified."

    invoke-virtual {v0, v9, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Tracking ad closed..."

    invoke-virtual {v0, v9, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->ar()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lccsancom/applovin/impl/sdk/d/a;

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJZI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v7}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lccsancom/applovin/impl/sdk/d/a;

    invoke-direct {v1, v12, v0}, Lccsancom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/d/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v8, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to track ad closed for AD #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Missing ad close tracking URL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public trackImpression(Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 3

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Unable to track impression click. No ad specified"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Tracking impression on ad..."

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->at()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsancom/applovin/impl/sdk/a/g;)V

    return-void
.end method

.method public trackVideoEnd(Lccsancom/applovin/impl/sdk/a/g;JIZ)V
    .locals 13

    move-object v7, p0

    const-string v8, "AppLovinAdService"

    iget-object v0, v7, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    if-nez p1, :cond_0

    const-string v1, "Unable to track video end. No ad specified"

    invoke-virtual {v0, v8, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Tracking video end on ad..."

    invoke-virtual {v0, v8, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aq()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lccsancom/applovin/impl/sdk/d/a;

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    move-object v5, v9

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_1

    new-instance v1, Lccsancom/applovin/impl/sdk/d/a;

    invoke-direct {v1, v12, v0}, Lccsancom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/impl/sdk/d/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lccsancom/applovin/impl/sdk/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Requested a postback dispatch for an empty video end URL; nothing to do..."

    invoke-virtual {v0, v8, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to submit persistent postback for AD #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Missing video end tracking URL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
