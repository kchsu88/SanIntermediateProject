.class public Lccsansan/bq/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/getErrorCode;->pause()Z

    move-result v0

    return v0
.end method
