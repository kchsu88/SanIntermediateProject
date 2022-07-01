.class final Lccsansan/au/addDownloadListener$getDownloadedCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/k/addDownloadListener$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 5
    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzProgress(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->unifiedDownload:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    iget-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadedCount;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;->onXzFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method
