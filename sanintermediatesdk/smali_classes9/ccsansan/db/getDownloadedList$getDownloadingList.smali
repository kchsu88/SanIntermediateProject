.class Lccsansan/db/getDownloadedList$getDownloadingList;
.super Lccsansan/i/getDownloadedRecordByUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/db/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsansan/db/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/db/getDownloadedList;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    iput-object p2, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsansan/i/getDownloadedRecordByUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRewarded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/db/IncentiveDownloadUtils;->addDownloadListener()V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    iget-object v0, v0, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/db/getDownloadingList$getDownloadingList;->onClick()V

    :cond_0
    return-void
.end method

.method public onPerformClick(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    const-string v0, "cardbutton"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    iget-object v1, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {p2, p3}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(ZZ)I

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    iget-object p3, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lccsansan/db/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/db/getDownloadedList;

    invoke-static {v0}, Lccsansan/db/getDownloadedList;->unifiedDownload(Lccsansan/db/getDownloadedList;)Lccsansan/i/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/i/addDownloadListener;->pause()V

    return-void
.end method
