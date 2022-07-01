.class public Lccsansan/p/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDownItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedRecordByUrl:J

.field protected getDownloadingList:I

.field protected removeDownloadListener:Ljava/lang/String;

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsansan/p/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 15
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object p3, p0, Lccsansan/p/getDownloadedList;->deleteDownItem:Ljava/util/Map;

    if-nez p3, :cond_1

    .line 19
    new-instance p3, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lccsansan/p/getDownloadedList;->deleteDownItem:Ljava/util/Map;

    .line 20
    :cond_1
    iget-object p3, p0, Lccsansan/p/getDownloadedList;->deleteDownItem:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/p/getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

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

    .line 22
    iput-object p1, p0, Lccsansan/p/getDownloadedList;->addDownloadListener:Ljava/util/List;

    return-void
.end method

.method public deleteDownItem()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lccsansan/p/getDownloadedList;->getDownloadedRecordByUrl:J

    return-wide v0
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

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

.method public getDownloadingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->addDownloadListener:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    .line 23
    iput p1, p0, Lccsansan/p/getDownloadedList;->getDownloadingList:I

    return-void
.end method

.method public final getDownloadingRecordByUrl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    return v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lccsansan/p/getDownloadedList;->getDownloadedRecordByUrl:J

    return-void
.end method

.method public final removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Z)Z
    .locals 2

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :try_start_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "boolean"

    aput-object v1, v0, p1

    const-string p1, "%s\'s content extras is not %s type."

    invoke-static {p1, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/String;)V

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPIItem{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/p/getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/p/getDownloadedList;->getDownloadingList:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVersionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/getDownloadedList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSplitNames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/getDownloadedList;->addDownloadListener:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/p/getDownloadedList;->getDownloadedRecordByUrl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/p/getDownloadedList;->deleteDownItem:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/p/getDownloadedList;->getDownloadingList:I

    return v0
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/p/getDownloadedList;->deleteDownItem:Ljava/util/Map;

    if-nez v0, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "String"

    aput-object v2, v1, p1

    const-string p1, "%s\'s content extras is not %s type."

    invoke-static {p1, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/String;)V

    return-object v0
.end method
