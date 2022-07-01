.class public Lccsansan/cu/IncentiveDownloadUtils;
.super Lccsansan/cu/getDownloadedRecordByUrl;
.source ""


# instance fields
.field private final deleteDownItem:J

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cu/getDownloadedRecordByUrl;-><init>(Lccsanorg/json/JSONObject;)V

    .line 2
    invoke-direct {p0}, Lccsansan/cu/IncentiveDownloadUtils;->unifiedDownload()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cu/IncentiveDownloadUtils;->deleteDownItem:J

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "bid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private getDownloadingList(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "seatbid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lccsansan/cu/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private unifiedDownload()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "seatbid"

    .line 4
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadingList(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "bid"

    .line 6
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lccsansan/cu/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "impid"

    .line 15
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "price"

    .line 16
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    const-string v1, "adm"

    .line 17
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v1, "nurl"

    .line 18
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    const-string v1, "lurl"

    .line 19
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0"

    .line 21
    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 23
    :cond_3
    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "${AUCTION_PRICE}"

    if-nez v1, :cond_4

    .line 24
    :try_start_1
    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    .line 26
    :cond_4
    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 27
    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    :cond_5
    const-string v1, "ext"

    .line 30
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/cu/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "placement_id"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cu/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/cu/IncentiveDownloadUtils;->deleteDownItem:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-super {p0}, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
