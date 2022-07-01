.class Lccsancom/san/mads/FullScreenActivity$unifiedDownload;
.super Lccsansan/bw/AdError$ErrorCode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/FullScreenActivity;


# direct methods
.method constructor <init>(Lccsancom/san/mads/FullScreenActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/FullScreenActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsansan/bw/AdError$ErrorCode;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.FullScreenActivity"

    const-string v1, "#CountDownTimer onFinish"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/FullScreenActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mads/FullScreenActivity;->getDownloadingList(Lccsancom/san/mads/FullScreenActivity;Z)Z

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/FullScreenActivity;

    invoke-static {v0}, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils(Lccsancom/san/mads/FullScreenActivity;)Lccsansan/db/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->unifiedDownload()V

    return-void
.end method

.method public addDownloadListener(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#CountDownTimer onTick = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mads.FullScreenActivity"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lccsancom/san/mads/FullScreenActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/FullScreenActivity;

    invoke-static {p2}, Lccsancom/san/mads/FullScreenActivity;->IncentiveDownloadUtils(Lccsancom/san/mads/FullScreenActivity;)Lccsansan/db/getDownloadingList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsansan/db/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    return-void
.end method
