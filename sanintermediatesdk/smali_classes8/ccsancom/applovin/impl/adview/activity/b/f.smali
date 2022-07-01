.class public Lccsancom/applovin/impl/adview/activity/b/f;
.super Lccsancom/applovin/impl/adview/activity/b/a;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/activity/b/f$a;,
        Lccsancom/applovin/impl/adview/activity/b/f$c;,
        Lccsancom/applovin/impl/adview/activity/b/f$b;
    }
.end annotation


# instance fields
.field private final A:Lccsanandroid/widget/ImageView;

.field private final B:Lccsancom/applovin/impl/adview/v;

.field private final C:Lccsanandroid/widget/ProgressBar;

.field private final D:Lccsancom/applovin/impl/adview/activity/b/f$b;

.field private final E:Lccsancom/applovin/impl/adview/activity/b/f$a;

.field private final F:Lccsanandroid/os/Handler;

.field private final G:Z

.field private H:I

.field private I:I

.field private J:Z

.field private K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private M:J

.field private N:J

.field protected final r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

.field protected final s:Lccsancom/applovin/impl/adview/k;

.field protected t:Z

.field protected u:J

.field protected v:Z

.field private final w:Lccsancom/applovin/impl/adview/activity/a/c;

.field private x:Lccsanandroid/media/MediaPlayer;

.field private final y:Lccsancom/applovin/impl/adview/a;

