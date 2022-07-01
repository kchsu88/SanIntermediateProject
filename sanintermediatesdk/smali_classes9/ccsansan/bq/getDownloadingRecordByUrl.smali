.class public Lccsansan/bq/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bq/getDownloadingRecordByUrl$getDownloadingList;,
        Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;
    }
.end annotation


# static fields
.field private static volatile addDownloadListener:Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;


# direct methods
.method public static getDownloadingList()Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 2

    .line 3
    sget-object v0, Lccsansan/bq/getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lccsansan/bq/getDownloadingRecordByUrl$getDownloadingList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/bq/getDownloadingRecordByUrl$getDownloadingList;-><init>(Lccsansan/bq/getDownloadingRecordByUrl$IncentiveDownloadUtils;)V

    sput-object v0, Lccsansan/bq/getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    .line 6
    :cond_0
    sget-object v0, Lccsansan/bq/getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    return-object v0
.end method

.method public static removeDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/removeDownloadListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bq/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/removeDownloadListener;)V

    return-void
.end method

.method public static unifiedDownload()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bq/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()V

    return-void
.end method

.method public static unifiedDownload(Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;)V
    .locals 0

    .line 2
    sput-object p0, Lccsansan/bq/getDownloadingRecordByUrl;->addDownloadListener:Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;

    return-void
.end method
