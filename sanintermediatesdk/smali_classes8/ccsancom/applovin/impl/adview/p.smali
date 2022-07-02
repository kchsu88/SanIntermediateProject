.class public abstract Lccsancom/applovin/impl/adview/p;
.super Lccsanandroid/app/Activity;

# interfaces
.implements Lccsancom/applovin/impl/adview/l;
.implements Lccsancom/applovin/impl/sdk/f$a;


# static fields
.field public static volatile lastKnownWrapper:Lccsancom/applovin/impl/adview/q;


# instance fields
.field private final A:Lccsanandroid/os/Handler;

.field private final B:Lccsanandroid/os/Handler;

.field private C:Lccsanandroid/widget/FrameLayout;

.field private D:Lccsancom/applovin/impl/adview/j;

.field private E:Lccsanandroid/view/View;

.field private F:Lccsancom/applovin/impl/adview/j;

.field private G:Lccsanandroid/view/View;

.field private H:Lccsancom/applovin/impl/adview/h;

.field private I:Lccsanandroid/widget/ImageView;

.field private J:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lccsancom/applovin/impl/sdk/b/b;

.field private L:Lccsancom/applovin/impl/adview/v;

.field private M:Lccsanandroid/widget/ProgressBar;

.field private N:Lccsancom/applovin/impl/adview/w$a;

.field private O:Lccsancom/applovin/impl/adview/a;

.field private P:Lccsancom/applovin/impl/sdk/utils/m;

.field private Q:Lccsancom/applovin/impl/sdk/utils/a;

.field private R:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

.field private a:Lccsancom/applovin/impl/adview/o;

.field private b:Lccsancom/applovin/impl/adview/q;

.field private c:Lccsancom/applovin/impl/sdk/d/d;

.field protected computedLengthSeconds:I

.field protected countdownManager:Lccsancom/applovin/impl/adview/k;

.field public volatile currentAd:Lccsancom/applovin/impl/sdk/a/g;

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private volatile l:Z

.field public logger:Lccsancom/applovin/impl/sdk/r;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J

.field protected volatile postitialWasDisplayed:Z

.field private q:J

.field private r:J

.field private s:J

.field public sdk:Lccsancom/applovin/impl/sdk/k;

.field private t:I

.field private u:I

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected volatile videoMuted:Z

.field public videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lccsancom/applovin/impl/adview/p;->lastKnownWrapper:Lccsancom/applovin/impl/adview/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->d:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->e:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->f:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->g:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->h:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->i:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->j:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->k:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->m:Z

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->n:Z

    iput v0, p0, Lccsancom/applovin/impl/adview/p;->computedLengthSeconds:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsancom/applovin/impl/adview/p;->o:J

    iput-wide v1, p0, Lccsancom/applovin/impl/adview/p;->p:J

    iput-wide v1, p0, Lccsancom/applovin/impl/adview/p;->q:J

    iput-wide v1, p0, Lccsancom/applovin/impl/adview/p;->r:J

    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lccsancom/applovin/impl/adview/p;->s:J

    iput v0, p0, Lccsancom/applovin/impl/adview/p;->t:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lccsancom/applovin/impl/adview/p;->u:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v0, Lccsancom/applovin/impl/sdk/f;->a:I

    iput v0, p0, Lccsancom/applovin/impl/adview/p;->y:I

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->A:Lccsanandroid/os/Handler;

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->J:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private A()V
    .locals 3

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->M()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->pauseReportRewardTask()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "Prompting incentivized ad close warning"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->skipVideo()V

    :goto_0
    return-void
.end method

