.class public abstract Lccsancom/applovin/impl/adview/activity/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/b/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/activity/b/a$a;
    }
.end annotation


# instance fields
.field protected final a:Lccsancom/applovin/impl/sdk/a/g;

.field protected final b:Lccsancom/applovin/impl/sdk/k;

.field protected final c:Lccsancom/applovin/impl/sdk/r;

.field protected final d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

.field protected final e:Lccsancom/applovin/impl/sdk/d/d;

.field protected final f:Lccsancom/applovin/adview/AppLovinAdView;

.field protected final g:Lccsancom/applovin/impl/adview/n;

.field protected final h:J

.field protected i:J

.field protected j:I

.field protected k:Z

.field protected final l:Lccsancom/applovin/sdk/AppLovinAdClickListener;

.field protected final m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

.field protected final n:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field protected final o:Lccsancom/applovin/impl/sdk/b/b;

.field protected p:Lccsancom/applovin/impl/sdk/utils/m;

.field protected q:Lccsancom/applovin/impl/sdk/utils/m;

.field private final r:Lccsanandroid/os/Handler;

.field private final s:Lccsancom/applovin/impl/sdk/utils/a;

.field private final t:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

.field private final u:Lccsancom/applovin/impl/sdk/f$a;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:J


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->r:Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->h:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->i:J

    sget v0, Lccsancom/applovin/impl/sdk/f;->a:I

    iput v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->j:I

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/a;->l:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/a;->m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/a;->n:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    new-instance p4, Lccsancom/applovin/impl/sdk/b/b;

    invoke-direct {p4, p2, p3}, Lccsancom/applovin/impl/sdk/b/b;-><init>(Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/a;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {p4, p0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b$a;)V

    new-instance p4, Lccsancom/applovin/impl/sdk/d/d;

    invoke-direct {p4, p1, p3}, Lccsancom/applovin/impl/sdk/d/d;-><init>(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    new-instance p5, Lccsancom/applovin/impl/adview/activity/b/a$a;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Lccsancom/applovin/impl/adview/activity/b/a$a;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/adview/activity/b/a$1;)V

    new-instance v0, Lccsancom/applovin/impl/adview/o;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, v2, p2}, Lccsancom/applovin/impl/adview/o;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, p5}, Lccsancom/applovin/adview/AppLovinAdView;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    new-instance v1, Lccsancom/applovin/impl/adview/activity/b/a$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/activity/b/a$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0, p4}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/sdk/d/d;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object p4

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->al()Z

    move-result v0

    invoke-virtual {p4, v0}, Lccsancom/applovin/impl/adview/d;->setIsShownOutOfContext(Z)V

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p4

    invoke-virtual {p4, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lccsancom/applovin/impl/sdk/a/g;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-ltz p4, :cond_0

    new-instance p4, Lccsancom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->v()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v0

    invoke-direct {p4, v0, p2}, Lccsancom/applovin/impl/adview/n;-><init>(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/app/Activity;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/a;->g:Lccsancom/applovin/impl/adview/n;

    const/16 p2, 0x8

    invoke-virtual {p4, p2}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    invoke-virtual {p4, p5}, Lccsancom/applovin/impl/adview/n;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/a;->g:Lccsancom/applovin/impl/adview/n;

    :goto_0
    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->cq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lccsancom/applovin/impl/adview/activity/b/a$2;

    invoke-direct {p2, p0, p3, p1}, Lccsancom/applovin/impl/adview/activity/b/a$2;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/a/g;)V

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a;->t:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p4

    new-instance p5, Lccsanandroid/content/IntentFilter;

    const-string v0, "com.applovin.app_killed"

    invoke-direct {p5, v0}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p5}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/a;->t:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    :goto_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->ak()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lccsancom/applovin/impl/adview/activity/b/a$3;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/activity/b/a$3;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->u:Lccsancom/applovin/impl/sdk/f$a;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->ah()Lccsancom/applovin/impl/sdk/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/f;->a(Lccsancom/applovin/impl/sdk/f$a;)V

    goto :goto_2

    :cond_2
    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/a;->u:Lccsancom/applovin/impl/sdk/f$a;

    :goto_2
    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->eB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lccsancom/applovin/impl/adview/activity/b/a$4;

    invoke-direct {p1, p0, p3}, Lccsancom/applovin/impl/adview/activity/b/a$4;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->s:Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/a;->s:Lccsancom/applovin/impl/sdk/utils/a;

    :goto_3
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/b/a;)Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->t:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    return-object p0
.end method


