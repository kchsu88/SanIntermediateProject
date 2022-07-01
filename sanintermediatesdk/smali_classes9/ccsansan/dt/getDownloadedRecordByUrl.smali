.class public Lccsansan/dt/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/getDownloadedRecordByUrl$getDownloadingList;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:Lccsanorg/json/JSONObject;

.field private unifiedDownload:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/dt/getDownloadedRecordByUrl;->unifiedDownload:Z

    .line 6
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rid"

    .line 10
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    const-string p1, "pos_id"

    .line 11
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string p1, "sub_pf"

    .line 12
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/getDownloadedRecordByUrl;->addDownloadListener:Ljava/lang/String;

    const-string p1, "params"

    .line 14
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 16
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ret_code"

    const/4 v4, -0x1

    .line 17
    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 19
    iput-object v2, p0, Lccsansan/dt/getDownloadedRecordByUrl;->removeDownloadListener:Lccsanorg/json/JSONObject;

    .line 20
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/dt/getDownloadedRecordByUrl;->unifiedDownload:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    iput-boolean v0, p0, Lccsansan/dt/getDownloadedRecordByUrl;->unifiedDownload:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/dt/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/dt/getDownloadedRecordByUrl;->removeDownloadListener:Lccsanorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lccsansan/dt/getDownloadedRecordByUrl;->removeDownloadListener:Lccsanorg/json/JSONObject;

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rid"

    .line 5
    :try_start_1
    iget-object v3, p0, Lccsansan/dt/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "pos_id"

    .line 6
    :try_start_2
    iget-object v3, p0, Lccsansan/dt/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "sub_pf"

    .line 7
    :try_start_3
    iget-object v3, p0, Lccsansan/dt/getDownloadedRecordByUrl;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "params"

    .line 8
    :try_start_4
    iget-object v3, p0, Lccsansan/dt/getDownloadedRecordByUrl;->removeDownloadListener:Lccsanorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 9
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 11
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
