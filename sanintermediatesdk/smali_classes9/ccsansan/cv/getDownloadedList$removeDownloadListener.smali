.class Lccsansan/cv/getDownloadedList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/cv/pause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cv/pause;

.field final synthetic unifiedDownload:Lccsansan/cv/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->unifiedDownload:Lccsansan/cv/getDownloadedList;

    iput-object p2, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener(J)V

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Z)V
    .locals 7

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsansan/cv/pause;->IncentiveDownloadUtils(Z)V

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {v0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v5, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cs/removeDownloadListener;

    .line 9
    invoke-virtual {p1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide p1

    add-long/2addr v5, p1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResult completed = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SourceLoadManager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1, v5, v6}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 14
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 15
    iget-object v1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->unifiedDownload:Lccsansan/cv/getDownloadedList;

    iget-object v2, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {v2}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v3

    invoke-virtual/range {v1 .. v6}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 p2, 0x0

    move-wide v4, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsansan/cs/removeDownloadListener;

    .line 3
    invoke-virtual {p2}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide p2

    add-long/2addr v4, p2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1, v4, v5}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(J)V

    .line 6
    iget-object p1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->resolveUrl()V

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->unifiedDownload:Lccsansan/cv/getDownloadedList;

    iget-object v1, p0, Lccsansan/cv/getDownloadedList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    return-void
.end method
