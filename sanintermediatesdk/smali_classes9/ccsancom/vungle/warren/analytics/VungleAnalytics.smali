.class public Lccsancom/vungle/warren/analytics/VungleAnalytics;
.super Ljava/lang/Object;
.source "VungleAnalytics.java"

# interfaces
.implements Lccsancom/vungle/warren/analytics/AdAnalytics;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final client:Lccsancom/vungle/warren/VungleApiClient;

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lccsancom/vungle/warren/analytics/VungleAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "client"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p2, "repository"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->client:Lccsancom/vungle/warren/VungleApiClient;

    .line 33
    iput-object p2, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "urls"    # [Ljava/lang/String;

    .line 38
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 42
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    :try_start_0
    iget-object v5, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->client:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v5, v4}, Lccsancom/vungle/warren/VungleApiClient;->pingTPAT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 47
    :cond_1
    iget-object v5, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v6, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v6, v4}, Lccsancom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v5

    .line 59
    .local v5, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    sget-object v6, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t delete sent ping URL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 51
    .end local v5    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_1
    move-exception v5

    .line 53
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_1
    iget-object v6, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v7, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v7, v4}, Lccsancom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    goto :goto_1

    .line 54
    :catch_2
    move-exception v6

    .line 55
    .local v6, "dbException":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    sget-object v7, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DBException deleting : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v6    # "dbException":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_1
    sget-object v6, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/net/MalformedURLException;
    goto :goto_2

    .line 49
    :catch_3
    move-exception v5

    .line 50
    .local v5, "e":Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;
    sget-object v6, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleartext Network Traffic is Blocked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "e":Lccsancom/vungle/warren/VungleApiClient$ClearTextTrafficException;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 63
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public retryUnsent()[Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    .local v0, "analyticUrls":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/AnalyticUrl;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 90
    .local v1, "urls":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/AnalyticUrl;

    iget-object v3, v3, Lccsancom/vungle/warren/model/AnalyticUrl;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/analytics/VungleAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 95
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method public ri(Lccsancom/google/gson/JsonObject;)V
    .locals 2
    .param p1, "object"    # Lccsancom/google/gson/JsonObject;

    .line 68
    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->client:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/VungleApiClient;->ri(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/analytics/VungleAnalytics$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/analytics/VungleAnalytics$1;-><init>(Lccsancom/vungle/warren/analytics/VungleAnalytics;)V

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/network/Call;->enqueue(Lccsancom/vungle/warren/network/Callback;)V

    .line 82
    return-void
.end method

.method public saveVungleUrls([Ljava/lang/String;)V
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 101
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lccsancom/vungle/warren/utility/VungleUrlUtility;->isVungleUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    :try_start_0
    iget-object v3, p0, Lccsancom/vungle/warren/analytics/VungleAnalytics;->repository:Lccsancom/vungle/warren/persistence/Repository;

    new-instance v4, Lccsancom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v4, v2}, Lccsancom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    sget-object v4, Lccsancom/vungle/warren/analytics/VungleAnalytics;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t save failed to ping URL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method
