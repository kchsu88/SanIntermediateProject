.class public abstract Lccsansan/ae/removeDownloadListener;
.super Lccsansan/bu/unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ae/removeDownloadListener$getDownloadingList;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Z

.field protected getDownloadedList:Lccsansan/ae/removeDownloadListener$getDownloadingList;

.field private getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:Lccsansan/cs/unifiedDownload;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lccsansan/bu/unifiedDownload;-><init>()V

    .line 5
    iput-object p1, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    .line 6
    invoke-virtual {p0, p2}, Lccsansan/ae/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V

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
    invoke-direct {p0}, Lccsansan/bu/unifiedDownload;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    .line 3
    invoke-virtual {p0, p2}, Lccsansan/ae/removeDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final deleteDownList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method protected getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ver"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne v0, v1, :cond_2

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne v0, v1, :cond_3

    const-string v0, "versioncode"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    :cond_3
    nop

    .line 21
    const-string v0, "contactid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 21
    :cond_4
    const/4 v0, -0x1

    .line 22
    :goto_0
    nop

    .line 23
    const-string v1, "musicid"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_5
    nop

    .line 25
    const-string v1, "photoid"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 26
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 29
    :cond_6
    iget-object v1, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eq v0, v2, :cond_7

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 32
    :cond_7
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    :cond_8
    nop

    .line 36
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 40
    :cond_9
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 42
    sget-object v2, Lccsansan/ae/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:[I

    iget-object v3, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_a

    goto :goto_1

    :cond_a
    const-string v0, "appname"

    :goto_1
    if-eqz v0, :cond_b

    .line 50
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 51
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    :cond_b
    nop

    .line 56
    const-string v0, "has_thumbnail"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 57
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/ae/removeDownloadListener;->addDownloadListener:Z

    :cond_c
    nop

    .line 60
    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 61
    iput-boolean v1, p0, Lccsansan/ae/removeDownloadListener;->addDownloadListener:Z

    :cond_d
    return-void
.end method

.method public final pause()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method protected removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 2

    .line 2
    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 3
    const-string v0, "ver"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 4
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 5
    const-string v0, "has_thumbnail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lccsansan/ae/removeDownloadListener;->addDownloadListener:Z

    return-void
.end method

.method public final resume()Lccsansan/cs/unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    return-object v0
.end method

.method public final trackReportShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    const-string v1, "ver"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 6
    iget-boolean v0, p0, Lccsansan/ae/removeDownloadListener;->addDownloadListener:Z

    const-string v1, "has_thumbnail"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 7
    invoke-virtual {p0}, Lccsansan/ae/removeDownloadListener;->trackReportShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsansan/ae/removeDownloadListener;->removeDownloadListener:Lccsansan/cs/unifiedDownload;

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const-string v0, "appname"

    .line 16
    :try_start_1
    iget-object v1, p0, Lccsansan/ae/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-void
.end method
