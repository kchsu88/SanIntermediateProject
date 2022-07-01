.class public abstract Lccsansan/ae/getDownloadingList;
.super Lccsansan/ae/removeDownloadListener;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private deleteDownItem:Ljava/lang/String;

.field protected getDownloadedRecordByUrl:J

.field private getDownloadingList:J

.field private removeDownloadListener:Ljava/lang/String;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsansan/ae/removeDownloadListener;-><init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V

    return-void
.end method

.method public constructor <init>(Lccsansan/cs/unifiedDownload;Lccsanorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/ae/removeDownloadListener;-><init>(Lccsansan/cs/unifiedDownload;Lccsanorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ae/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    return-void
.end method

.method public final deleteDownItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lccsansan/ae/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lccsansan/ae/getDownloadingList;

    .line 3
    invoke-virtual {p1}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedCount()Lccsanorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toJSON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentItem"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadedList()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadingList:J

    return-wide v0
.end method

.method public final getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDownloadingCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method protected getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 11
    invoke-super {p0, p1}, Lccsansan/ae/removeDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    .line 13
    const-string v0, "filesize"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadingList:J

    :cond_0
    nop

    .line 16
    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    goto :goto_0

    :cond_1
    nop

    .line 19
    iput-object v2, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 22
    :goto_0
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "fileid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 24
    :cond_2
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "rawfilename"

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    :cond_3
    nop

    .line 27
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    goto :goto_1

    :cond_4
    nop

    .line 30
    iput-object v2, p0, Lccsansan/ae/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    :goto_1
    nop

    .line 32
    const-string v0, "datemodified"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl:J

    .line 34
    const-string v0, "thumbnailpath"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_3

    :cond_6
    nop

    .line 37
    iput-object v2, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    :goto_3
    nop

    .line 39
    const-string v0, "format"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    goto :goto_4

    :cond_7
    nop

    .line 42
    iput-object v2, p0, Lccsansan/ae/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    :goto_4
    nop

    .line 44
    const-string v0, "third_src"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ae/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    return-void
.end method

.method public final getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    return-object v0
.end method

.method protected removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lccsansan/ae/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 2
    const-string v0, "file_size"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadingList:J

    .line 3
    const-string v0, "file_path"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 4
    const-string v0, "date_modified"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl:J

    .line 5
    const-string v0, "is_exist"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Z)Z

    .line 6
    const-string v0, "thumbnail_path"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 7
    const-string v0, "mimetype"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    const-string v0, "third_src"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ae/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadedList:Lccsansan/ae/removeDownloadListener$getDownloadingList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentItem [Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/ae/removeDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Keys empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener$getDownloadingList;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method

.method public final unifiedDownload(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lccsansan/ae/getDownloadingList;->getDownloadingList:J

    return-void
.end method

.method public final unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lccsansan/ae/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method protected unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lccsansan/ae/removeDownloadListener;->unifiedDownload(Lccsanorg/json/JSONObject;)V

    .line 3
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filepath"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rawfilename"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadedList()J

    move-result-wide v0

    const-string v2, "filesize"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 6
    iget-wide v0, p0, Lccsansan/ae/getDownloadingList;->getDownloadedRecordByUrl:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 7
    const-string v2, "datemodified"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lccsansan/ae/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "thumbnailpath"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    :cond_1
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 14
    :cond_2
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "third_src"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_3
    return-void
.end method

.method public final unifiedDownload(Z)V
    .locals 0

    return-void
.end method
