.class public Lccsansan/bw/valueOf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Lccsansan/cv/resume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bw/valueOf$getDownloadingList;

    invoke-direct {v0}, Lccsansan/bw/valueOf$getDownloadingList;-><init>()V

    sput-object v0, Lccsansan/bw/valueOf;->IncentiveDownloadUtils:Lccsansan/cv/resume;

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 5
    invoke-static {p0}, Lccsansan/bw/getThumbPathByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccsansan/bw/valueOf;->getDownloadingList(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/valueOf;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/io/File;

    :cond_0
    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadedList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static deleteDownItem(Lccsansan/dt/removeDownloadListener;)Lccsanandroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/valueOf;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "image"

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 30
    :cond_0
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    const-string v1, "video"

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadStatusByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 34
    :cond_1
    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadedRecordByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadStatusByUrl(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 39
    :cond_2
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getErrorCode;->trackReportClick(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "vast"

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 47
    :cond_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lccsansan/bw/valueOf;->deleteDownList(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 48
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "landingpage"

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 49
    :cond_4
    new-instance p0, Lccsanandroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static deleteDownList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/deleteDownItem;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/valueOf;->removeDownloadListener(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static getDownloadStatusByUrl(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static getDownloadedList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v2, "source"

    const-string v3, "new"

    .line 2
    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "reid"

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "ad_id"

    .line 4
    :try_start_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v2, "pid"

    .line 5
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "placement_id"

    .line 6
    :try_start_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "creative_id"

    .line 7
    :try_start_4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "adnet"

    .line 8
    :try_start_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/deleteDownList;->removeDownloadListener()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    :try_start_6
    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v2, "adtype"

    const-string v3, "native"

    .line 9
    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "formatid"

    .line 10
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static getDownloadedList(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-static {p0}, Lccsansan/bw/getThumbPathByRecord;->getDownloadingList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getDownloadedRecordByUrl(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingCount()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static getDownloadingList(Ljava/lang/String;Z)Ljava/io/File;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lccsansan/bw/getThumbPathByRecord;->removeDownloadListener(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getDownloadingList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "formatid"

    const-string v1, "adtype"

    const-string v2, "adnet"

    const-string v3, "creative_id"

    const-string v4, "placement_id"

    const-string v5, "pid"

    const-string v6, "ad_id"

    const-string v7, "reid"

    const-string v8, "source"

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    new-instance v10, Lccsanorg/json/JSONObject;

    invoke-direct {v10, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v10, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v10, v7}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v10, v6}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v10, v5}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v10, v4}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v10, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v10, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v10, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object v9
.end method

.method private static getDownloadingList(Ljava/util/List;JILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    sget-object v5, Lccsansan/bw/valueOf;->IncentiveDownloadUtils:Lccsansan/cv/resume;

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/util/List;JILjava/lang/String;Lccsansan/cv/resume;)V

    return-void
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lccsansan/dt/deleteDownItem;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Lccsansan/dt/deleteDownItem;->unifiedDownload()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v4

    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadedList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v5, v3, v0}, Lccsansan/bw/valueOf;->removeDownloadListener(Ljava/util/List;JILjava/lang/String;)V

    .line 19
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v0

    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadedList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, v1, v3, p0}, Lccsansan/bw/valueOf;->getDownloadingList(Ljava/util/List;JILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static getDownloadingRecordByUrl(Lccsansan/dt/removeDownloadListener;)Z
    .locals 6

    .line 2
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lccsansan/bw/valueOf;->getDownloadingList(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static removeDownloadListener(Ljava/util/List;JILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    sget-object v5, Lccsansan/bw/valueOf;->IncentiveDownloadUtils:Lccsansan/cv/resume;

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/util/List;JILjava/lang/String;Lccsansan/cv/resume;)V

    return-void
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Lccsansan/cv/getThumbPathByRecord;J)V

    return-void
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;Lccsansan/cv/getThumbPathByRecord;J)V
    .locals 10

    .line 3
    invoke-static {p0}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 11
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1, v5, v6}, Lccsansan/cv/getThumbPathByRecord;->removeDownloadListener(J)V

    :cond_1
    return-void

    .line 17
    :cond_2
    invoke-static {v0}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1, v5, v6}, Lccsansan/cv/getThumbPathByRecord;->removeDownloadListener(J)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v7

    new-instance v9, Lccsansan/bw/valueOf$addDownloadListener;

    move-object v1, v9

    move-object v2, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lccsansan/bw/valueOf$addDownloadListener;-><init>(Ljava/lang/String;JLccsansan/cv/getThumbPathByRecord;Lccsansan/dt/removeDownloadListener;)V

    const/4 v4, 0x1

    const-string v5, ""

    move-object v1, v0

    move-wide v2, v7

    move-object v6, v9

    move-wide v7, p2

    invoke-static/range {v1 .. v8}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;JILjava/lang/String;Lccsansan/cv/resume;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bw/getThumbPathByRecord;->addDownloadListener(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static removeDownloadListener(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 50
    :cond_1
    move v0, v1

    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    :goto_0
    return v0
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadingList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lccsansan/dt/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {v1}, Lccsansan/dt/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setPassengerHBParams()J

    move-result-wide v0

    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadedList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, p0}, Lccsansan/bw/valueOf;->getDownloadingList(Ljava/util/List;JILjava/lang/String;)V

    return-void
.end method
