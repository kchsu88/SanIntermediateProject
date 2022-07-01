.class public final Lccsansan/cv/getPackageNameByRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private addDownloadListener:J

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener()Lccsansan/cv/getPackageNameByRecord;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload:J

    .line 2
    iput-wide v0, p0, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener:J

    return-object p0
.end method

.method public getDownloadingList()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener:J

    sub-long v2, v0, v2

    .line 3
    iput-wide v0, p0, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener:J

    return-wide v2
.end method

.method public unifiedDownload()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
