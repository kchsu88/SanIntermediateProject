.class Lccsansan/ay/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ay/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "removeDownloadListener"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

.field private getDownloadingList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private removeDownloadListener:Lccsansan/aj/getDownloadingList;


# direct methods
.method public constructor <init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;Lccsanandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lccsansan/at/unifiedDownload;->dismiss()V

    return-void
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public unifiedDownload()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lccsansan/at/unifiedDownload;

    iget-object v1, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsansan/at/unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    .line 4
    iput-object v0, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/at/unifiedDownload;

    .line 5
    iget-object v1, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v0, v1}, Lccsansan/at/unifiedDownload;->getDownloadingList(Lccsansan/aj/getDownloadingList;)V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    if-eqz v1, :cond_1

    .line 8
    const-string v2, "toastId"

    invoke-virtual {v1, v2, v0}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lccsansan/ay/unifiedDownload$removeDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v2, v1, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/aj/getDownloadingList;)V

    return-void
.end method
