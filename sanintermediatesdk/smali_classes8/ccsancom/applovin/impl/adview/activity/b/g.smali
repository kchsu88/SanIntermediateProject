.class public Lccsancom/applovin/impl/adview/activity/b/g;
.super Lccsancom/applovin/impl/adview/activity/b/a;

# interfaces
.implements Lccsancom/applovin/impl/adview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/activity/b/g$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private final r:Lccsancom/applovin/impl/adview/activity/a/d;

.field private final s:Lccsancom/applovin/impl/adview/n;

.field private final t:Lccsanandroid/widget/ImageView;

.field private final u:Lccsancom/applovin/impl/adview/a;

.field private final v:Z

.field private w:D

.field private x:D

.field private y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 6

    invoke-direct/range {p0 .. p6}, Lccsancom/applovin/impl/adview/activity/b/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    new-instance p4, Lccsancom/applovin/impl/adview/activity/a/d;

    iget-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    iget-object p6, p0, Lccsancom/applovin/impl/adview/activity/b/g;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p4, p5, p6, v0}, Lccsancom/applovin/impl/adview/activity/a/d;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->r:Lccsancom/applovin/impl/adview/activity/a/d;

    iget-object p4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p4}, Lccsancom/applovin/impl/sdk/a/g;->f()Z

    move-result p4

    iput-boolean p4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->v:Z

    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->t()Z

    move-result p5

    iput-boolean p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    const-wide/16 p5, -0x2

    iput-wide p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->B:J

    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->C:J

    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/impl/adview/activity/b/g$a;-><init>(Lccsancom/applovin/impl/adview/activity/b/g;Lccsancom/applovin/impl/adview/activity/b/g$1;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v2

    const/16 v4, 0x8

    cmp-long v5, v2, p5

    if-ltz v5, :cond_0

    new-instance p5, Lccsancom/applovin/impl/adview/n;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->w()Lccsancom/applovin/impl/adview/j$a;

    move-result-object p1

    invoke-direct {p5, p1, p2}, Lccsancom/applovin/impl/adview/n;-><init>(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/app/Activity;)V

    iput-object p5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    invoke-virtual {p5, v4}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    invoke-virtual {p5, v0}, Lccsancom/applovin/impl/adview/n;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    :goto_0
    iget-boolean p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-static {p1, p3}, Lccsancom/applovin/impl/adview/activity/b/g;->a(ZLccsancom/applovin/impl/sdk/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-direct {p1, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    sget-object p5, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p5}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Lccsanandroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/g;->d(Z)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    :goto_1
    if-eqz p4, :cond_2

    new-instance p1, Lccsancom/applovin/impl/adview/a;

    sget-object p4, Lccsancom/applovin/impl/sdk/c/b;->cF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0x101007a

    invoke-direct {p1, p2, p3, p4}, Lccsancom/applovin/impl/adview/a;-><init>(Lccsanandroid/content/Context;II)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    const-string p2, "#75FFFFFF"

    invoke-static {p2}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/a;->setColor(I)V

    const-string p2, "#00000000"

    invoke-static {p2}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/a;->setBackgroundColor(I)V

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/adview/a;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    :goto_2
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/g;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->B:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/b/g;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->x()V

    return-void
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

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/b/g;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->C:J

    return-wide p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/b/g;)Lccsancom/applovin/impl/adview/n;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/activity/b/g;)Lccsanandroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    if-eqz p1, :cond_0

    sget v1, Lccsancom/applovin/sdk/R$drawable;->ccsan_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lccsancom/applovin/sdk/R$drawable;->ccsan_mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_XY:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aE()Lccsanandroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aF()Lccsanandroid/net/Uri;

    move-result-object p1

    :goto_1
    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->s()J

    move-result-wide v1

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/g$2;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/g$2;-><init>(Lccsancom/applovin/impl/adview/activity/b/g;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/g;->a(Lccsancom/applovin/impl/adview/n;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(D)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_setVideoMuted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->x()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->m()V

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->x:D

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->s()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->am()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->o:Lccsancom/applovin/impl/sdk/b/b;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a_()V
    .locals 0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->v()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->u()V

    return-void
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->w:D

    return-void
.end method

.method public b_()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->r:Lccsancom/applovin/impl/adview/activity/a/d;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/activity/b/g;->g:Lccsancom/applovin/impl/adview/n;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/activity/b/g;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual/range {v0 .. v5}, Lccsancom/applovin/impl/adview/activity/a/d;->a(Lccsanandroid/widget/ImageView;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/a;Lccsancom/applovin/adview/AppLovinAdView;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/g;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/g;->a(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->f:Lccsancom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->renderAd(Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->b:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/g$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/g$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/g;)V

    invoke-direct {v2, v0, v3}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object v3, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->t()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;JZ)V

    :cond_1
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-super {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->l()V

    invoke-super {p0}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    return-void
.end method

.method protected l()V
    .locals 8

    iget-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->w:D

    double-to-int v3, v0

    iget-boolean v4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->v:Z

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->p()Z

    move-result v5

    iget-wide v6, p0, Lccsancom/applovin/impl/adview/activity/b/g;->B:J

    move-object v2, p0

    invoke-super/range {v2 .. v7}, Lccsancom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method protected p()Z
    .locals 5

    iget-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->w:D

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->P()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected q()Z
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->p()Z

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
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ad()I

    move-result v0

    if-ltz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->ac()J

    move-result-wide v0

    goto :goto_2

    :cond_1
    check-cast v0, Lccsancom/applovin/impl/sdk/a/a;

    iget-wide v4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->x:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lccsancom/applovin/impl/adview/activity/b/g;->x:D

    double-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_2
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

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

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

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
    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/adview/activity/b/g;->a(J)V

    :cond_5
    return-void
.end method

.method public u()V
    .locals 4

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->C:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->B:J

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping video with skip time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/activity/b/g;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->f()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/activity/b/g;->v()V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "InterActivityV2"

    const-string v3, "Showing postitial..."

    invoke-virtual {v0, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "javascript:al_showPostitial();"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->s:Lccsancom/applovin/impl/adview/n;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->t:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->u:Lccsancom/applovin/impl/adview/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->g:Lccsancom/applovin/impl/adview/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->g:Lccsancom/applovin/impl/adview/n;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->u()J

    move-result-wide v1

    new-instance v3, Lccsancom/applovin/impl/adview/activity/b/g$3;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/adview/activity/b/g$3;-><init>(Lccsancom/applovin/impl/adview/activity/b/g;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/applovin/impl/adview/activity/b/g;->a(Lccsancom/applovin/impl/adview/n;JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->g:Lccsancom/applovin/impl/adview/n;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/n;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->n()V

    :cond_5
    return-void
.end method

.method protected w()V
    .locals 3

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:al_setVideoMuted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/g;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/adview/activity/b/g;->d(Z)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/activity/b/g;->A:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/b/g;->a(ZJ)V

    return-void
.end method