# virtual methods
.method public a(ILccsanandroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown(int, KeyEvent) -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InterActivityV2"

    invoke-virtual {v0, p2, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(IZZJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lccsancom/applovin/impl/adview/activity/b/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->n:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v2, v0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    int-to-double v3, v7

    move/from16 v5, p3

    invoke-static {v1, v2, v3, v4, v5}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    :cond_1
    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/d;->c(J)V

    :cond_2
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lccsancom/applovin/impl/adview/activity/b/a;->h:J

    sub-long v8, v1, v3

    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, v0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackVideoEnd(Lccsancom/applovin/impl/sdk/a/g;JIZ)V

    iget-wide v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->i:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lccsancom/applovin/impl/adview/activity/b/a;->i:J

    sub-long v3, v1, v3

    :goto_0
    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v10

    iget-object v11, v0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    iget-boolean v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->k:Z

    iget v2, v0, Lccsancom/applovin/impl/adview/activity/b/a;->j:I

    move-wide v12, v3

    move-wide/from16 v14, p4

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackFullScreenAdClosed(Lccsancom/applovin/impl/sdk/a/g;JJZI)V

    iget-object v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video ad ended at percent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%, elapsedTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, skipTimeMillis: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms, closeTimeMillis: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InterActivityV2"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected a(J)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling report reward in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    new-instance v1, Lccsancom/applovin/impl/adview/activity/b/a$8;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/activity/b/a$8;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;)V

    invoke-static {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->p:Lccsancom/applovin/impl/sdk/utils/m;

    return-void
.end method

.method public a(Lccsanandroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(Configuration) -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lccsancom/applovin/impl/adview/n;JLjava/lang/Runnable;)V
    .locals 7

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/a$7;

    invoke-direct {v0, p0, p1, p4}, Lccsancom/applovin/impl/adview/activity/b/a$7;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/adview/n;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object p4, Lccsancom/applovin/impl/sdk/c/b;->cK:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iget-object p3, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p2, p3, v0}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->q:Lccsancom/applovin/impl/sdk/utils/m;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v2, p1, v0}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object v3, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;JZ)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->r:Lccsanandroid/os/Handler;

    invoke-static {p1, p2, p3, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;JLccsanandroid/os/Handler;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/a$6;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/adview/activity/b/a$6;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-static {p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->checkCachedResourcesExist(ZLccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cached resource(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(ZJ)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "javascript:al_mute();"

    goto :goto_0

    :cond_0
    const-string p1, "javascript:al_unmute();"

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected b(Z)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cH:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/a;->a(ZJ)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/q;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->n:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_1
    new-instance p1, Lccsancom/applovin/impl/adview/activity/b;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/adview/activity/b;-><init>(Lccsancom/applovin/adview/AppLovinFullscreenActivity;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/activity/b;->a(Lccsancom/applovin/impl/sdk/a/g;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->a()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/a/g;->setHasShown(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(boolean) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_onWindowFocusChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->q:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "onResume()"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/applovin/impl/adview/activity/b/a;->x:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/d;->d(J)V

    const-string v0, "javascript:al_onAppResumed();"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->o()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->a()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "onPause()"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->x:J

    const-string v0, "javascript:al_onAppPaused();"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/b;->a()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->n()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->r:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->S()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "javascript:al_onPoststitialDismiss();"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->m()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->c()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->t:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/a$5;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/a$5;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;)V

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->u:Lccsancom/applovin/impl/sdk/f$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ah()Lccsancom/applovin/impl/sdk/f;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->u:Lccsancom/applovin/impl/sdk/f$a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/f;->b(Lccsancom/applovin/impl/sdk/f$a;)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->s:Lccsancom/applovin/impl/sdk/utils/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->s:Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->finish()V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "onStop()"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->f:Lccsancom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->l()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->m()V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "InterActivityV2"

    const-string v1, "---low memory detected - running garbage collection---"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "onBackPressed()"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:onBackPressed();"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract l()V
.end method

.method protected m()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/q;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/l;->a()V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->p:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->p:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    :cond_0
    return-void
.end method

.method protected abstract p()Z
.end method

.method protected abstract q()Z
.end method

.method protected r()Z
    .locals 2

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lccsancom/applovin/sdk/AppLovinAdType;->AUTO_INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract s()V
.end method

.method protected t()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cv:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ct:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
