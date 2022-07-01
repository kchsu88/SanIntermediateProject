.class Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/common/offline/OfflineNetGuideActivity;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;


# direct methods
.method constructor <init>(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->removeDownloadListener(Lccsancom/san/common/offline/OfflineNetGuideActivity;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->addDownloadListener(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-static {p1}, Lccsancom/san/common/offline/OfflineNetGuideActivity;->IncentiveDownloadUtils(Lccsancom/san/common/offline/OfflineNetGuideActivity;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lccsansan/l/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3
    iget-object p1, p0, Lccsancom/san/common/offline/OfflineNetGuideActivity$unifiedDownload;->unifiedDownload:Lccsancom/san/common/offline/OfflineNetGuideActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
