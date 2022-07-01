.class public Lccsansan/cm/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cm/unifiedDownload$removeDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/cm/unifiedDownload$removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedRecordByUrl:I

.field private getDownloadingList:I

.field private getDownloadingRecordByUrl:I

.field private removeDownloadListener:J

.field private unifiedDownload:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanorg/json/JSONObject;)Lccsansan/cm/unifiedDownload;
    .locals 6

    .line 1
    new-instance v0, Lccsansan/cm/unifiedDownload;

    invoke-direct {v0}, Lccsansan/cm/unifiedDownload;-><init>()V

    .line 2
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/cm/unifiedDownload;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lccsansan/cm/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    const-string v1, "p_p_l"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lccsansan/cm/unifiedDownload;->addDownloadListener(J)V

    .line 7
    const-string v1, "p_p_s"

    invoke-virtual {p0, v1, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lccsansan/cm/unifiedDownload;->removeDownloadListener(J)V

    .line 8
    const-string v1, "p_c_l_d"

    const v2, 0x7fffffff

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lccsansan/cm/unifiedDownload;->unifiedDownload(I)V

    .line 9
    const-string v1, "p_c_l_h"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lccsansan/cm/unifiedDownload;->getDownloadingList(I)V

    .line 10
    const-string v1, "p_c_s_d"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lccsansan/cm/unifiedDownload;->removeDownloadListener(I)V

    .line 11
    const-string v1, "p_c_s_h"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lccsansan/cm/unifiedDownload;->addDownloadListener(I)V

    .line 13
    invoke-static {p0}, Lccsansan/cm/unifiedDownload;->unifiedDownload(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    return-object v0
.end method

.method private addDownloadListener(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cm/unifiedDownload;->getDownloadedRecordByUrl:I

    return-void
.end method

.method private addDownloadListener(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lccsansan/cm/unifiedDownload;->unifiedDownload:J

    return-void
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cm/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method private getDownloadingList(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cm/unifiedDownload;->getDownloadingList:I

    return-void
.end method

.method private removeDownloadListener(I)V
    .locals 0

    .line 21
    iput p1, p0, Lccsansan/cm/unifiedDownload;->getDownloadingRecordByUrl:I

    return-void
.end method

.method private removeDownloadListener(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lccsansan/cm/unifiedDownload;->removeDownloadListener:J

    return-void
.end method

.method private static unifiedDownload(Lccsanorg/json/JSONObject;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/cm/unifiedDownload$removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "s"

    .line 3
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "n_id"

    .line 8
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v4, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lccsansan/cm/unifiedDownload$removeDownloadListener;-><init>(Ljava/lang/String;Lccsansan/cm/unifiedDownload$unifiedDownload;)V

    const-string v5, "s_p_l"

    .line 12
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;J)J

    const-string v5, "s_p_s"

    .line 13
    invoke-virtual {v2, v5, v6, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;J)J

    const-string v5, "s_c_l_d"

    .line 14
    const v6, 0x7fffffff

    invoke-virtual {v2, v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->removeDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I

    const-string v5, "s_c_l_h"

    .line 15
    invoke-virtual {v2, v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->unifiedDownload(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I

    const-string v5, "s_c_s_d"

    .line 16
    invoke-virtual {v2, v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I

    const-string v5, "s_c_s_h"

    .line 17
    invoke-virtual {v2, v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v4, v2}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I

    .line 18
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_2
    return-object v0
.end method

.method private unifiedDownload(I)V
    .locals 0

    .line 16
    iput p1, p0, Lccsansan/cm/unifiedDownload;->IncentiveDownloadUtils:I

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cm/unifiedDownload;->unifiedDownload:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)J
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadingList:I

    return v0
.end method

.method public addDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 22
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->addDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDownloadingList(Ljava/lang/String;)I
    .locals 1

    .line 17
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->unifiedDownload(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingRecordByUrl()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedRecordByUrl:I

    return v0
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadedRecordByUrl(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public removeDownloadListener()I
    .locals 1

    .line 20
    iget v0, p0, Lccsansan/cm/unifiedDownload;->IncentiveDownloadUtils:I

    return v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->removeDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/cm/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdControlConfig{pid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cm/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", placeLoadingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cm/unifiedDownload;->unifiedDownload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", placeShowingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cm/unifiedDownload;->removeDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", placeDailyLoadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", placeHourlyLoadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload;->getDownloadingList:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", placeDailyShowingCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload;->getDownloadingRecordByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", placeHourlyShowingCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload;->getDownloadedRecordByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spotControlMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadingRecordByUrl:I

    return v0
.end method

.method public unifiedDownload(Ljava/lang/String;)J
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/cm/unifiedDownload;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cm/unifiedDownload$removeDownloadListener;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
