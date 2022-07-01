.class Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;->doActivityAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/BaseLandingPageActivity;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    iput p2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->removeDownloadListener:I

    iput p3, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->unifiedDownload:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 8
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x31

    or-int/lit8 v0, v0, 0x31

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x45

    if-eqz v1, :cond_0

    .line 2
    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0x27

    :goto_0
    const-string v2, "onGlobalLayout"

    const-string v3, "Mads.BaseLandingPage"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 8
    nop

    .line 1
    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$400(Lccsancom/san/landingpage/BaseLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$400(Lccsancom/san/landingpage/BaseLandingPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :goto_1
    iget-object v1, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v1}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$500(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v2}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$500(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    double-to-float v1, v1

    .line 4
    iget-object v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v2}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$500(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/FrameLayout;

    move-result-object v2

    iget v3, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->removeDownloadListener:I

    iget v6, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->unifiedDownload:I

    const/4 v7, 0x0

    invoke-static {v2, v3, v6, v7, v1}, Lccsanandroid/view/ViewAnimationUtils;->createCircularReveal(Lccsanandroid/view/View;IIFF)Lccsanandroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 5
    invoke-virtual {v1, v2, v3}, Lccsanandroid/animation/Animator;->setDuration(J)Lccsanandroid/animation/Animator;

    .line 6
    new-instance v2, Lccsanandroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Lccsanandroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lccsanandroid/animation/Animator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v2, p0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/landingpage/BaseLandingPageActivity;

    invoke-static {v2}, Lccsancom/san/landingpage/BaseLandingPageActivity;->access$500(Lccsancom/san/landingpage/BaseLandingPageActivity;)Lccsanandroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {v1}, Lccsanandroid/animation/Animator;->start()V

    sget v1, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->addDownloadListener:I

    and-int/lit8 v2, v1, 0x45

    xor-int/2addr v0, v1

    or-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v5

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    nop

    .line 2
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x53

    and-int/lit8 v0, v0, 0x53

    or-int/2addr v0, v1

    shl-int/2addr v0, v5

    neg-int v1, v1

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    .line 8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method
