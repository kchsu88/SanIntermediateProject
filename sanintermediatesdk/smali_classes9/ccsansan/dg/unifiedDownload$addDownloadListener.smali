.class Lccsansan/dg/unifiedDownload$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dd/getDownloadingList$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dg/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/dg/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(IIII)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p3, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p3}, Lccsansan/dg/unifiedDownload;->resume(Lccsansan/dg/unifiedDownload;)I

    move-result p3

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p3}, Lccsansan/dg/unifiedDownload;->getDownloadingCount(Lccsansan/dg/unifiedDownload;)I

    move-result p3

    if-ne p3, p2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "video size: width: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", height: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Ad.VideoPresenter"

    invoke-static {p4, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p3, p1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;I)I

    .line 6
    iget-object p1, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p1, p2}, Lccsansan/dg/unifiedDownload;->addDownloadListener(Lccsansan/dg/unifiedDownload;I)I

    .line 7
    iget-object p1, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p1}, Lccsansan/dg/unifiedDownload;->resume(Lccsansan/dg/unifiedDownload;)I

    move-result p2

    iget-object p3, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-static {p3}, Lccsansan/dg/unifiedDownload;->getDownloadingCount(Lccsansan/dg/unifiedDownload;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;II)V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lccsansan/dg/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->resume()V

    return-void
.end method
