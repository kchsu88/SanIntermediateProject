.class public Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;
.super Lccsancom/applovin/impl/mediation/ads/a;

# interfaces
.implements Lccsancom/applovin/impl/sdk/d$a;
.implements Lccsancom/applovin/impl/sdk/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;,
        Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;,
        Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;
    }
.end annotation


# instance fields
.field private final a:Lccsanandroid/app/Activity;

.field private final b:Lccsancom/applovin/mediation/ads/MaxAdView;

.field private final c:Lccsanandroid/view/View;

.field private d:J

.field private e:Lccsancom/applovin/impl/mediation/a/b;

.field private f:Ljava/lang/String;

.field private final g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

.field private final h:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

.field private final i:Lccsancom/applovin/impl/sdk/d;

.field private final j:Lccsancom/applovin/impl/sdk/w;

.field private final k:Lccsancom/applovin/impl/sdk/x;

.field private final l:Ljava/lang/Object;

.field private m:Lccsancom/applovin/impl/mediation/a/b;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/ads/MaxAdView;Lccsanandroid/view/View;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/app/Activity;)V
    .locals 1

    const-string v0, "MaxAdView"

    invoke-direct {p0, p1, p2, v0, p5}, Lccsancom/applovin/impl/mediation/ads/a;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    if-eqz p6, :cond_0

    iput-object p6, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Lccsanandroid/app/Activity;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Lccsanandroid/view/View;

    new-instance p2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p2, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    new-instance p2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    invoke-direct {p2, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    new-instance p1, Lccsancom/applovin/impl/sdk/d;

    invoke-direct {p1, p5, p0}, Lccsancom/applovin/impl/sdk/d;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/d$a;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    new-instance p1, Lccsancom/applovin/impl/sdk/w;

    invoke-direct {p1, p3, p5}, Lccsancom/applovin/impl/sdk/w;-><init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lccsancom/applovin/impl/sdk/w;

    new-instance p1, Lccsancom/applovin/impl/sdk/x;

    invoke-direct {p1, p3, p5, p0}, Lccsancom/applovin/impl/sdk/x;-><init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/x$a;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lccsancom/applovin/impl/sdk/x;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Created new MaxAdView ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;)Lccsancom/applovin/impl/mediation/a/b;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Lccsanandroid/view/View;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lccsancom/applovin/impl/sdk/x;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/x;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lccsancom/applovin/mediation/MaxAd;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(J)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->z:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->bitMaskContainsFlag(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undesired flags matched - current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", undesired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "Waiting for refresh timer to manually fire request"

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "No undesired viewability flags matched - scheduling viewability"

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b()V

    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->s()Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->s()Lccsanandroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->v:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/view/View;Lccsancom/applovin/impl/mediation/a/b;)V
    .locals 7

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/a/b;->q()I

    move-result v0

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/a/b;->r()I

    move-result p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v2

    :goto_0
    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v3}, Lccsancom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4}, Lccsancom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v4

    if-lez v3, :cond_2

    if-lt v3, v1, :cond_3

    :cond_2
    if-lez v4, :cond_4

    if-ge v4, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n**************************************************\n`MaxAdView` size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dp smaller than required size: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dp\n**************************************************\n"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLovinSdk"

    invoke-static {v0, p2}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    :cond_5
    iput v2, p2, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p2, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    instance-of v0, p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pinning ad view to MAX ad view with width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and height: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->getGravity()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/o;->a(III)[I

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/mediation/a/b;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/mediation/a/b;J)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Scheduling viewability impression for ad..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->processViewabilityAdImpressionPostback(Lccsancom/applovin/impl/mediation/a/b;JLccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/mediation/a/b;Lccsanandroid/view/View;Lccsancom/applovin/mediation/ads/MaxAdView;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/b;->E()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Lccsanandroid/view/View;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/b;->E()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Lccsanandroid/view/View;

    long-to-int v1, v0

    invoke-virtual {v2, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p3, p2}, Lccsancom/applovin/mediation/ads/MaxAdView;->addView(Lccsanandroid/view/View;)V

    invoke-direct {p0, p2, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsanandroid/view/View;Lccsancom/applovin/impl/mediation/a/b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object p3, Lccsancom/applovin/impl/sdk/c/a;->u:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(J)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsanandroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsanandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;Lccsanandroid/view/View;Lccsancom/applovin/mediation/ads/MaxAdView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/a/b;Lccsanandroid/view/View;Lccsancom/applovin/mediation/ads/MaxAdView;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "Failed to load new ad - this instance is already destroyed"

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    invoke-static {v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/n;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering precache request ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lccsancom/applovin/impl/mediation/a/b;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    :goto_0
    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxError;)V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->o:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring banner ad refresh for error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->n:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling failed banner ad refresh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds from now for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/d;->a(J)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/w;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lccsancom/applovin/impl/sdk/w;

    return-object p0
.end method

.method private b()V
    .locals 7

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->A:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling refresh precache request in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    new-instance v4, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$3;

    invoke-direct {v4, p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$3;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    invoke-direct {v2, v3, v4}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/c/c;->a(Lccsancom/applovin/mediation/MaxAdFormat;)Lccsancom/applovin/impl/sdk/e/o$a;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;J)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/a/b;)V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lccsancom/applovin/mediation/ads/MaxAdView;

    return-object p0
.end method

.method private c()Z
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->A:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsanandroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic e(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    return-void
.end method

.method static synthetic f(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/x;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lccsancom/applovin/impl/sdk/x;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    return-object p0
.end method

.method static synthetic i(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    return-object p0
.end method

.method static synthetic j(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    return p0
.end method

.method static synthetic k(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->aj()Lccsancom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/n;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lccsancom/applovin/mediation/MaxAd;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d;->c()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAdFormat()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Loading ad for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->B:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load a new ad. An ad refresh has already been scheduled in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public onAdRefresh()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing for cached ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/a/b;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lccsancom/applovin/impl/mediation/a/b;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network due to viewability requirements not met for refresh request..."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network..."

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd()V

    :goto_1
    return-void
.end method

.method public onLogVisibilityImpression()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lccsancom/applovin/impl/sdk/w;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/w;->a(Lccsancom/applovin/impl/mediation/a/b;)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->s:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/o;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view visible"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d;->g()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view hidden"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement for ad unit ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") was set after load was called. For the ads to be correctly attributed to this placement, please set the placement before loading the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setPublisherBackgroundColor(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    return-void
.end method

.method public startAutoRefresh()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d;->e()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed auto-refresh with remaining time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAutoRefresh()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lccsancom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing auto-refresh with remaining time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lccsancom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Stopping auto-refresh has no effect until after the first ad has been loaded."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdView{adUnitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", adListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDestroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
