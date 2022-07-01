.class public Lccsansan/i/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I

.field private getDownloadingList:Lccsanandroid/view/ViewGroup;

.field private removeDownloadListener:I

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lccsansan/i/unifiedDownload;->unifiedDownload:J

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/i/unifiedDownload;)Lccsanandroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/unifiedDownload;->getDownloadingList:Lccsanandroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/view/ViewGroup;)Lccsansan/i/unifiedDownload;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/i/unifiedDownload;->getDownloadingList:Lccsanandroid/view/ViewGroup;

    return-object p0
.end method

.method public getDownloadingList(I)Lccsansan/i/unifiedDownload;
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/i/unifiedDownload;->IncentiveDownloadUtils:I

    return-object p0
.end method

.method public unifiedDownload(J)Lccsansan/i/unifiedDownload;
    .locals 0

    .line 4
    iput-wide p1, p0, Lccsansan/i/unifiedDownload;->unifiedDownload:J

    return-object p0
.end method

.method public unifiedDownload()V
    .locals 4

    .line 5
    iget-object v0, p0, Lccsansan/i/unifiedDownload;->getDownloadingList:Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lccsansan/i/unifiedDownload;->getDownloadingList:Lccsanandroid/view/ViewGroup;

    iget v1, p0, Lccsansan/i/unifiedDownload;->IncentiveDownloadUtils:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->setTranslationY(F)V

    .line 11
    iget-object v0, p0, Lccsansan/i/unifiedDownload;->getDownloadingList:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lccsansan/i/unifiedDownload;->IncentiveDownloadUtils:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lccsansan/i/unifiedDownload;->removeDownloadListener:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 13
    new-instance v1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 14
    invoke-virtual {v1, v0}, Lccsanandroid/animation/AnimatorSet;->play(Lccsanandroid/animation/Animator;)Lccsanandroid/animation/AnimatorSet$Builder;

    .line 15
    iget-wide v2, p0, Lccsansan/i/unifiedDownload;->unifiedDownload:J

    invoke-virtual {v1, v2, v3}, Lccsanandroid/animation/AnimatorSet;->setDuration(J)Lccsanandroid/animation/AnimatorSet;

    .line 16
    new-instance v0, Lccsansan/i/unifiedDownload$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/i/unifiedDownload$unifiedDownload;-><init>(Lccsansan/i/unifiedDownload;)V

    invoke-virtual {v1, v0}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 37
    invoke-static {}, Lccsansan/bq/addDownloadListener;->unifiedDownload()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 38
    invoke-virtual {v1}, Lccsanandroid/animation/AnimatorSet;->start()V

    return-void
.end method
