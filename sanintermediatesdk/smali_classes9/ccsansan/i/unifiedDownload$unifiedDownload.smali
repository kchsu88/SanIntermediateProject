.class Lccsansan/i/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/unifiedDownload;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/i/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/i/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsansan/i/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/i/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsansan/i/unifiedDownload;

    invoke-static {p1}, Lccsansan/i/unifiedDownload;->getDownloadingList(Lccsansan/i/unifiedDownload;)Lccsanandroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
