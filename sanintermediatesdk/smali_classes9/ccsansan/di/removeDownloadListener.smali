.class public Lccsansan/di/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/di/removeDownloadListener;


# instance fields
.field private final getDownloadingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/di/removeDownloadListener;->getDownloadingList:Ljava/util/Map;

    .line 16
    invoke-direct {p0}, Lccsansan/di/removeDownloadListener;->addDownloadListener()V

    return-void
.end method

.method private addDownloadListener(Ljava/lang/String;)I
    .locals 6

    .line 24
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 29
    invoke-direct {p0, p1}, Lccsansan/di/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    .line 30
    iget-object v4, p0, Lccsansan/di/removeDownloadListener;->getDownloadingList:Ljava/util/Map;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    rem-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getForceAdId error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ForceRequestManager"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private addDownloadListener()V
    .locals 8

    .line 1
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x134f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "1131"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "1130"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0x1352

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x1351

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v4, 0x1349

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/16 v4, 0x135c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "1133"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/Integer;

    const/16 v4, 0x134b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x134a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "1132"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v4, 0x1374

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x1375

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x1376

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "1152"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->getDownloadingList:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static unifiedDownload()Lccsansan/di/removeDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/di/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/di/removeDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/di/removeDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/di/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/di/removeDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/di/removeDownloadListener;

    invoke-direct {v1}, Lccsansan/di/removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/di/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/di/removeDownloadListener;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/di/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/di/removeDownloadListener;

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lccsansan/di/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)I

    move-result p1

    .line 11
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 12
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 13
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONArray;->put(I)Lccsanorg/json/JSONArray;

    .line 14
    const-string p1, "aids"

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 15
    const-string p1, "pos_id"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method public unifiedDownload(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, p0, Lccsansan/di/removeDownloadListener;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
