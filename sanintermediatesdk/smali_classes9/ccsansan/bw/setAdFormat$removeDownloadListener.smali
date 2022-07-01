.class public Lccsansan/bw/setAdFormat$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/setAdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "removeDownloadListener"
.end annotation


# instance fields
.field public IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

.field public addDownloadListener:Ljava/lang/String;

.field public getDownloadStatusByUrl:Ljava/lang/String;

.field public getDownloadingList:Ljava/lang/String;

.field public removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->UNKNOWN:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 3
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    return-void
.end method

.method private unifiedDownload(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public addDownloadListener()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getDownloadingList()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    sget-object v1, Lccsansan/bw/setAdFormat$unifiedDownload;->UNKNOWN:Lccsansan/bw/setAdFormat$unifiedDownload;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    sget-object v1, Lccsansan/bw/setAdFormat$addDownloadListener;->UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDownloadingRecordByUrl()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->NO_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->SINGLE_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 10
    :goto_0
    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    sget-object v1, Lccsansan/bw/setAdFormat$addDownloadListener;->DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    if-ne v0, v1, :cond_2

    .line 11
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    :cond_2
    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->NO_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->SINGLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    iput-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SIM Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Active state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMEI1: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMEI2: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMSI1: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMSI2: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
