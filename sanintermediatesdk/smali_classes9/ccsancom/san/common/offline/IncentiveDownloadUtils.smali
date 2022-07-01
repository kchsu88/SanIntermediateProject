.class public Lccsancom/san/common/offline/IncentiveDownloadUtils;
.super Lccsanandroidx/fragment/app/DialogFragment;
.source ""


# instance fields
.field private addDownloadListener:Lccsancom/san/common/offline/removeDownloadListener;

.field private removeDownloadListener:Lccsancom/san/common/offline/unifiedDownload;

.field private unifiedDownload:Lccsancom/san/common/offline/getDownloadingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getDownloadingList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/common/offline/getDownloadingList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/san/common/offline/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/DialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/DialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/common/offline/unifiedDownload;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsancom/san/common/offline/unifiedDownload;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method public addDownloadListener(Lccsancom/san/common/offline/removeDownloadListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/common/offline/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/common/offline/removeDownloadListener;

    return-void
.end method

.method public onCancel(Lccsanandroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCancel(Lccsanandroid/content/DialogInterface;)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener()V

    return-void
.end method

.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onDismiss(Lccsanandroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :goto_0
    invoke-direct {p0}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->getDownloadingList()V

    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/common/offline/IncentiveDownloadUtils;->addDownloadListener:Lccsancom/san/common/offline/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsancom/san/common/offline/removeDownloadListener;->unifiedDownload()V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/common/offline/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/common/offline/unifiedDownload;

    return-void
.end method
