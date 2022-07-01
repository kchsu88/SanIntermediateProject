.class public Lccsancom/vungle/warren/tasks/CleanupJob;
.super Ljava/lang/Object;
.source "CleanupJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private final designer:Lccsancom/vungle/warren/persistence/Designer;

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lccsancom/vungle/warren/tasks/CleanupJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/persistence/Designer;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;)V
    .locals 0
    .param p1, "designer"    # Lccsancom/vungle/warren/persistence/Designer;
    .param p2, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p3, "adLoader"    # Lccsancom/vungle/warren/AdLoader;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/CleanupJob;->designer:Lccsancom/vungle/warren/persistence/Designer;

    .line 45
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 46
    iput-object p3, p0, Lccsancom/vungle/warren/tasks/CleanupJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 47
    return-void
.end method

.method public static makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 2

    .line 145
    new-instance v0, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 145
    return-object v0
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 19
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 58
    move-object/from16 v1, p0

    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->designer:Lccsancom/vungle/warren/persistence/Designer;

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 63
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v3, "CleanupJob: Current directory snapshot"

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->designer:Lccsancom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 66
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->designer:Lccsancom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lccsancom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 69
    .local v3, "assets":[Ljava/io/File;
    iget-object v0, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v4, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 70
    .local v4, "cachedPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    const/4 v0, 0x0

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_a

    .line 73
    :cond_1
    iget-object v5, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/Repository;->loadValidPlacements()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 75
    .local v5, "validPlacements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Placement;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v6, "validIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v9, 0x2

    if-eqz v8, :cond_8

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsancom/vungle/warren/model/Placement;
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .local v8, "p":Lccsancom/vungle/warren/model/Placement;
    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v5, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 81
    sget-object v9, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "Placement %s is no longer valid, deleting it and its advertisement"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v0

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v9, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v9, v8}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_2
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v17, v3

    goto/16 :goto_4

    .line 86
    :cond_2
    :try_start_3
    iget-object v10, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v8}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lccsancom/vungle/warren/persistence/Repository;->findAdsForPlacement(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v10

    invoke-virtual {v10}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 87
    .local v10, "ads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_7

    .line 88
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 89
    .local v12, "advertisementId":Ljava/lang/String;
    iget-object v13, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v14, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v13, v12, v14}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/vungle/warren/model/Advertisement;

    .line 90
    .local v13, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-eqz v13, :cond_5

    .line 91
    invoke-virtual {v13}, Lccsancom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-gtz v18, :cond_4

    .line 92
    invoke-virtual {v13}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v14

    if-eq v14, v9, :cond_3

    .line 94
    iget-object v14, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v14, v12}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 97
    iget-object v14, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v8}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v15
    :try_end_3
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v17, v3

    .end local v3    # "assets":[Ljava/io/File;
    .local v17, "assets":[Ljava/io/File;
    const-wide/16 v2, 0x3e8

    :try_start_4
    invoke-virtual {v14, v8, v15, v2, v3}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_3

    .line 92
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_3
    move-object/from16 v17, v3

    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    goto :goto_2

    .line 91
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_4
    move-object/from16 v17, v3

    .line 101
    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    :goto_2
    invoke-virtual {v13}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v2, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting valid adv "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for placement "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 90
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_5
    move-object/from16 v17, v3

    .line 105
    .end local v3    # "assets":[Ljava/io/File;
    .end local v12    # "advertisementId":Ljava/lang/String;
    .end local v13    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    .restart local v17    # "assets":[Ljava/io/File;
    :goto_3
    move-object/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_1

    .line 88
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    goto :goto_4

    .line 87
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_7
    move-object/from16 v17, v3

    .line 108
    .end local v3    # "assets":[Ljava/io/File;
    .end local v8    # "p":Lccsancom/vungle/warren/model/Placement;
    .end local v10    # "ads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "assets":[Ljava/io/File;
    :goto_4
    move-object/from16 v3, v17

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :catch_0
    move-exception v0

    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    goto/16 :goto_8

    .line 135
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :catch_1
    move-exception v0

    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    goto/16 :goto_9

    .line 111
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_8
    move-object/from16 v17, v3

    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    :try_start_5
    iget-object v2, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v3, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_5
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 112
    .local v2, "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    if-eqz v2, :cond_b

    .line 113
    :try_start_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/model/Advertisement;

    .line 114
    .local v7, "ad":Lccsancom/vungle/warren/model/Advertisement;
    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v8

    if-ne v8, v9, :cond_9

    .line 115
    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v8, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found adv in viewing state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 117
    :cond_9
    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 118
    sget-object v8, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    delete ad "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v8, v1, Lccsancom/vungle/warren/tasks/CleanupJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_6
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 121
    .end local v7    # "ad":Lccsancom/vungle/warren/model/Advertisement;
    :cond_a
    :goto_6
    goto :goto_5

    .line 137
    .end local v2    # "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_8

    .line 135
    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_9

    .line 125
    .restart local v2    # "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :cond_b
    if-eqz v17, :cond_d

    .line 126
    move-object/from16 v3, v17

    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :try_start_7
    array-length v7, v3

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_e

    aget-object v9, v3, v8

    .line 127
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "id":Ljava/lang/String;
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 129
    sget-object v11, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "Deleting assets under directory %s"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v0

    invoke-static {v12, v13, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v9}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_7
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 126
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "id":Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 135
    .end local v2    # "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    :catch_4
    move-exception v0

    const/4 v2, 0x1

    goto :goto_9

    .line 125
    .end local v3    # "assets":[Ljava/io/File;
    .restart local v2    # "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    .restart local v17    # "assets":[Ljava/io/File;
    :cond_d
    move-object/from16 v3, v17

    .line 140
    .end local v2    # "cachedAds":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    :cond_e
    nop

    .line 141
    return v0

    .line 137
    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v3, v17

    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    goto :goto_8

    .line 135
    .end local v3    # "assets":[Ljava/io/File;
    .restart local v17    # "assets":[Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v3, v17

    const/4 v2, 0x1

    .end local v17    # "assets":[Ljava/io/File;
    .restart local v3    # "assets":[Ljava/io/File;
    goto :goto_9

    .line 137
    :catch_7
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    :goto_8
    sget-object v2, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    const-string v7, "Failed to delete asset directory!"

    invoke-static {v2, v7, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v2, 0x1

    return v2

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 136
    .local v0, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_9
    return v2

    .line 70
    .end local v0    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v5    # "validPlacements":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/model/Placement;>;"
    .end local v6    # "validIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    :goto_a
    return v0

    .line 59
    .end local v3    # "assets":[Ljava/io/File;
    .end local v4    # "cachedPlacements":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Placement;>;"
    :cond_10
    :goto_b
    return v2
.end method
