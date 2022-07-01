.class public Lccsansan/ae/unifiedDownload;
.super Lccsansan/ae/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;,
        Lccsansan/ae/unifiedDownload$getDownloadingList;
    }
.end annotation


# instance fields
.field protected IncentiveDownloadUtils:Z

.field protected addDownloadListener:Ljava/lang/String;

.field protected deleteDownItem:Lccsansan/ae/unifiedDownload$getDownloadingList;

.field protected getDownloadStatusByUrl:Lccsansan/bc/unifiedDownload$unifiedDownload;

.field private getDownloadedCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field protected getDownloadingList:Z

.field private getDownloadingRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected removeDownloadListener:Ljava/lang/String;

.field protected unifiedDownload:I


# direct methods
.method public constructor <init>(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 1

    .line 2
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-direct {p0, v0, p1}, Lccsansan/ae/getDownloadingList;-><init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-direct {p0, v0, p1}, Lccsansan/ae/getDownloadingList;-><init>(Lccsansan/cs/unifiedDownload;Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsansan/ae/getDownloadingList;-><init>(Lccsansan/cs/unifiedDownload;Lccsancom/san/xz/base/getDownloadingList;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    return-void
.end method

.method public addDownloadListener()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lccsansan/ae/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method protected getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-super {p0, p1}, Lccsansan/ae/getDownloadingList;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    .line 14
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    .line 15
    const-string v0, "versionname"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    .line 16
    const-string v0, "versioncode"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/ae/unifiedDownload;->unifiedDownload:I

    .line 18
    const-string v0, "is_system_app"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lccsansan/ae/unifiedDownload;->IncentiveDownloadUtils:Z

    .line 19
    const-string v0, "is_enabled"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingList:Z

    .line 20
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lccsansan/bc/unifiedDownload$unifiedDownload;->fromInt(I)Lccsansan/bc/unifiedDownload$unifiedDownload;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    :goto_3
    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadStatusByUrl:Lccsansan/bc/unifiedDownload$unifiedDownload;

    .line 21
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lccsansan/ae/unifiedDownload$getDownloadingList;->fromInt(I)Lccsansan/ae/unifiedDownload$getDownloadingList;

    move-result-object v0

    goto :goto_4

    :cond_4
    sget-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->UNKNOWN:Lccsansan/ae/unifiedDownload$getDownloadingList;

    :goto_4
    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->deleteDownItem:Lccsansan/ae/unifiedDownload$getDownloadingList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 23
    const-string v0, "split_names"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    :goto_5
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 26
    iget-object v3, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 29
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadedCount:Ljava/util/List;

    .line 30
    const-string v0, "app_datas"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 32
    :goto_6
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 33
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lccsansan/ae/unifiedDownload;->getDownloadedCount:Ljava/util/List;

    new-instance v3, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v3, v0}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsanorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method protected removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lccsansan/ae/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 2
    const-string v0, "package_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    .line 3
    const-string v0, "version_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsansan/ae/unifiedDownload;->unifiedDownload:I

    .line 4
    const-string v0, "version_name"

    invoke-virtual {p1, v0, v1}, Lccsancom/san/xz/base/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    .line 5
    const-string v0, "is_system_app"

    invoke-virtual {p1, v0, v2}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/ae/unifiedDownload;->IncentiveDownloadUtils:Z

    .line 6
    const-string v0, "is_enabled"

    invoke-virtual {p1, v0, v2}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingList:Z

    .line 7
    sget-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->UNKNOWN:Lccsansan/ae/unifiedDownload$getDownloadingList;

    const-string v1, "category_location"

    invoke-virtual {p1, v1, v0}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/ae/unifiedDownload$getDownloadingList;

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->deleteDownItem:Lccsansan/ae/unifiedDownload$getDownloadingList;

    .line 8
    sget-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    const-string v1, "category_type"

    invoke-virtual {p1, v1, v0}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/bc/unifiedDownload$unifiedDownload;

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadStatusByUrl:Lccsansan/bc/unifiedDownload$unifiedDownload;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "split_names"

    invoke-virtual {p1, v1, v0}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "data_paths"

    invoke-virtual {p1, v1, v0}, Lccsancom/san/xz/base/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lccsansan/ae/unifiedDownload;->getDownloadedCount:Ljava/util/List;

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
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    const-string v1, "packagename"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    const-string v1, "versionname"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget v0, p0, Lccsansan/ae/unifiedDownload;->unifiedDownload:I

    const-string v1, "versioncode"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 5
    iget-boolean v0, p0, Lccsansan/ae/unifiedDownload;->IncentiveDownloadUtils:Z

    const-string v1, "is_system_app"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 6
    iget-boolean v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingList:Z

    const-string v1, "is_enabled"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadStatusByUrl:Lccsansan/bc/unifiedDownload$unifiedDownload;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lccsansan/bc/unifiedDownload$unifiedDownload;->toInt()I

    move-result v0

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 10
    :cond_0
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->deleteDownItem:Lccsansan/ae/unifiedDownload$getDownloadingList;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lccsansan/ae/unifiedDownload$getDownloadingList;->toInt()I

    move-result v0

    const-string v1, "location"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lccsanorg/json/JSONArray;

    iget-object v1, p0, Lccsansan/ae/unifiedDownload;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "split_names"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 17
    :cond_2
    iget-object v0, p0, Lccsansan/ae/unifiedDownload;->getDownloadedCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 19
    iget-object v1, p0, Lccsansan/ae/unifiedDownload;->getDownloadedCount:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;

    .line 20
    invoke-virtual {v2}, Lccsansan/ae/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    :cond_3
    nop

    .line 21
    const-string v1, "app_datas"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_4
    return-void
.end method
