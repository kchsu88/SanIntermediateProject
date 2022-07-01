.class public Lccsansan/ck/getDownloadingCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ck/getDownloadingCount$addDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/ck/getDownloadingList;

.field private addDownloadListener:J

.field private getDownloadingList:Lccsansan/ck/getDownloadingList;

.field private getDownloadingRecordByUrl:Z

.field private removeDownloadListener:Lccsansan/ck/getDownloadingList;

.field private unifiedDownload:Lccsansan/ck/getDownloadingList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/ck/getDownloadingCount;->addDownloadListener:J

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsansan/ck/getDownloadingList;
    .locals 2

    .line 5
    new-instance v0, Lccsansan/ck/getDownloadingList$unifiedDownload;

    invoke-direct {v0}, Lccsansan/ck/getDownloadingList$unifiedDownload;-><init>()V

    .line 6
    invoke-static {}, Lccsansan/ck/removeDownloadListener;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/ck/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Ljava/util/List;)Lccsansan/ck/getDownloadingList$unifiedDownload;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload()Lccsansan/ck/getDownloadingList;

    move-result-object v0

    return-object v0
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->removeDownloadListener:Lccsansan/ck/getDownloadingList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Lccsansan/ck/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    iget-boolean p1, p1, Lccsansan/ck/unifiedDownload;->unifiedDownload:Z

    return p1
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z
    .locals 2

    .line 10
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingList:Lccsansan/ck/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadedList:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iput-boolean v1, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingRecordByUrl:Z

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 18
    const/4 v0, 0x1

    invoke-interface {p3, v0, v1, p2, v0}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->unifiedDownload(ZZLjava/lang/String;I)V

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static addDownloadListener(I)Lccsansan/ck/getDownloadingList;
    .locals 1

    .line 3
    invoke-static {p0}, Lccsansan/ck/removeDownloadListener;->unifiedDownload(I)Lccsansan/ck/getDownloadedRecordByUrl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lccsansan/ck/getDownloadingList$unifiedDownload;

    invoke-direct {v0}, Lccsansan/ck/getDownloadingList$unifiedDownload;-><init>()V

    invoke-virtual {v0, p0}, Lccsansan/ck/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils(Lccsansan/ck/getDownloadedRecordByUrl;)Lccsansan/ck/getDownloadingList$unifiedDownload;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload()Lccsansan/ck/getDownloadingList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils:Lccsansan/ck/getDownloadingList;

    new-instance v1, Lccsansan/ck/getDownloadingCount$unifiedDownload;

    invoke-direct {v1, p0, p3}, Lccsansan/ck/getDownloadingCount$unifiedDownload;-><init>(Lccsansan/ck/getDownloadingCount;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lccsansan/ck/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingList:Lccsansan/ck/getDownloadingList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lccsansan/ck/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;

    move-result-object p1

    iget-boolean p1, p1, Lccsansan/ck/unifiedDownload;->unifiedDownload:Z

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/ck/getDownloadingCount;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingRecordByUrl:Z

    return p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsansan/ck/getDownloadingCount;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z

    move-result p0

    return p0
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->removeDownloadListener:Lccsansan/ck/getDownloadingList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iput-boolean v1, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingRecordByUrl:Z

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 11
    invoke-interface {p3, p2, v1, v0, v2}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->unifiedDownload(ZZLjava/lang/String;I)V

    :cond_1
    return p1
.end method

.method static synthetic unifiedDownload(Lccsansan/ck/getDownloadingCount;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/ck/getDownloadingList;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils:Lccsansan/ck/getDownloadingList;

    return-void
.end method

.method public getDownloadingList(Lccsansan/ck/getDownloadingList;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount;->unifiedDownload:Lccsansan/ck/getDownloadingList;

    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/ck/getDownloadingCount;->unifiedDownload:Lccsansan/ck/getDownloadingList;

    .line 3
    iput-object v0, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingList:Lccsansan/ck/getDownloadingList;

    .line 4
    iput-object v0, p0, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils:Lccsansan/ck/getDownloadingList;

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lccsansan/ck/getDownloadingCount;->addDownloadListener:J

    const-string v2, "AD.Mads.Executor"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lccsansan/ck/getDownloadingCount;->addDownloadListener:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 3
    const-string p1, "execute is frequently "

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/ck/getDownloadingCount;->addDownloadListener:J

    .line 8
    iget-boolean v0, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingRecordByUrl:Z

    if-eqz v0, :cond_1

    .line 9
    const-string p1, "execute is clickInProgress "

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingRecordByUrl:Z

    if-eqz p3, :cond_2

    .line 15
    invoke-interface {p3}, Lccsansan/ck/getDownloadingCount$addDownloadListener;->getDownloadingList()V

    .line 17
    :cond_2
    iget-object v0, p0, Lccsansan/ck/getDownloadingCount;->unifiedDownload:Lccsansan/ck/getDownloadingList;

    if-eqz v0, :cond_3

    .line 18
    new-instance v1, Lccsansan/ck/getDownloadingCount$removeDownloadListener;

    invoke-direct {v1, p0, p3, p1, p2}, Lccsansan/ck/getDownloadingCount$removeDownloadListener;-><init>(Lccsansan/ck/getDownloadingCount;Lccsansan/ck/getDownloadingCount$addDownloadListener;Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;)V

    invoke-virtual {v0, p1, p2, v1}, Lccsansan/ck/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingList$getDownloadingList;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lccsansan/ck/getDownloadingCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 49
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lccsansan/ck/getDownloadingCount;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/ck/IncentiveDownloadUtils;Lccsansan/ck/getDownloadingCount$addDownloadListener;)V

    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsansan/ck/getDownloadingList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount;->getDownloadingList:Lccsansan/ck/getDownloadingList;

    return-void
.end method

.method public unifiedDownload(Lccsansan/ck/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/getDownloadingCount;->removeDownloadListener:Lccsansan/ck/getDownloadingList;

    return-void
.end method
