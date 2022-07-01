.class final Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cf/addDownloadListener$unifiedDownload;


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

.field final synthetic addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

.field final synthetic getDownloadedList:Lccsansan/cf/addDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/bv/getDownloadingList;

.field final synthetic removeDownloadListener:Ljava/lang/Boolean;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Lccsansan/cf/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/Boolean;

    iput-object p2, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iput-object p4, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/bv/getDownloadingList;

    iput-object p5, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    iput-object p6, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->getDownloadedList:Lccsansan/cf/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    const/4 v2, 0x0

    const-string v3, "landingPage"

    invoke-static {v0, v1, v2, v3}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iget-object v2, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/bv/getDownloadingList;

    invoke-static {v0, v1, v2}, Lccsansan/cf/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Lccsansan/bv/getDownloadingList;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lccsansan/bn/getDownloadStatusByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;I)V

    .line 8
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;->addDownloadListener()V

    .line 11
    :cond_1
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$IncentiveDownloadUtils;->getDownloadedList:Lccsansan/cf/addDownloadListener;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
