.class Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/List;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/util/List;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-nez v1, :cond_3

    const/4 v2, 0x2

    if-ge v8, v2, :cond_3

    const/4 v9, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_2

    .line 8
    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    sget-object v4, Lccsansan/cy/pause;->CPI_EFFECT:Lccsansan/cy/pause;

    const/4 v6, 0x2

    const-string v7, "-1"

    move-object v2, v1

    move v5, v8

    invoke-static/range {v2 .. v7}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;IILjava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v9, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 10
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#reportUrl ,track url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AD.CPI.Helper"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {v0, v1}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedRecordByUrl;->removeDownloadListener(Z)V

    :cond_4
    return-void
.end method
