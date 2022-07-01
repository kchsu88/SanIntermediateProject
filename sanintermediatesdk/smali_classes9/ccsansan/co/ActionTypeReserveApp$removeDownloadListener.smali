.class Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/co/ActionTypeReserveApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "removeDownloadListener"
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/co/ActionTypeReserveApp;

.field private getDownloadingList:F

.field private removeDownloadListener:Z

.field private unifiedDownload:F


# direct methods
.method constructor <init>(Lccsansan/co/ActionTypeReserveApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/co/ActionTypeReserveApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->removeDownloadListener:Z

    if-nez p1, :cond_1

    return v1

    .line 11
    :cond_1
    iput-boolean v1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->removeDownloadListener:Z

    .line 12
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->getDownloadingList:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Lccsansan/bq/addDownloadListener;->removeDownloadListener()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->unifiedDownload:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Lccsansan/bq/addDownloadListener;->removeDownloadListener()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_3

    .line 13
    iget-object p1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/co/ActionTypeReserveApp;

    iget-object p1, p1, Lccsansan/co/ActionTypeReserveApp;->removeDownloadListener:Lccsansan/co/ActionTypeReserveApp$getDownloadingList;

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1}, Lccsansan/co/ActionTypeReserveApp$getDownloadingList;->getDownloadingList()V

    goto :goto_0

    :cond_2
    nop

    .line 15
    iput-boolean v0, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->removeDownloadListener:Z

    .line 16
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->getDownloadingList:F

    .line 17
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;->unifiedDownload:F

    :cond_3
    :goto_0
    return v1
.end method