.field private final z:Lccsancom/applovin/impl/adview/n;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 8

    invoke-direct/range {p0 .. p6}, Lccsancom/applovin/impl/adview/activity/b/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance p4, Lccsancom/applovin/impl/adview/activity/a/c;

    iget-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    iget-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/f;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p4, p5, p6, v0}, Lccsancom/applovin/impl/adview/activity/a/c;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->w:Lccsancom/applovin/impl/adview/activity/a/c;

    new-instance p4, Lccsancom/applovin/impl/adview/activity/b/f$b;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lccsancom/applovin/impl/adview/activity/b/f$b;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;Lccsancom/applovin/impl/adview/activity/b/f$1;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->D:Lccsancom/applovin/impl/adview/activity/b/f$b;

    new-instance p6, Lccsancom/applovin/impl/adview/activity/b/f$a;

    invoke-direct {p6, p0, p5}, Lccsancom/applovin/impl/adview/activity/b/f$a;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;Lccsancom/applovin/impl/adview/activity/b/f$1;)V

    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/f;->E:Lccsancom/applovin/impl/adview/activity/b/f$a;

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->F:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/applovin/impl/adview/k;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, v0, v2}, Lccsancom/applovin/impl/adview/k;-><init>(Lccsanandroid/os/Handler;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->s:Lccsancom/applovin/impl/adview/k;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->f()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->t()Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    const/4 v2, -0x1

    iput v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->M:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->N:J

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v4, p2, p3}, Lccsancom/applovin/impl/adview/AppLovinVideoView;-><init>(Lccsanandroid/content/Context;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v4, p4}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v4, p4}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v4, p4}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v5, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v6, Lccsancom/applovin/impl/sdk/c/b;->aJ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-direct {v5, p3, v6, p2, p4}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/c/b;Lccsanandroid/content/Context;Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {v4, v5}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    new-instance p4, Lccsancom/applovin/impl/adview/activity/b/f$c;

    invoke-direct {p4, p0, p5}, Lccsancom/applovin/impl/adview/activity/b/f$c;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;Lccsancom/applovin/impl/adview/activity/b/f$1;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v4

    const/16 v6, 0x8

    cmp-long v7, v4, v2

    if-ltz v7, :cond_0

    new-instance v2, Lccsancom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->w()Lccsancom/applovin/impl/adview/j$a;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lccsancom/applovin/impl/adview/n;-><init>(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/app/Activity;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    invoke-virtual {v2, v6}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    invoke-virtual {v2, p4}, Lccsancom/applovin/impl/adview/n;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    :goto_0
    iget-boolean v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    invoke-static {v2, p3}, Lccsancom/applovin/impl/adview/activity/b/f;->a(ZLccsancom/applovin/impl/sdk/k;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lccsanandroid/widget/ImageView;

    invoke-direct {v2, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    sget-object v3, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v2, p4}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-boolean p4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    invoke-direct {p0, p4}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Z)V

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    :goto_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->B()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lccsancom/applovin/impl/adview/w;

    invoke-direct {v2, p3}, Lccsancom/applovin/impl/adview/w;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/adview/w;->a(Ljava/lang/ref/WeakReference;)V

    new-instance p6, Lccsancom/applovin/impl/adview/v;

    invoke-direct {p6, v2, p2}, Lccsancom/applovin/impl/adview/v;-><init>(Lccsancom/applovin/impl/adview/w;Lccsanandroid/content/Context;)V

    iput-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/f;->B:Lccsancom/applovin/impl/adview/v;

    invoke-virtual {p6, p4}, Lccsancom/applovin/impl/adview/v;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->B:Lccsancom/applovin/impl/adview/v;

    :goto_2
    if-eqz v0, :cond_3

    new-instance p4, Lccsancom/applovin/impl/adview/a;

    sget-object p6, Lccsancom/applovin/impl/sdk/c/b;->cF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p6}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    const v0, 0x101007a

    invoke-direct {p4, p2, p6, v0}, Lccsancom/applovin/impl/adview/a;-><init>(Lccsanandroid/content/Context;II)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->y:Lccsancom/applovin/impl/adview/a;

    const-string p6, "#75FFFFFF"

    invoke-static {p6}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p4, p6}, Lccsancom/applovin/impl/adview/a;->setColor(I)V

    const-string p6, "#00000000"

    invoke-static {p6}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p4, p6}, Lccsancom/applovin/impl/adview/a;->setBackgroundColor(I)V

    invoke-virtual {p4, v6}, Lccsancom/applovin/impl/adview/a;->setVisibility(I)V

    invoke-static {p2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object p4

    const-string/jumbo p6, "video_caching_failed"

    invoke-virtual {p4, p0, p6}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->y:Lccsancom/applovin/impl/adview/a;

    :goto_3
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->N()Z

    move-result p4

    if-eqz p4, :cond_5

    new-instance p4, Lccsanandroid/widget/ProgressBar;

    const p6, 0x1010078

    invoke-direct {p4, p2, p5, p6}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->C:Lccsanandroid/widget/ProgressBar;

    const/16 p2, 0x2710

    invoke-virtual {p4, p2}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p2, p2, p2}, Lccsanandroid/widget/ProgressBar;->setPadding(IIII)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->O()I

    move-result p1

    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lccsanandroid/widget/ProgressBar;->setProgressTintList(Lccsanandroid/content/res/ColorStateList;)V

    :cond_4
    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->cA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    new-instance p3, Lccsancom/applovin/impl/adview/activity/b/f$1;

    invoke-direct {p3, p0}, Lccsancom/applovin/impl/adview/activity/b/f$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    const-string p4, "PROGRESS_BAR"

    invoke-virtual {v1, p4, p1, p2, p3}, Lccsancom/applovin/impl/adview/k;->a(Ljava/lang/String;JLccsancom/applovin/impl/adview/k$a;)V

    goto :goto_4

    :cond_5
    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->C:Lccsanandroid/widget/ProgressBar;

    :goto_4
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to use fullscreen video ad presenter for non-video ad"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()V
    .locals 4

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    const-string v1, "InterActivityV2"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Skip video resume - postitial shown"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ab()Lccsancom/applovin/impl/sdk/v;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Skip video resume - app paused"

    goto :goto_0

    :cond_1
    iget v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming video at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms for MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/activity/b/f;->x:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    iget v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->s:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/f$7;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/activity/b/f$7;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Invalid last video position"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/f;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->M:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/f;Lccsanandroid/media/MediaPlayer;)Lccsanandroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->x:Lccsanandroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->C:Lccsanandroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->J:Z

    return p1
.end method

