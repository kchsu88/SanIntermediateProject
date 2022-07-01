.class Lccsansan/at/unifiedDownload$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/at/unifiedDownload;->getDownloadingList(Lccsansan/aj/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/at/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->IncentiveDownloadUtils(I)I

    .line 2
    iget-object p1, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->removeDownloadListener(Lccsansan/at/unifiedDownload;)Lccsansan/at/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/at/unifiedDownload;->dismiss()V

    .line 3
    iget-object p1, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    iget-object v0, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-static {v0}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    const-string v1, "toastId"

    invoke-virtual {v0, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/at/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    invoke-static {v1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/aj/getDownloadingList;I)V

    :cond_0
    return-void
.end method
