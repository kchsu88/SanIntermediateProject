.class final Lccsansan/cf/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/common/offline/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cf/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ILccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

.field final synthetic getDownloadingList:Lccsansan/cf/addDownloadListener;

.field final synthetic removeDownloadListener:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    iput-object p2, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->getDownloadingList:Lccsansan/cf/addDownloadListener;

    iput-object p3, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->addDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->removeDownloadListener()V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->getDownloadingList:Lccsansan/cf/addDownloadListener;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 6
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/cf/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lccsansan/bn/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;I)V

    return-void
.end method
