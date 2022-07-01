.class public Lccsansan/cj/getDownloadingRecordByUrl;
.super Lccsansan/cj/unifiedDownload;
.source ""


# direct methods
.method public constructor <init>(Lccsansan/cj/removeDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cj/unifiedDownload;-><init>(Lccsansan/cj/removeDownloadListener;)V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedList:J

    return-void
.end method
