.class public Lccsancom/vungle/warren/tasks/CacheBustJob;
.super Ljava/lang/Object;
.source "CacheBustJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final client:Lccsancom/vungle/warren/VungleApiClient;

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lccsancom/vungle/warren/tasks/CacheBustJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lccsancom/vungle/warren/tasks/CacheBustJob;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/Repository;Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/AdLoader;)V
    .locals 0
    .param p1, "client"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p2, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "adLoader"    # Lccsancom/vungle/warren/AdLoader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->client:Lccsancom/vungle/warren/VungleApiClient;

    .line 49
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 50
    iput-object p3, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object p4, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 52
    return-void
.end method

.method private bustAd(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/CacheBust;)V
    .locals 21
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "cacheBust"    # Lccsancom/vungle/warren/model/CacheBust;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 209
    :try_start_0
    sget-object v0, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bustAd: deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/AdLoader;->dropCache(Ljava/lang/String;)V

    .line 211
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 212
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->getPlacementIdByAd(Lccsancom/vungle/warren/model/Advertisement;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Placement;

    .line 214
    .local v0, "busted":Lccsancom/vungle/warren/model/Placement;
    if-eqz v0, :cond_1

    .line 215
    new-instance v4, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v4}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    .line 216
    .local v4, "config":Lccsancom/vungle/warren/AdConfig;
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/vungle/warren/AdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 217
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v0, v6, v7, v8}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v5, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    new-instance v15, Lccsancom/vungle/warren/AdLoader$Operation;

    new-instance v7, Lccsancom/vungle/warren/AdRequest;

    .line 221
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lccsancom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 229
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v18

    const/4 v6, 0x0

    new-array v6, v6, [Lccsancom/vungle/warren/LoadAdCallback;

    move-object/from16 v19, v6

    move-object v6, v15

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v6 .. v18}, Lccsancom/vungle/warren/AdLoader$Operation;-><init>(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 220
    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 233
    .end local v4    # "config":Lccsancom/vungle/warren/AdConfig;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/model/CacheBust;->setTimestampProcessed(J)V

    .line 234
    iget-object v4, v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v4, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "busted":Lccsancom/vungle/warren/model/Placement;
    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    sget-object v4, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bustAd: cannot drop cache or delete advertisement for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_1
    return-void
.end method

.method public static makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 250
    new-instance v0, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method private parseAndSaveCacheBust(Lccsancom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lccsancom/google/gson/Gson;)V
    .locals 7
    .param p1, "cacheBustObject"    # Lccsancom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "cacheBustIdType"    # I
    .param p4, "errorLogMessage"    # Ljava/lang/String;
    .param p6, "gson"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/model/CacheBust;",
            ">;",
            "Lccsancom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    .line 118
    .local p5, "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    invoke-virtual {p1, p2}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/gson/JsonElement;

    .line 120
    .local v1, "jsonElement":Lccsancom/google/gson/JsonElement;
    const-class v2, Lccsancom/vungle/warren/model/CacheBust;

    invoke-virtual {p6, v1, v2}, Lccsancom/google/gson/Gson;->fromJson(Lccsancom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/CacheBust;

    .line 121
    .local v2, "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    invoke-virtual {v2}, Lccsancom/vungle/warren/model/CacheBust;->getTimeWindowEnd()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lccsancom/vungle/warren/model/CacheBust;->setTimeWindowEnd(J)V

    .line 123
    invoke-virtual {v2, p3}, Lccsancom/vungle/warren/model/CacheBust;->setIdType(I)V

    .line 124
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :try_start_0
    iget-object v3, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lccsancom/vungle/warren/tasks/CacheBustJob;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#onRunJob"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v1    # "jsonElement":Lccsancom/google/gson/JsonElement;
    .end local v2    # "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    .end local v3    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_1
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method private processBust(Ljava/lang/Iterable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/vungle/warren/model/CacheBust;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "busts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lccsancom/vungle/warren/model/CacheBust;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/CacheBust;

    .line 137
    .local v1, "bust":Lccsancom/vungle/warren/model/CacheBust;
    invoke-virtual {v1}, Lccsancom/vungle/warren/model/CacheBust;->getIdType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 138
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->getAdsByCampaign(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->getAdsByCreative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "adsInRepo":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :goto_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 140
    .local v3, "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 141
    .local v4, "adsToBust":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/model/Advertisement;

    .line 142
    .local v6, "adInRepo":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v6}, Lccsancom/vungle/warren/model/Advertisement;->getServerRequestTimestamp()J

    move-result-wide v7

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/CacheBust;->getTimeWindowEnd()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    invoke-direct {p0, v6}, Lccsancom/vungle/warren/tasks/CacheBustJob;->shouldAdBeBusted(Lccsancom/vungle/warren/model/Advertisement;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    invoke-virtual {v6}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v6    # "adInRepo":Lccsancom/vungle/warren/model/Advertisement;
    :cond_1
    goto :goto_2

    .line 148
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    sget-object v5, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processBust: bust has no relevant ads, deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    iget-object v5, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v1}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lccsancom/vungle/warren/tasks/CacheBustJob;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#processBust"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete obsolete bust "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v5    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    goto/16 :goto_0

    .line 159
    :cond_3
    sget-object v5, Lccsancom/vungle/warren/tasks/CacheBustJob;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/model/CacheBust;->setEventIds([Ljava/lang/String;)V

    .line 160
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/vungle/warren/model/Advertisement;

    .line 161
    .local v6, "adToBust":Lccsancom/vungle/warren/model/Advertisement;
    invoke-direct {p0, v6, v1}, Lccsancom/vungle/warren/tasks/CacheBustJob;->bustAd(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/CacheBust;)V

    .line 162
    .end local v6    # "adToBust":Lccsancom/vungle/warren/model/Advertisement;
    goto :goto_3

    .line 163
    .end local v1    # "bust":Lccsancom/vungle/warren/model/CacheBust;
    .end local v2    # "adsInRepo":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    .end local v3    # "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "adsToBust":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :cond_4
    goto/16 :goto_0

    .line 164
    :cond_5
    return-void
.end method

.method private sendAnalytics()V
    .locals 9

    .line 172
    iget-object v0, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/CacheBust;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    .local v0, "cacheBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 178
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v1, "bustsToSend":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/CacheBust;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/CacheBust;

    .line 180
    .local v3, "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    invoke-virtual {v3}, Lccsancom/vungle/warren/model/CacheBust;->getTimestampProcessed()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 181
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    sget-object v2, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v3, "sendAnalytics: no cachebusts to send analytics"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_3
    :try_start_0
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->client:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v2, v1}, Lccsancom/vungle/warren/VungleApiClient;->bustAnalytics(Ljava/util/Collection;)Lccsancom/vungle/warren/network/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;

    move-result-object v2

    .line 190
    .local v2, "bustAnalytics":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/CacheBust;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .local v4, "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    :try_start_1
    iget-object v5, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v4}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    goto :goto_2

    .line 194
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lccsancom/vungle/warren/CacheBustManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#sendAnalytics"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "can\'t delete bust \" + cacheBust"

    invoke-static {v6, v7}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v4    # "cacheBust":Lccsancom/vungle/warren/model/CacheBust;
    .end local v5    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_2
    goto :goto_1

    :cond_4
    goto :goto_3

    .line 199
    :cond_5
    sget-object v3, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAnalytics: not successful, aborting, response is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    .end local v2    # "bustAnalytics":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    :goto_3
    goto :goto_4

    .line 201
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v4, "sendAnalytics: can\'t execute API call"

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 174
    .end local v1    # "bustsToSend":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/CacheBust;>;"
    :cond_6
    :goto_5
    sget-object v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "sendAnalytics: no cachebusts in repository"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method private shouldAdBeBusted(Lccsancom/vungle/warren/model/Advertisement;)Z
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 167
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 168
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 20
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 57
    move-object/from16 v15, p0

    const-string v0, "cache_bust"

    const-string v1, "last_cache_bust"

    const-string v2, "cacheBustSettings"

    const-string v3, "last_updated"

    sget-object v14, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v4, "CacheBustJob started"

    invoke-static {v14, v4}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v4, v15, Lccsancom/vungle/warren/tasks/CacheBustJob;->client:Lccsancom/vungle/warren/VungleApiClient;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    iget-object v4, v15, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    if-nez v4, :cond_0

    move-object/from16 v3, p1

    move-object v2, v14

    goto/16 :goto_5

    .line 64
    :cond_0
    const/16 v16, 0x2

    :try_start_0
    const-class v6, Lccsancom/vungle/warren/model/Cookie;

    invoke-virtual {v4, v2, v6}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Cookie;

    .line 65
    .local v4, "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    if-nez v4, :cond_1

    .line 66
    new-instance v6, Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {v6, v2}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    move-object v13, v4

    goto :goto_0

    .line 65
    :cond_1
    move-object v13, v4

    .line 68
    .end local v4    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v13, "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    :goto_0
    invoke-virtual {v13, v1}, Lccsancom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v11, v6

    .line 70
    .local v11, "lastCacheBustTime":J
    iget-object v2, v15, Lccsancom/vungle/warren/tasks/CacheBustJob;->client:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v2, v11, v12}, Lccsancom/vungle/warren/VungleApiClient;->cacheBust(J)Lccsancom/vungle/warren/network/Call;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;

    move-result-object v2

    move-object/from16 v17, v2

    .line 71
    .local v17, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 72
    .local v10, "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    iget-object v2, v15, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/Repository;->getUnProcessedBusts()Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    .line 73
    .local v9, "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_2
    new-instance v7, Lccsancom/google/gson/Gson;

    invoke-direct {v7}, Lccsancom/google/gson/Gson;-><init>()V

    .line 79
    .local v7, "gson":Lccsancom/google/gson/Gson;
    invoke-virtual/range {v17 .. v17}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    invoke-virtual/range {v17 .. v17}, Lccsancom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/JsonObject;

    move-object v8, v2

    .line 81
    .local v8, "jsonObject":Lccsancom/google/gson/JsonObject;
    if-eqz v8, :cond_5

    invoke-virtual {v8, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v4, v8

    move-object v6, v9

    move-object v0, v10

    move-wide/from16 v18, v11

    move-object v1, v13

    move-object v2, v14

    goto/16 :goto_1

    .line 86
    :cond_3
    invoke-virtual {v8, v0}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    .line 87
    .local v0, "cacheBustObject":Lccsancom/google/gson/JsonObject;
    invoke-virtual {v0, v3}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    invoke-virtual {v0, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    .line 89
    .local v4, "lastCacheBust":J
    const-wide/16 v18, 0x0

    cmp-long v2, v4, v18

    if-lez v2, :cond_4

    .line 90
    invoke-virtual {v0, v3}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v1, v15, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v13}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 94
    .end local v4    # "lastCacheBust":J
    :cond_4
    const-string v3, "campaign_ids"

    const/4 v4, 0x1

    const-string v5, "cannot save campaignBust="

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lccsancom/vungle/warren/tasks/CacheBustJob;->parseAndSaveCacheBust(Lccsancom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lccsancom/google/gson/Gson;)V

    .line 96
    const-string v1, "creative_ids"

    const/4 v2, 0x2

    const-string v3, "cannot save creativeBust="

    move-object v4, v8

    .end local v8    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .local v4, "jsonObject":Lccsancom/google/gson/JsonObject;
    move-object/from16 v8, p0

    move-object v6, v9

    .end local v9    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .local v6, "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    move-object v9, v0

    move-object v5, v10

    .end local v10    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .local v5, "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    move-object v10, v1

    move-wide/from16 v18, v11

    .end local v11    # "lastCacheBustTime":J
    .local v18, "lastCacheBustTime":J
    move v11, v2

    move-object v12, v3

    move-object v1, v13

    .end local v13    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v1, "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    move-object v13, v5

    move-object v2, v14

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lccsancom/vungle/warren/tasks/CacheBustJob;->parseAndSaveCacheBust(Lccsancom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lccsancom/google/gson/Gson;)V

    move-object v0, v5

    goto :goto_2

    .line 81
    .end local v0    # "cacheBustObject":Lccsancom/google/gson/JsonObject;
    .end local v1    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v4    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v5    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v6    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v18    # "lastCacheBustTime":J
    .restart local v8    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v9    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v10    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v11    # "lastCacheBustTime":J
    .restart local v13    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    :cond_5
    move-object v4, v8

    move-object v6, v9

    move-object v0, v10

    move-wide/from16 v18, v11

    move-object v1, v13

    move-object v2, v14

    .line 82
    .end local v8    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v9    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v10    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v11    # "lastCacheBustTime":J
    .end local v13    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .local v0, "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v1    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .restart local v4    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .restart local v6    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v18    # "lastCacheBustTime":J
    :goto_1
    const-string v3, "CacheBustJob finished - no jsonObject or cache_bust in it"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v5

    .line 79
    .end local v0    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v1    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v4    # "jsonObject":Lccsancom/google/gson/JsonObject;
    .end local v6    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v18    # "lastCacheBustTime":J
    .restart local v9    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v10    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v11    # "lastCacheBustTime":J
    .restart local v13    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    :cond_6
    move-object v6, v9

    move-object v0, v10

    move-wide/from16 v18, v11

    move-object v1, v13

    move-object v2, v14

    .line 99
    .end local v9    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v10    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v11    # "lastCacheBustTime":J
    .end local v13    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .restart local v0    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v1    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .restart local v6    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .restart local v18    # "lastCacheBustTime":J
    :goto_2
    invoke-direct {v15, v0}, Lccsancom/vungle/warren/tasks/CacheBustJob;->processBust(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v15, v3, v1}, Lccsancom/vungle/warren/tasks/CacheBustJob;->updateTimerData(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/model/Cookie;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v0    # "cacheBustList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v1    # "cacheBustCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v6    # "unProcessedBusts":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/CacheBust;>;"
    .end local v7    # "gson":Lccsancom/google/gson/Gson;
    .end local v17    # "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    .end local v18    # "lastCacheBustTime":J
    nop

    .line 109
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/tasks/CacheBustJob;->sendAnalytics()V

    .line 111
    const-string v0, "CacheBustJob finished"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v16

    .line 104
    :catch_0
    move-exception v0

    goto :goto_3

    .line 101
    :catch_1
    move-exception v0

    goto :goto_4

    .line 104
    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    .line 105
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_3
    sget-object v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "CacheBustJob failed - DBException"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return v16

    .line 101
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_3
    move-exception v0

    move-object/from16 v3, p1

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    sget-object v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "CacheBustJob failed - IOException"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return v16

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    move-object/from16 v3, p1

    move-object v2, v14

    .line 59
    :goto_5
    const-string v0, "CacheBustJob finished - no client or repository"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v5
.end method

.method protected updateTimerData(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/model/Cookie;)V
    .locals 5
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .param p2, "cacheBustCookie"    # Lccsancom/vungle/warren/model/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 241
    const-string v0, "cache_bust_interval"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 242
    .local v0, "cacheBustInterval":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 243
    nop

    .line 244
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 243
    const-string v3, "next_cache_bust"

    invoke-virtual {p2, v3, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/CacheBustJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, p2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 247
    return-void
.end method
