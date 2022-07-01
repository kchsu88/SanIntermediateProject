.class Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;
.super Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/co/getDownloadingRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation


# instance fields
.field getDownloadingList:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;->getDownloadingList:Z

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;->getDownloadingList:Z

    .line 2
    invoke-super {p0, p1}, Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method removeDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;->getDownloadingList:Z

    return v0
.end method