.method private static a(ZLccsancom/applovin/impl/sdk/k;)Z
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cr:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cs:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lccsancom/applovin/impl/sdk/c/b;->cu:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/b/f;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->N:J

    return-wide p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->y()V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/v;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->B:Lccsancom/applovin/impl/adview/v;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->A()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->x()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->H:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->y:Lccsancom/applovin/impl/adview/a;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p1, :cond_0

    sget v1, Lccsancom/applovin/sdk/R$drawable;->unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lccsancom/applovin/sdk/R$drawable;->mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aE()Lccsanandroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aF()Lccsanandroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method static synthetic f(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/activity/b/f$b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->D:Lccsancom/applovin/impl/adview/activity/b/f$b;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->x:Lccsanandroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic h(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/n;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    return-object p0
.end method

.method static synthetic i(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v1

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/f$4;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/f$4;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/n;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->C()Lccsancom/applovin/impl/adview/u;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->B:Lccsancom/applovin/impl/adview/v;

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
    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/u;->f()J

    move-result-wide v2

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/f$5;

    invoke-direct {v0, p0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/f$5;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;ZJ)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lccsanandroid/graphics/PointF;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->k()Lccsanandroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->l:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {v1, v2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/activity/b/f;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v2, v3, v0, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->u()V

    return-void
.end method

.method public b(J)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/f$6;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/activity/b/f$6;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, p1, p2}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->s:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->c()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paused video at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lccsancom/applovin/impl/adview/activity/b/f;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered media error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v0, v0, Lccsancom/applovin/impl/sdk/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->m:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    check-cast v0, Lccsancom/applovin/impl/sdk/a/i;

    invoke-interface {v0, p1}, Lccsancom/applovin/impl/sdk/a/i;->onAdDisplayFailed(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->g()V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 2

    invoke-super {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/a;->c(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->eN:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa

    :goto_0
    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/f;->b(J)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method public d()V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->w:Lccsancom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->A:Lccsanandroid/widget/ImageView;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/activity/b/f;->B:Lccsancom/applovin/impl/adview/v;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->y:Lccsancom/applovin/impl/adview/a;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/activity/b/f;->C:Lccsanandroid/widget/ProgressBar;

    iget-object v6, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    iget-object v7, p0, Lccsancom/applovin/impl/adview/activity/b/f;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual/range {v0 .. v7}, Lccsancom/applovin/impl/adview/activity/a/c;->a(Lccsanandroid/widget/ImageView;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/v;Lccsancom/applovin/impl/adview/a;Lccsanandroid/widget/ProgressBar;Lccsanandroid/view/View;Lccsancom/applovin/adview/AppLovinAdView;)V

    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Z)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->h()Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Lccsanandroid/net/Uri;)V

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->o:Lccsancom/applovin/impl/sdk/b/b;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    new-instance v2, Lccsancom/applovin/impl/adview/activity/b/f$2;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/activity/b/f$2;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->y:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->f:Lccsancom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->renderAd(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->e:Lccsancom/applovin/impl/sdk/d/d;

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/d;->b(J)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->z:Lccsancom/applovin/impl/adview/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/f$3;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/f$3;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    invoke-direct {v2, v0, v3}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object v3, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->t()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;JZ)V

    :cond_3
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    invoke-super {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->s:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/k;->b()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->F:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->l()V

    invoke-super {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "FullscreenVideoAdPresenter"

    return-object v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Destroying video components"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-static {v0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    const-string/jumbo v2, "video_caching_failed"

    invoke-virtual {v0, p0, v2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->x:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Unable to destroy presenter"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    invoke-super {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->i()V

    return-void
.end method

.method protected l()V
    .locals 6

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->x()I

    move-result v1

    iget-boolean v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->p()Z

    move-result v3

    iget-wide v4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->M:J

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lccsancom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 5

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video_caching_failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->eO:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->G:Z

    if-eqz v0, :cond_1

    const-string v0, "load_response_code"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "load_exception_message"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->J:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video cache error during stream. ResponseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/f;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected p()Z
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->x()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

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

.method protected q()Z
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected s()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ad()I

    move-result v0

    if-ltz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    goto :goto_2

    :cond_1
    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    iget-wide v4, p0, Lccsancom/applovin/impl/adview/activity/b/f;->u:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    add-long/2addr v2, v4

    :cond_2
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    check-cast v1, Lccsancom/applovin/impl/sdk/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/a;->l()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_3

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->u()J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    long-to-double v0, v2

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->ad()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(J)V

    :cond_5
    return-void
.end method

.method public u()V
    .locals 4

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->N:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->M:J

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping video with skip time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->M:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->f()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/f;->w()V

    :goto_0
    return-void
.end method

.method protected v()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->x:Lccsanandroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1, v1}, Lccsanandroid/media/MediaPlayer;->setVolume(FF)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Z)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/b/f;->a(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public w()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Showing postitial..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->aM()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/f;->d(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->w:Lccsancom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->g:Lccsancom/applovin/impl/adview/n;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/a/c;->a(Lccsancom/applovin/impl/adview/n;Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->R()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "javascript:al_onPoststitialShow();"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->g:Lccsancom/applovin/impl/adview/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->g:Lccsancom/applovin/impl/adview/n;

    if-ltz v4, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v1

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/f$8;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/f$8;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/n;JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->v:Z

    return-void
.end method

.method protected x()I
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-boolean v2, p0, Lccsancom/applovin/impl/adview/activity/b/f;->J:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    long-to-float v0, v0

    iget-wide v1, p0, Lccsancom/applovin/impl/adview/activity/b/f;->u:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_1
    iget v0, p0, Lccsancom/applovin/impl/adview/activity/b/f;->H:I

    return v0
.end method
