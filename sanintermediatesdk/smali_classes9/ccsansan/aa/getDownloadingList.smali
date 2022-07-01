.class public Lccsansan/aa/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addDownloadListener()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bt/getDownloadedRecordByUrl;->removeDownloadListener()Z

    move-result v0

    return v0
.end method
