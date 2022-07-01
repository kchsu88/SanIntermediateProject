.class final Lccsansan/ck/deleteDownList$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;ZLjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/deleteDownList$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportShow isMainThread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/toString;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   hasReportFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.ImpressionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportFailure: insertShowTrackUrls:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/ck/deleteDownList$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/ck/deleteDownList$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object p1

    iget-object v0, p0, Lccsansan/ck/deleteDownList$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1, v0}, Lccsansan/dc/getDownloadingRecordByUrl;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    :cond_0
    return-void
.end method
