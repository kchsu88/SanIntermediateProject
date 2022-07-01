.class public abstract Lccsansan/bk/unifiedDownload;
.super Lccsansan/bk/getDownloadingList;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/bk/getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract IncentiveDownloadUtils(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lccsansan/bk/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method
