.class public Lccsansan/co/getDownloadingRecordByUrl;
.super Lccsanandroid/view/GestureDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;
    }
.end annotation


# instance fields
.field private getDownloadingList:Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;

    invoke-direct {v0}, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;-><init>()V

    invoke-direct {p0, p1, v0}, Lccsansan/co/getDownloadingRecordByUrl;-><init>(Lccsanandroid/content/Context;Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;)V

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/GestureDetector;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;)V

    .line 4
    iput-object p2, p0, Lccsansan/co/getDownloadingRecordByUrl;->getDownloadingList:Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;

    .line 6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public unifiedDownload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/getDownloadingRecordByUrl;->getDownloadingList:Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;

    invoke-virtual {v0}, Lccsansan/co/getDownloadingRecordByUrl$unifiedDownload;->removeDownloadListener()Z

    move-result v0

    return v0
.end method