.method static synthetic A(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic B(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    return-object p0
.end method

.method private B()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/o;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "javascript:al_onCloseButtonTapped();"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "Prompting incentivized non-video ad close warning"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    :goto_0
    return-void
.end method

.method static synthetic C(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/v;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    return-object p0
.end method

.method private C()Z
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->isFullyWatched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bp:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D()Z
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bu:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic D(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/p;->e:Z

    return p0
.end method

.method private E()I
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v0, v0, Lccsancom/applovin/impl/sdk/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->l()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v0

    long-to-float v0, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/applovin/impl/adview/p;->o:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->millisToSeconds(J)D

    move-result-wide v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic E(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/q;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    return-object p0
.end method

.method static synthetic F(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->O()V

    return-void
.end method

.method private F()Z
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->E()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->P()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic G(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/o;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    return-object p0
.end method

.method private G()Z
    .locals 2

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private H()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ad()I

    move-result v0

    if-ltz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->P:Lccsancom/applovin/impl/sdk/utils/m;

    if-nez v0, :cond_8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->isVastAd()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v0, Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->l()Lccsancom/applovin/impl/a/j;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/j;->b()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/j;->b()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    if-lez v1, :cond_3

    int-to-long v4, v1

    add-long/2addr v2, v4

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->u()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_7

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v0, v0, Lccsancom/applovin/impl/sdk/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    if-lez v1, :cond_5

    int-to-long v4, v1

    add-long/2addr v2, v4

    :cond_5
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->l()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_6

    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->u()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    long-to-double v0, v2

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->ad()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    :goto_3
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling report reward in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InterActivity"

    invoke-virtual {v2, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/adview/p$17;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$17;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->P:Lccsancom/applovin/impl/sdk/utils/m;

    :cond_8
    return-void
.end method

.method private J()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    if-eqz v0, :cond_9

    new-instance v1, Lccsancom/applovin/impl/adview/p$18;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$18;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/o;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    new-instance v1, Lccsancom/applovin/impl/adview/p$19;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$19;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/o;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->b()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lccsancom/applovin/impl/sdk/a/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/a/g;->setHasShown(Z)V

    :cond_0
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Lccsancom/applovin/impl/adview/k;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->A:Lccsanandroid/os/Handler;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/impl/adview/k;-><init>(Lccsanandroid/os/Handler;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->j()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->f()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    const-string v1, "InterActivity"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing stream for "

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing cached video playback for "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/a/g;->h()Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/d;->b(J)V

    :cond_3
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->i()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->h()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/net/Uri;)V

    if-nez v0, :cond_4

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->I()V

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lccsanandroid/view/View;->bringToFront()V

    :cond_5
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    :cond_6
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/o;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/o;->renderAd(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->H()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->d(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_8
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->showPostitial()V

    goto :goto_2

    :cond_9
    const-string v0, "AdView was null"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/p;->exitWithError(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->aM()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getVideoPercentViewed()I

    move-result v1

    iput v1, p0, Lccsancom/applovin/impl/adview/p;->t:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :cond_1
    :goto_1
    return-void
.end method

.method private L()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    return v0
.end method

.method private M()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/d;->u:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->v:Lccsancom/applovin/impl/sdk/c/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "InterActivity"

    const-string v3, "Unable to pause countdown timers"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    :cond_1
    return-void
.end method

.method private N()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v4, "InterActivity"

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming video with delay of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v3, Lccsancom/applovin/impl/adview/p$20;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$20;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v2, v3, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "Resuming video immediately"

    invoke-virtual {v0, v4, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->O()V

    :goto_0
    return-void
.end method

.method private O()V
    .locals 3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/d;->u:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->a()V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 10

    const-string v0, "InterActivity"

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->h:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->h:Z

    :try_start_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getVideoPercentViewed()I

    move-result v6

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    int-to-double v2, v6

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->isFullyWatched()Z

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v1, :cond_3

    int-to-long v2, v6

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/d;->c(J)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v2, v2, Lccsancom/applovin/impl/sdk/a/a;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->E()I

    move-result v2

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rewarded playable engaged at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " percent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    int-to-double v4, v2

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/a/g;->P()I

    move-result v7

    if-lt v2, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v3, v4, v5, v1}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/applovin/impl/adview/p;->o:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v7

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackVideoEnd(Lccsancom/applovin/impl/sdk/a/g;JIZ)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lccsancom/applovin/impl/adview/p;->q:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lccsancom/applovin/impl/adview/p;->s:J

    iget-boolean v8, p0, Lccsancom/applovin/impl/adview/p;->z:Z

    iget v9, p0, Lccsancom/applovin/impl/adview/p;->y:I

    invoke-virtual/range {v2 .. v9}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackFullScreenAdClosed(Lccsancom/applovin/impl/sdk/a/g;JJZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    if-eqz v2, :cond_4

    const-string v3, "Failed to notify end listener."

    invoke-virtual {v2, v0, v3, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(I)I
    .locals 0

    invoke-static {p0, p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private a(IZ)I
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    return v4

    :cond_0
    if-ne p1, v5, :cond_1

    return v2

    :cond_1
    if-ne p1, v3, :cond_2

    return v0

    :cond_2
    if-ne p1, v1, :cond_7

    return v5

    :cond_3
    if-nez p1, :cond_4

    return v5

    :cond_4
    if-ne p1, v5, :cond_5

    return v4

    :cond_5
    if-ne p1, v3, :cond_6

    return v2

    :cond_6
    if-ne p1, v1, :cond_7

    return v0

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/p;->q:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p;->J:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(JLccsancom/applovin/impl/adview/j;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/adview/p$10;

    invoke-direct {v1, p0, p3}, Lccsancom/applovin/impl/adview/p$10;-><init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/adview/j;)V

    invoke-virtual {v0, v1, p1, p2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lccsanandroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->k()Lccsanandroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "InterActivity"

    const-string v2, "Clicking through video..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->clickThroughFromVideo(Lccsanandroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->e()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->f()V

    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/net/Uri;)V
    .locals 3

    new-instance v0, Lccsancom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;-><init>(Lccsanandroid/content/Context;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz p1, :cond_0

    new-instance v1, Lccsancom/applovin/impl/adview/p$27;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$27;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Lccsancom/applovin/impl/adview/p$28;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$28;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Lccsancom/applovin/impl/adview/p$29;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$29;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Lccsanandroid/net/Uri;)V

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    new-instance v0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    new-instance v2, Lccsancom/applovin/impl/adview/p$2;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/p$2;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-direct {v0, v1, p0, v2}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsanandroid/content/Context;Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->setContentView(Lccsanandroid/view/View;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->p()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->x()V

    return-void
.end method

.method private a(Lccsanandroid/view/View;ZJ)V
    .locals 4

    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-direct {v0, v3, v1}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p3, p4}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p3, Lccsancom/applovin/impl/adview/p$25;

    invoke-direct {p3, p0, p1, p2}, Lccsancom/applovin/impl/adview/p$25;-><init>(Lccsancom/applovin/impl/adview/p;Lccsanandroid/view/View;Z)V

    invoke-virtual {v0, p3}, Lccsanandroid/view/animation/AlphaAnimation;->setAnimationListener(Lccsanandroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;Lccsanandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;Lccsanandroid/view/View;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/view/View;ZJ)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->b(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->e:Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/q;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    new-instance p1, Lccsancom/applovin/impl/adview/p$21;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/p$21;-><init>(Lccsancom/applovin/impl/adview/p;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cH:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    instance-of v1, v0, Lccsancom/applovin/impl/sdk/a/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lccsancom/applovin/impl/adview/p$26;

    invoke-direct {v1, p0, v0, p1}, Lccsancom/applovin/impl/adview/p$26;-><init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/p;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/adview/p$22;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/impl/adview/p$22;-><init>(Lccsancom/applovin/impl/adview/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lccsancom/applovin/sdk/R$drawable;->ccsan_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget p1, Lccsancom/applovin/sdk/R$drawable;->ccsan_mute_to_unmute:I

    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aE()Lccsanandroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aF()Lccsanandroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a()Z
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->co:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/p;->f:Z

    return p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/p;->i:Z

    return p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/p;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/p;->s:J

    return-wide p1
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private b(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "InterActivity"

    const-string v2, "Failed to set requested orientation"

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(IZ)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cm:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/q;->f()Lccsancom/applovin/impl/sdk/a/g$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/a/g$b;->b:Lccsancom/applovin/impl/sdk/a/g$b;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_6

    const/16 v1, 0x9

    if-eqz p2, :cond_2

    if-eq p1, v5, :cond_0

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_b

    if-ne p1, v5, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->b(I)V

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    :cond_3
    :goto_1
    invoke-direct {p0, v5}, Lccsancom/applovin/impl/adview/p;->b(I)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_b

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x9

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/q;->f()Lccsancom/applovin/impl/sdk/a/g$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/a/g$b;->c:Lccsancom/applovin/impl/sdk/a/g$b;

    if-ne v1, v2, :cond_b

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_b

    if-ne p1, v4, :cond_8

    goto :goto_0

    :cond_8
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    if-eq p1, v5, :cond_a

    if-eq p1, v3, :cond_a

    :goto_3
    invoke-direct {p0, v2}, Lccsancom/applovin/impl/adview/p;->b(I)V

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    if-ne p1, v5, :cond_1

    goto :goto_2

    :cond_b
    :goto_4
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->b()V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private b(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/adview/p;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/o;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "javascript:al_mute();"

    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "javascript:al_unmute();"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "Unable to forward mute setting to template."

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/p;->j:Z

    return p1
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/p;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/p;->r:J

    return-wide p1
.end method

.method private c(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->f:Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/q;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/l;->a()V

    :cond_1
    return-void
.end method

.method private c(Z)V
    .locals 4

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    :try_start_0
    invoke-virtual {v0, v1, v1}, Lccsanandroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set MediaPlayer muted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InterActivity"

    invoke-virtual {v1, v2, p1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ci:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cj:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->i:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ck:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/p;->n:Z

    return p1
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_1

    iget v0, p0, Lccsancom/applovin/impl/adview/p;->u:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->b(I)V

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->finish()V

    return-void
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/p;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->b(Z)V

    return-void
.end method

.method private d(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->g:Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cp:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/h;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/h;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    const-wide/16 v2, 0x2ee

    invoke-direct {p0, v1, v0, v2, v3}, Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/view/View;ZJ)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->z()V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->C()Lccsancom/applovin/impl/adview/u;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/v;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->f()J

    move-result-wide v3

    invoke-direct {p0, v2, v1, v3, v4}, Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/view/View;ZJ)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->y()V

    return-void
.end method

.method static synthetic g(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/sdk/d/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    return-object p0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->v:Lccsancom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->u:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lccsancom/applovin/impl/adview/p;)J
    .locals 2

    iget-wide v0, p0, Lccsancom/applovin/impl/adview/p;->p:J

    return-wide v0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->d:Z

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->showPostitial()V

    return-void
.end method

.method static synthetic i(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->q()V

    return-void
.end method

.method private i()Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->u:Lccsancom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    return v0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cv:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ct:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 10

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->v()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/applovin/impl/adview/j;->a(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/content/Context;)Lccsancom/applovin/impl/adview/j;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    new-instance v2, Lccsancom/applovin/impl/adview/p$3;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/p$3;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/adview/j;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->X()I

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->aa()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/a/g;->ab()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :goto_1
    or-int/lit8 v3, v3, 0x30

    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    or-int/lit8 v6, v2, 0x30

    invoke-direct {v5, v0, v0, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v6, v0}, Lccsancom/applovin/impl/adview/j;->a(I)V

    iget-object v6, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v6}, Lccsancom/applovin/impl/sdk/a/g;->Y()I

    move-result v6

    invoke-direct {p0, v6}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v6

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/a/g;->Z()I

    move-result v7

    invoke-direct {p0, v7}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v7

    invoke-virtual {v5, v7, v6, v7, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v9, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v8, v9, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/a/g;->w()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v5

    invoke-static {v5, p0}, Lccsancom/applovin/impl/adview/j;->a(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/content/Context;)Lccsancom/applovin/impl/adview/j;

    move-result-object v5

    iput-object v5, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v5, v1}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    new-instance v8, Lccsancom/applovin/impl/adview/p$4;

    invoke-direct {v8, p0}, Lccsancom/applovin/impl/adview/p$4;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v5, v8}, Lccsancom/applovin/impl/adview/j;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v0, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v7, v6, v7, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v7, v0}, Lccsancom/applovin/impl/adview/j;->a(I)V

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v8, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v7, v8, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v5}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->n()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v7, Lccsancom/applovin/impl/sdk/c/b;->bA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v5, v7}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v5

    new-instance v7, Lccsanandroid/view/View;

    invoke-direct {v7, p0}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v7, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v7, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    new-instance v7, Lccsanandroid/view/View;

    invoke-direct {v7, p0}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v7, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    invoke-virtual {v7, v8}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    invoke-virtual {v7, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    add-int/2addr v0, v5

    invoke-direct {p0, v4}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v1

    sub-int/2addr v6, v1

    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v6, v6, v6, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v6, v6, v6, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    new-instance v3, Lccsancom/applovin/impl/adview/p$5;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$5;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    new-instance v3, Lccsancom/applovin/impl/adview/p$6;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$6;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v0, v3, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->bringToFront()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->bringToFront()V

    :cond_2
    return-void
.end method

.method static synthetic j(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->k()V

    return-void
.end method

.method private k()V
    .locals 5

    const-string v0, "InterActivity"

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    if-nez v1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->i()Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    new-instance v1, Lccsanandroid/widget/ImageView;

    invoke-direct {v1, p0}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->l()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cw:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v1

    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->cy:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v1, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    sget-object v3, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cx:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v1

    invoke-virtual {v2, v1, v1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->aE()Lccsanandroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->aF()Lccsanandroid/net/Uri;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added mute button with params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->videoMuted:Z

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->a(Z)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    new-instance v3, Lccsancom/applovin/impl/adview/p$7;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$7;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->I:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "Attempting to add mute button but could not find uri"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "Mute button should be hidden"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    const-string v3, "Failed to attach mute button"

    invoke-virtual {v2, v0, v3, v1}, Lccsancom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic k(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->v()V

    return-void
.end method

.method static synthetic l(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->u()V

    return-void
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cr:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cs:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cu:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_2
    return v2
.end method

.method private m()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/p$8;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/p$8;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/p;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->I()V

    return-void
.end method

.method static synthetic n(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->h()V

    return-void
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/p$9;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/p$9;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/p;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic o(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->B()V

    return-void
.end method

.method private p()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lccsancom/applovin/impl/adview/p;->a(JLccsancom/applovin/impl/adview/j;)V

    :cond_1
    return-void
.end method

.method static synthetic p(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->A()V

    return-void
.end method

.method static synthetic q(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    return-object p0
.end method

.method private q()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ch:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->t()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Lccsancom/applovin/impl/adview/h;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/h;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->G()I

    move-result v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v2, v0}, Lccsancom/applovin/impl/adview/h;->setTextColor(I)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->cg:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/adview/h;->setTextSize(F)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v2, v0}, Lccsancom/applovin/impl/adview/h;->setFinishedStrokeColor(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cf:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/adview/h;->setFinishedStrokeWidth(F)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/adview/h;->setMax(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/adview/h;->setProgress(I)V

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->ce:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v2

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->ce:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v5, Lccsancom/applovin/impl/sdk/c/b;->cd:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v4, v5}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cc:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v2

    invoke-virtual {v0, v2, v2, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v2, v3, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/h;->bringToFront()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/h;->setVisibility(I)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->s()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    const-wide/16 v3, 0x3e8

    new-instance v5, Lccsancom/applovin/impl/adview/p$11;

    invoke-direct {v5, p0, v0, v1}, Lccsancom/applovin/impl/adview/p$11;-><init>(Lccsancom/applovin/impl/adview/p;J)V

    const-string v0, "COUNTDOWN_CLOCK"

    invoke-virtual {v2, v0, v3, v4, v5}, Lccsancom/applovin/impl/adview/k;->a(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V

    :cond_1
    return-void
.end method

.method static synthetic r(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    return-object p0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->t()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic s(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/p;->i:Z

    return p0
.end method

.method private t()I
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->F()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cG:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lccsancom/applovin/impl/adview/p;->computedLengthSeconds:I

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic t(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic u(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/view/View;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    return-object p0
.end method

.method private u()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "Attaching video progress bar..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsanandroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p0, v2, v3}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Lccsanandroid/widget/ProgressBar;->setPadding(IIII)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->O()I

    move-result v0

    invoke-static {v0}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Lccsanandroid/widget/ProgressBar;->setProgressTintList(Lccsanandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v4, "Unable to update progress bar color."

    invoke-virtual {v3, v1, v4, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getWidth()I

    move-result v1

    const/16 v3, 0x14

    const/16 v4, 0x50

    invoke-direct {v0, v1, v3, v4}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->cC:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->M:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    new-instance v3, Lccsancom/applovin/impl/adview/p$13;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/p$13;-><init>(Lccsancom/applovin/impl/adview/p;)V

    const-string v4, "PROGRESS_BAR"

    invoke-virtual {v2, v4, v0, v1, v3}, Lccsancom/applovin/impl/adview/k;->a(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V

    :cond_1
    return-void
.end method

.method private v()V
    .locals 9

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->C()Lccsancom/applovin/impl/adview/u;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "InterActivity"

    const-string v3, "Attaching video button..."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->w()Lccsancom/applovin/impl/adview/v;

    move-result-object v1

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->a()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->b()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v4}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getHeight()I

    move-result v4

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v7

    double-to-int v1, v1

    int-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    double-to-int v2, v5

    new-instance v3, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->d()I

    move-result v4

    invoke-direct {v3, v1, v2, v4}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->a(I)I

    move-result v1

    invoke-virtual {v3, v1, v1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/v;->bringToFront()V

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->i()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->L:Lccsancom/applovin/impl/adview/v;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/adview/v;->setVisibility(I)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->i()F

    move-result v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v3

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v5, Lccsancom/applovin/impl/adview/p$14;

    invoke-direct {v5, p0, v0}, Lccsancom/applovin/impl/adview/p$14;-><init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/adview/u;)V

    invoke-virtual {v1, v5, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->j()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->j()F

    move-result v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v4, Lccsancom/applovin/impl/adview/p$15;

    invoke-direct {v4, p0, v0}, Lccsancom/applovin/impl/adview/p$15;-><init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/adview/u;)V

    invoke-virtual {v3, v4, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic v(Lccsancom/applovin/impl/adview/p;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/adview/p;->j:Z

    return p0
.end method

.method static synthetic w(Lccsancom/applovin/impl/adview/p;)Lccsanandroid/view/View;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->G:Lccsanandroid/view/View;

    return-object p0
.end method

.method private w()Lccsancom/applovin/impl/adview/v;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create video button with HTML = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivity"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/adview/w;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, v1}, Lccsancom/applovin/impl/adview/w;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    new-instance v1, Lccsancom/applovin/impl/adview/p$16;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/p$16;-><init>(Lccsancom/applovin/impl/adview/p;)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->N:Lccsancom/applovin/impl/adview/w$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->N:Lccsancom/applovin/impl/adview/w$a;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/w;->a(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Lccsancom/applovin/impl/adview/v;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsancom/applovin/impl/adview/v;-><init>(Lccsancom/applovin/impl/adview/w;Lccsanandroid/content/Context;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/adview/v;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method private x()V
    .locals 3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lccsancom/applovin/impl/adview/a;

    const v2, 0x101007a

    invoke-direct {v1, p0, v0, v2}, Lccsancom/applovin/impl/adview/a;-><init>(Lccsanandroid/content/Context;II)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    const-string v0, "#75FFFFFF"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/adview/a;->setColor(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    const-string v1, "#00000000"

    invoke-static {v1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/a;->setBackgroundColor(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/a;->setVisibility(I)V

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->bringChildToFront(Lccsanandroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic x(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->m()V

    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic y(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->o()V

    return-void
.end method

.method static synthetic z(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/h;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/p;->H:Lccsancom/applovin/impl/adview/h;

    return-object p0
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->O:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clickThroughFromVideo(Lccsanandroid/graphics/PointF;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/a/g;->k()Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/q;->e()Lccsancom/applovin/sdk/AppLovinAdClickListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "InterActivity"

    const-string v2, "Encountered error while clicking through video."

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public continueVideo()V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->O()V

    return-void
.end method

.method public dismiss()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/p;->o:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismissing ad after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds elapsed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterActivity"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_1

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lccsanandroid/content/Intent;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/applovin/impl/sdk/utils/AppKilledService;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/p;->stopService(Lccsanandroid/content/Intent;)Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->R:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ah()Lccsancom/applovin/impl/sdk/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/f;->b(Lccsancom/applovin/impl/sdk/f$a;)V

    :cond_1
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->g()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->P()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->c()V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->S()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "javascript:al_onPoststitialDismiss();"

    invoke-direct {p0, v0, v2, v3}, Lccsancom/applovin/impl/adview/p;->a(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->g()V

    :cond_4
    sput-object v1, Lccsancom/applovin/impl/adview/p;->lastKnownWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->d()V

    return-void
.end method

.method public exitWithError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "InterActivity"

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lccsancom/applovin/impl/adview/q;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; CleanedUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lccsancom/applovin/impl/adview/q;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    :goto_0
    new-instance v1, Lccsancom/applovin/impl/sdk/a/h;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, p1, v2}, Lccsancom/applovin/impl/sdk/a/h;-><init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/k;)V

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Failed to show a video ad due to error:"

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    return-void
.end method

.method public getPostitialWasDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    return v0
.end method

.method public getVideoPercentViewed()I
    .locals 5

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lccsancom/applovin/impl/adview/p;->t:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "No video view detected on video end"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMediaError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    :cond_0
    return-void
.end method

.method protected isFullyWatched()Z
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getVideoPercentViewed()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->P()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isVastAd()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v0, v0, Lccsancom/applovin/impl/a/a;

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->aD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->c()Z

    move-result v0

    const-string v1, "InterActivity"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Back button was pressed; forwarding to Android for handling..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onBackPressed()V

    goto :goto_3

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Back button was pressed; forwarding as a click to skip button."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    :goto_1
    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->performClick()Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/j;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Back button was pressed; forwarding as a click to close button."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Back button was pressed, but was not eligible for dismissal."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "javascript:al_onBackPressed();"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_3
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 9

    const-string v0, "InterActivity"

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v1, "instance_impression_tracked"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/p;->requestWindowFeature(I)Z

    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v2

    const-string v3, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v2}, Lccsancom/applovin/impl/adview/q;->a(Ljava/lang/String;)Lccsancom/applovin/impl/adview/q;

    move-result-object v2

    iput-object v2, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    if-nez v2, :cond_1

    sget-object v2, Lccsancom/applovin/impl/adview/p;->lastKnownWrapper:Lccsancom/applovin/impl/adview/q;

    if-eqz v2, :cond_1

    sget-object v2, Lccsancom/applovin/impl/adview/p;->lastKnownWrapper:Lccsancom/applovin/impl/adview/q;

    iput-object v2, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    :cond_1
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/q;->b()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/q;->a()Lccsancom/applovin/impl/sdk/k;

    move-result-object v3

    iput-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/q;->a()Lccsancom/applovin/impl/sdk/k;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v3

    iput-object v3, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->cq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lccsancom/applovin/impl/adview/p$1;

    invoke-direct {v3, p0, v2}, Lccsancom/applovin/impl/adview/p$1;-><init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/sdk/a/g;)V

    iput-object v3, p0, Lccsancom/applovin/impl/adview/p;->R:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->R:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    new-instance v5, Lccsanandroid/content/IntentFilter;

    const-string v6, "com.applovin.app_killed"

    invoke-direct {v5, v6}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    :cond_2
    if-eqz v2, :cond_a

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->eM:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lccsancom/applovin/impl/adview/p;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/app/ActivityManager;

    if-eqz v5, :cond_3

    new-instance v6, Lccsanandroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Lccsanandroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v5, v6}, Lccsanandroid/app/ActivityManager;->getMemoryInfo(Lccsanandroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v5, v6, Lccsanandroid/app/ActivityManager$MemoryInfo;->availMem:J

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gez v3, :cond_3

    const-string p1, "Not enough available memory"

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->exitWithError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_3
    :try_start_1
    new-instance v3, Lccsancom/applovin/impl/sdk/d/d;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v3, v2, v5}, Lccsancom/applovin/impl/sdk/d/d;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v3, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->ak()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->ah()Lccsancom/applovin/impl/sdk/f;

    move-result-object v3

    invoke-virtual {v3, p0}, Lccsancom/applovin/impl/sdk/f;->a(Lccsancom/applovin/impl/sdk/f$a;)V

    :cond_4
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lccsancom/applovin/impl/adview/p;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->H()I

    move-result v5

    invoke-virtual {v3, v5}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    :cond_6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lccsancom/applovin/impl/adview/p;->o:J

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getWindow()Lccsanandroid/view/Window;

    move-result-object v3

    const/high16 v5, 0x1000000

    invoke-virtual {v3, v5, v5}, Lccsanandroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->getRotation(Lccsanandroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isTablet(Lccsanandroid/content/Context;)Z

    move-result v5

    invoke-direct {p0, v3, v5}, Lccsancom/applovin/impl/adview/p;->a(IZ)I

    move-result v6

    if-nez p1, :cond_7

    iput v6, p0, Lccsancom/applovin/impl/adview/p;->u:I

    goto :goto_1

    :cond_7
    const-string v7, "original_orientation"

    invoke-virtual {p1, v7, v6}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lccsancom/applovin/impl/adview/p;->u:I

    :goto_1
    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->E()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eq v6, v4, :cond_8

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locking activity orientation to current orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lccsancom/applovin/impl/adview/p;->b(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Unable to detect current orientation. Locking to targeted orientation..."

    invoke-virtual {p1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v3, v5}, Lccsancom/applovin/impl/adview/p;->b(IZ)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Locking activity orientation to targeted orientation..."

    invoke-virtual {p1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    new-instance p1, Lccsancom/applovin/impl/adview/o;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-direct {p1, v2, v3, p0}, Lccsancom/applovin/impl/adview/o;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/o;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object p1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1, v2}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/sdk/d/d;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->b:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/l;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cE:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/p;->k:Z

    new-instance p1, Lccsancom/applovin/impl/sdk/b/b;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p1, p0, v2}, Lccsancom/applovin/impl/sdk/b/b;-><init>(Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    new-instance v2, Lccsancom/applovin/impl/adview/p$12;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/p$12;-><init>(Lccsancom/applovin/impl/adview/p;)V

    invoke-virtual {p1, v2}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b$a;)V

    new-instance p1, Lccsancom/applovin/impl/adview/p$23;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/p$23;-><init>(Lccsancom/applovin/impl/adview/p;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p;->Q:Lccsancom/applovin/impl/sdk/utils/a;

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->Q:Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {p1, v2}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    goto :goto_5

    :cond_a
    const-string p1, "No current ad found."

    :goto_4
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->exitWithError(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapper is null; initialized state: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lccsancom/applovin/impl/adview/q;->b:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    const-string p1, "Wrapper ID is null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_2
    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    if-eqz v2, :cond_d

    const-string v3, "Encountered error during onCreate."

    invoke-virtual {v2, v0, v3, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    const-string p1, "An error was encountered during interstitial ad creation."

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/p;->exitWithError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    invoke-static {v1}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->g()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->a()V

    :cond_e
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->J()V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/o;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/o;->destroy()V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->J:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->Q:Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->b()V

    :cond_5
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->A:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_9

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    if-eqz v1, :cond_8

    const-string v2, "InterActivity"

    const-string v3, "Unable to destroy video view"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_9

    :goto_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->P()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_9
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->P()V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_a
    throw v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lccsanandroid/app/Activity;->onPause()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "App paused..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/p;->p:J

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->M()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->a()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->pauseReportRewardTask()V

    const-string v0, "javascript:al_onAppPaused();"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    :try_start_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivity"

    const-string v2, "App resumed..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/applovin/impl/adview/p;->p:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/d;->d(J)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->v:Lccsancom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->N()V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->y()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cb:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->F:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v0, v0, Lccsancom/applovin/impl/sdk/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cb:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lccsancom/applovin/impl/adview/p;->a(JLccsancom/applovin/impl/adview/j;)V

    :cond_3
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->resumeReportRewardTask()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->K:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->y()V

    :cond_5
    :goto_1
    const-string v0, "javascript:al_onAppResumed();"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error was encountered in onResume()."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/p;->exitWithError(Ljava/lang/String;)V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/p;->y:I

    sget v1, Lccsancom/applovin/impl/sdk/f;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->z:Z

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/o;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lccsancom/applovin/impl/adview/p;->y:I

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "javascript:al_muteSwitchOn();"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string v1, "javascript:al_muteSwitchOff();"

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    :cond_2
    iput p1, p0, Lccsancom/applovin/impl/adview/p;->y:I

    return-void
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "instance_impression_tracked"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lccsancom/applovin/impl/adview/p;->u:I

    const-string v1, "original_orientation"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "InterActivity"

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Window gained focus"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->cz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->b()V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->B:Lccsanandroid/os/Handler;

    new-instance v2, Lccsancom/applovin/impl/adview/p$24;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/p$24;-><init>(Lccsancom/applovin/impl/adview/p;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Lccsanandroid/view/Window;->setFlags(II)V

    :goto_0
    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->N()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->resumeReportRewardTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v3, "Setting window flags failed."

    invoke-virtual {v2, v0, v3, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string v1, "Window gained focus. SDK is null."

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Window lost focus"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->M()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->pauseReportRewardTask()V

    goto :goto_2

    :cond_3
    const-string v1, "Window lost focus. SDK is null."

    :goto_1
    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onWindowFocusChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public pauseReportRewardTask()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->P:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    :cond_0
    return-void
.end method

.method protected playVideo()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->d(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->countdownManager:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->a()V

    return-void
.end method

.method public resumeReportRewardTask()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->P:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    :cond_0
    return-void
.end method

.method protected shouldContinueFullLengthVideoCountdown()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showPostitial()V
    .locals 10

    const-string v0, "InterActivity"

    :try_start_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->K()V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/o;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    if-eq v1, v3, :cond_1

    :cond_0
    check-cast v1, Lccsanandroid/view/ViewGroup;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    goto :goto_0

    :cond_2
    new-instance v1, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    :goto_0
    new-instance v3, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/a/g;->H()I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v3, v2}, Lccsancom/applovin/impl/adview/o;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    :goto_1
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-static {v3, v4}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->C:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v3}, Lccsanandroid/widget/FrameLayout;->removeAllViewsInLayout()V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->n()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/ViewGroup;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v3, v4}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_6
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->E:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->bringToFront()V

    :cond_7
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/j;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Lccsanandroid/view/ViewGroup;

    if-eqz v4, :cond_8

    check-cast v3, Lccsanandroid/view/ViewGroup;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v3, v4}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_8
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/j;->bringToFront()V

    :cond_9
    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->eD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/p;->setContentView(Lccsanandroid/view/View;)V

    :cond_a
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->eA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/adview/o;->setVisibility(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->a:Lccsancom/applovin/impl/adview/o;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/adview/o;->setVisibility(I)V

    :cond_b
    const-string v1, "javascript:al_onPoststitialShow();"

    iget-object v3, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/a/g;->R()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v1, v3, v4}, Lccsancom/applovin/impl/adview/p;->a(Ljava/lang/String;J)V

    :cond_c
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    instance-of v1, v1, Lccsancom/applovin/impl/sdk/a/a;

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v1, Lccsancom/applovin/impl/sdk/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/a;->m()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_10

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v1

    iget-object v4, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-direct {p0, v1, v2, v4}, Lccsancom/applovin/impl/adview/p;->a(JLccsancom/applovin/impl/adview/j;)V

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v4

    const-wide/16 v8, -0x2

    cmp-long v1, v4, v8

    if-nez v1, :cond_f

    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/adview/j;->setVisibility(I)V

    goto :goto_4

    :cond_f
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->D:Lccsancom/applovin/impl/adview/j;

    invoke-direct {p0, v6, v7, v1}, Lccsancom/applovin/impl/adview/p;->a(JLccsancom/applovin/impl/adview/j;)V

    goto :goto_4

    :cond_10
    iget-object v1, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Skip showing of close button"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iput-boolean v3, p0, Lccsancom/applovin/impl/adview/p;->postitialWasDisplayed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    const-string v3, "Encountered error while showing postitial. Dismissing..."

    invoke-virtual {v2, v0, v3, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    :goto_5
    return-void
.end method

.method public skipVideo()V
    .locals 4

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/p;->r:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/p;->s:J

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->c:Lccsancom/applovin/impl/sdk/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->f()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/p;->currentAd:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/p;->showPostitial()V

    :goto_0
    return-void
.end method

.method public toggleMute()V
    .locals 5

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/p;->L()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->c(Z)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->a(Z)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/p;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p;->logger:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set volume to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "InterActivity"

    invoke-virtual {v2, v3, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
