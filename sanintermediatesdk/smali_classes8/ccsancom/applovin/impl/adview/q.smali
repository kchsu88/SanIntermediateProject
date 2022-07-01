.class public Lccsancom/applovin/impl/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;


# static fields
.field public static volatile b:Z

.field public static volatile c:Z

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/adview/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lccsancom/applovin/impl/sdk/k;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile h:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile i:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile j:Lccsancom/applovin/sdk/AppLovinAdClickListener;

.field private volatile k:Lccsancom/applovin/impl/sdk/a/g;

.field private volatile l:Lccsancom/applovin/impl/sdk/a/g$b;

.field private volatile m:Lccsancom/applovin/impl/adview/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/adview/q;->d:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/applovin/impl/adview/q;->b:Z

    sput-boolean v0, Lccsancom/applovin/impl/adview/q;->c:Z

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p1, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->f:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    sput-boolean p1, Lccsancom/applovin/impl/adview/q;->b:Z

    const/4 p1, 0x0

    sput-boolean p1, Lccsancom/applovin/impl/adview/q;->c:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lccsancom/applovin/impl/adview/q;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/adview/q;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/impl/adview/q;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/q;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/q;->g:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/q$6;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/q$6;-><init>(Lccsancom/applovin/impl/adview/q;I)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lccsanandroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->k:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lccsancom/applovin/adview/AppLovinInterstitialActivity;

    :goto_0
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1, p1, v0}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->e:Ljava/lang/String;

    const-string v2, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.applovin.interstitial.sdk_key"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    sput-object p0, Lccsancom/applovin/impl/adview/p;->lastKnownWrapper:Lccsancom/applovin/impl/adview/q;

    sput-object p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    instance-of v2, p1, Lccsanandroid/app/Activity;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    check-cast p1, Lccsanandroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lccsanandroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    invoke-virtual {p1, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    :goto_1
    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/q;I)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/q;->a(I)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/q;Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/q;->a(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/q;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/q;->b(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/g;Lccsanandroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a;->b()Lccsanandroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/a/g;->b(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->m:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/adview/q;->d:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/q;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eG:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/e/o;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/adview/q$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/q$2;-><init>(Lccsancom/applovin/impl/adview/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->k:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->k:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->q()Lccsancom/applovin/impl/sdk/a/g$b;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/q;->l:Lccsancom/applovin/impl/sdk/a/g$b;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cl:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Presenting ad with delay of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InterstitialAdDialogWrapper"

    invoke-virtual {v2, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lccsancom/applovin/impl/adview/q$3;

    invoke-direct {v2, p0, p2, v0, v1}, Lccsancom/applovin/impl/adview/q$3;-><init>(Lccsancom/applovin/impl/adview/q;Lccsanandroid/content/Context;J)V

    invoke-direct {p0, p1, p2, v2}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/sdk/a/g;Lccsanandroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/g;Lccsanandroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lccsanandroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->ah()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aj()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/app/AlertDialog$Builder;->create()Lccsanandroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/adview/q$4;

    invoke-direct {p2, p0, p3}, Lccsancom/applovin/impl/adview/q$4;-><init>(Lccsancom/applovin/impl/adview/q;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lccsanandroid/app/AlertDialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Lccsanandroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->h:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->h:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method private b(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/q$5;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/q$5;-><init>(Lccsancom/applovin/impl/adview/q;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()Lccsanandroid/content/Context;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lccsancom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public a(Lccsancom/applovin/impl/adview/l;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->m:Lccsancom/applovin/impl/adview/l;

    return-void
.end method

.method protected a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public b()Lccsancom/applovin/impl/sdk/a/g;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->k:Lccsancom/applovin/impl/sdk/a/g;

    return-object v0
.end method

.method public c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->i:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method public d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->h:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method public e()Lccsancom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->j:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method public f()Lccsancom/applovin/impl/sdk/a/g$b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->l:Lccsancom/applovin/impl/sdk/a/g$b;

    return-object v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/applovin/impl/adview/q;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/applovin/impl/adview/q;->c:Z

    sget-object v0, Lccsancom/applovin/impl/adview/q;->d:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/q;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->k:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/q;->m:Lccsancom/applovin/impl/adview/l;

    :cond_0
    return-void
.end method

.method public isAdReadyToDisplay()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->hasPreloadedAd(Lccsancom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->j:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->h:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->g:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q;->i:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/q$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/q$1;-><init>(Lccsancom/applovin/impl/adview/q;)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/q;->h()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    if-eqz v0, :cond_4

    iget-object v2, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->maybeRetrieveNonDummyAd(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object p1, v2

    check-cast p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->hasShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->bS:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to display ad - ad can only be displayed once. Load the next ad."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of p1, v2, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz p1, :cond_2

    check-cast v2, Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v2, v0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/sdk/a/g;Lccsanandroid/content/Context;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show interstitial: unknown ad type provided: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/q;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v2, "Failed to show interstitial: stale activity reference provided"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AppLovinInterstitialAdDialog{}"

    return-object v0
.end method
