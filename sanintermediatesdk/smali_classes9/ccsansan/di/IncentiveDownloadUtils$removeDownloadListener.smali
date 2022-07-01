.class final Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsanorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsanorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Lccsanorg/json/JSONArray;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Lccsanorg/json/JSONArray;

    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Lccsanorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 4
    const-string v3, "cid"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v1

    iget-object v2, p0, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:Lccsanorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lccsansan/dc/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONArray;)V

    .line 11
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Ljava/util/List;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#handleUnExistAds :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsDataHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
