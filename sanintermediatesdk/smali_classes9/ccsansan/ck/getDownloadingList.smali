.class public Lccsansan/ck/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ck/getDownloadingList$unifiedDownload;,
        Lccsansan/ck/getDownloadingList$getDownloadingList;
    }
.end annotation


# instance fields
.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsansan/ck/getDownloadingList$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/ck/getDownloadingList$unifiedDownload;->removeDownloadListener(Lccsansan/ck/getDownloadingList$unifiedDownload;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method private addDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 38
    invoke-static {p1}, Lccsansan/ck/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ck/IncentiveDownloadUtils;)V

    .line 39
    iget-object p1, p1, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lccsansan/ck/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDownloadingList(Lccsansan/ck/IncentiveDownloadUtils;)Z
    .locals 3

    .line 14
    iget-object v0, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/ck/getDownloadedRecordByUrl;

    .line 15
    invoke-interface {v1}, Lccsansan/ck/getDownloadedRecordByUrl;->getActionType()I

    move-result v1

    iget v2, p1, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 2

    .line 16
    :try_start_0
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Mads.Action"

    const-string v1, "startAppMarketWithUrl startBrowserNoChoice"

    .line 20
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lccsansan/bw/resume;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    .line 22
    invoke-direct {p0, p2, p3}, Lccsansan/ck/getDownloadingList;->addDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    return-void

    .line 26
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lccsansan/ck/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 3

    .line 27
    iget-object v0, p3, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget-object v1, p3, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget-object v2, p3, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 30
    iget-object v0, p3, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p3, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    iget-object v1, p3, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-static {p1, v0, p2, v1}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    invoke-direct {p0, p3, p4}, Lccsansan/ck/getDownloadingList;->addDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, v1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    iget-object v2, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/ck/getDownloadedRecordByUrl;

    .line 6
    iget-object v4, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget v5, p2, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-interface {v3, v4, v5}, Lccsansan/ck/getDownloadedRecordByUrl;->shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-interface {v3, p1, v0, v1, p2}, Lccsansan/ck/getDownloadedRecordByUrl;->performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-interface {v3, p1, v0, v1, p2}, Lccsansan/ck/getDownloadedRecordByUrl;->performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, v1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, v1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v2, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    iget-object v2, p0, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/ck/getDownloadedRecordByUrl;

    .line 6
    iget-object v4, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget v5, p2, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-interface {v3, v4, v5}, Lccsansan/ck/getDownloadedRecordByUrl;->shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-interface {v3, p1, v0, v1, p2}, Lccsansan/ck/getDownloadedRecordByUrl;->performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-interface {v3, p1, v0, v1, p2}, Lccsansan/ck/getDownloadedRecordByUrl;->performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    new-instance p1, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p1, v1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;-><init>(Z)V

    invoke-virtual {p1}, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v0, v6, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static/range {p1 .. p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_2

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v10, 0x1

    .line 5
    :goto_1
    iget-object v0, v6, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsansan/ck/getDownloadedRecordByUrl;

    .line 6
    iget-object v0, v7, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-interface {v12, v0, v1}, Lccsansan/ck/getDownloadedRecordByUrl;->shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz v10, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deeplink : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.Action"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "landingPage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v13, v7, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iget-object v14, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    new-instance v15, Lccsansan/ck/getDownloadingList$IncentiveDownloadUtils;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lccsansan/ck/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/ck/getDownloadingList;Lccsansan/ck/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    invoke-interface {v12, v13, v14, v15}, Lccsansan/ck/getDownloadedRecordByUrl;->resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_3

    .line 26
    invoke-interface {v8, v9, v9, v1}, Lccsansan/ck/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_3

    .line 30
    invoke-interface {v8, v9, v9, v1}, Lccsansan/ck/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V
    .locals 16

    .line 14
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v0, v6, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAction type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Mads.Action"

    invoke-static {v9, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static/range {p1 .. p1}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v10, 0x1

    .line 21
    :goto_1
    invoke-direct {v6, v7}, Lccsansan/ck/getDownloadingList;->getDownloadingList(Lccsansan/ck/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-direct/range {p0 .. p3}, Lccsansan/ck/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    return-void

    .line 26
    :cond_3
    iget-object v0, v6, Lccsansan/ck/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsansan/ck/getDownloadedRecordByUrl;

    .line 27
    iget-object v0, v7, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    invoke-interface {v12, v0, v1}, Lccsansan/ck/getDownloadedRecordByUrl;->shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v10, :cond_5

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasNet handleAction :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v13, v7, Lccsansan/ck/IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iget-object v14, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    new-instance v15, Lccsansan/ck/getDownloadingList$removeDownloadListener;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lccsansan/ck/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/ck/getDownloadingList;Lccsansan/ck/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    invoke-interface {v12, v13, v14, v15}, Lccsansan/ck/getDownloadedRecordByUrl;->resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V

    goto :goto_2

    .line 44
    :cond_5
    iget-object v0, v7, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget-object v1, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-interface {v12, v2, v0, v1, v7}, Lccsansan/ck/getDownloadedRecordByUrl;->performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object v0

    if-eqz v8, :cond_4

    .line 46
    iget-boolean v1, v0, Lccsansan/ck/unifiedDownload;->unifiedDownload:Z

    iget-boolean v0, v0, Lccsansan/ck/unifiedDownload;->addDownloadListener:Z

    iget-object v3, v7, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v8, v1, v0, v3}, Lccsansan/ck/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(ZZLjava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_6
    move-object/from16 v2, p1

    goto :goto_2

    .line 46
    :cond_7
    return-void
.end method
