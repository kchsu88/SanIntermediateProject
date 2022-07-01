.class public Lccsancom/san/hybrid/ui/BaseHybridActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

.field protected removeDownloadListener:Lccsansan/bw/trackReportClick$IncentiveDownloadUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    return-object v0
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->getDownloadedList()V

    .line 2
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->onActivityResult(IILccsanandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/san/hybrid/ui/getDownloadingList;->removeDownloadListener(IILccsanandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onContentChanged()V

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    const-string v0, "san_basic_hybrid_web_activity"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lccsansan/ah/addDownloadListener;->addDownloadListener(Lccsancom/san/hybrid/ui/BaseHybridActivity;)Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    .line 4
    invoke-interface {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadingList;->addDownloadListener(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->addDownloadListener()V

    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0, p1, p2}, Lccsancom/san/hybrid/ui/getDownloadingList;->getDownloadingList(ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentActivity;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNewIntent(Lccsanandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onNewIntent(Lccsanandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setIntent(Lccsanandroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0, p1}, Lccsancom/san/hybrid/ui/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->unifiedDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object p1, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->removeDownloadListener:Lccsansan/bw/trackReportClick$IncentiveDownloadUtils;

    invoke-static {p2, p3, p1}, Lccsansan/bw/trackReportClick;->IncentiveDownloadUtils([Ljava/lang/String;[ILccsansan/bw/trackReportClick$IncentiveDownloadUtils;)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onRestart()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->removeDownloadListener()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->IncentiveDownloadUtils()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils:Lccsancom/san/hybrid/ui/getDownloadingList;

    invoke-interface {v0}, Lccsancom/san/hybrid/ui/getDownloadingList;->getDownloadingList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->finish()V

    :goto_0
    return-void
.end method
