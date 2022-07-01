.class final Lccsansan/cf/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/common/offline/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cf/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ILccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

.field final synthetic addDownloadListener:Ljava/lang/Boolean;

.field final synthetic getDownloadingList:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

.field final synthetic getDownloadingRecordByUrl:Lccsansan/cf/addDownloadListener;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsansan/bv/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/Boolean;Lccsanandroid/content/Context;Lccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iput-object p2, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/Boolean;

    iput-object p3, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/bv/getDownloadingList;

    iput-object p5, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    iput-object p6, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/cf/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lccsansan/bn/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;I)V

    .line 2
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    const/4 v2, 0x0

    const-string v3, "landingPage"

    invoke-static {v0, v1, v2, v3}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iget-object v2, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->unifiedDownload:Lccsansan/bv/getDownloadingList;

    invoke-static {v0, v1, v2}, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->addDownloadListener()V

    .line 11
    :cond_1
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/cf/addDownloadListener;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 12
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/cf/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method
