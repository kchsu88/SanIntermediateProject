.class Lccsansan/aa/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/k/addDownloadListener$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aa/addDownloadListener;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/aa/addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    new-instance p2, Lccsansan/k/unifiedDownload;

    invoke-direct {p2}, Lccsansan/k/unifiedDownload;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsansan/k/unifiedDownload;->unifiedDownload(I)V

    .line 3
    invoke-virtual {p2, p5, p6}, Lccsansan/k/unifiedDownload;->addDownloadListener(J)V

    .line 4
    invoke-virtual {p2, p3, p4}, Lccsansan/k/unifiedDownload;->removeDownloadListener(J)V

    .line 5
    invoke-virtual {p2, p1}, Lccsansan/k/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    invoke-interface {p1, p2}, Lccsansan/k/getDownloadingList$addDownloadListener;->addDownloadListener(Lccsansan/k/unifiedDownload;)V

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 4
    sget-object p2, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-interface {p2, p1, p3, p4}, Lccsansan/k/getDownloadingList;->addDownloadListener(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6

    .line 2
    sget-object v0, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lccsansan/k/getDownloadingList$addDownloadListener;->addDownloadListener(Ljava/lang/String;JJ)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 3
    sget-object p2, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, p6}, Lccsansan/k/getDownloadingList;->addDownloadListener(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    sget-object p2, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    invoke-interface {p2, p1}, Lccsansan/k/getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method
