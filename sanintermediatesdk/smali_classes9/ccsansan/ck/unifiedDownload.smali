.class public Lccsansan/ck/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field public addDownloadListener:Z

.field public removeDownloadListener:Z

.field public unifiedDownload:Z


# direct methods
.method public constructor <init>(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/ck/unifiedDownload;->unifiedDownload:Z

    .line 3
    invoke-static {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z

    .line 4
    invoke-static {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z

    move-result p1

    iput-boolean p1, p0, Lccsansan/ck/unifiedDownload;->removeDownloadListener:Z

    return-void
.end method
