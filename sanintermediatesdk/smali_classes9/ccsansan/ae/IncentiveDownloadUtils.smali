.class public Lccsansan/ae/IncentiveDownloadUtils;
.super Lccsansan/ae/getDownloadingList;
.source ""


# direct methods
.method public constructor <init>(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cs/unifiedDownload;->FILE:Lccsansan/cs/unifiedDownload;

    invoke-direct {p0, v0, p1}, Lccsansan/ae/getDownloadingList;-><init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V

    return-void
.end method


# virtual methods
.method protected getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lccsansan/ae/getDownloadingList;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    .line 3
    const-string v0, "last_time"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl:J

    :cond_0
    nop

    .line 5
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lccsansan/bu/unifiedDownload;->putExtra(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsansan/ae/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V

    return-void
.end method

.method protected unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONObject;)V

    .line 2
    iget-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl:J

    const-string v2, "last_time"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    return-void
.end method
