.class public Lccsancom/san/hybrid/ui/addDownloadListener;
.super Lccsanandroidx/fragment/app/Fragment;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

.field protected addDownloadListener:Lccsanandroid/app/Activity;

.field protected getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

.field protected unifiedDownload:Lccsansan/aq/addDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 0

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "lifecycleCallbackName"

    .line 38
    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 40
    invoke-static {v1}, Lccsansan/aq/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lifecycle"

    .line 41
    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 42
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object p1

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hybrid"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;Lccsanandroid/content/Intent;)V
    .locals 8

    .line 7
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :try_start_0
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->addDownloadListener:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getData()Lccsanandroid/net/Uri;

    move-result-object v3

    .line 11
    iget-object v2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->addDownloadListener:Lccsanandroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/app/Activity;->managedQuery(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    const-string v2, "display_name"

    .line 15
    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "_id"

    .line 16
    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    sget-object v2, Lccsanandroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Lccsanandroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "data1"

    invoke-interface {p2, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 21
    invoke-static {p2}, Lccsansan/aq/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    const-string v1, "userName"

    .line 22
    invoke-virtual {p2, v1, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 23
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userNumber"

    .line 24
    invoke-virtual {p2, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 27
    :cond_1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object v0

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_2
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p2}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object p2

    const-string v0, "-8"

    invoke-static {v0}, Lccsansan/aq/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 32
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object v0

    const-string v1, "-5"

    invoke-static {v1, p2}, Lccsansan/aq/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_3
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p2}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object p2

    const-string v0, "-6"

    invoke-static {v0}, Lccsansan/aq/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lccsansan/bm/getDownloadingRecordByUrl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getDownloadingList()I
    .locals 1

    .line 6
    const-string v0, "san_basic_hybrid_web_fragment"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onAttach(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onAttach(Lccsanandroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->addDownloadListener:Lccsanandroid/app/Activity;

    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    const-string v0, "INTENT_TAG_CONFIG"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lccsansan/aq/addDownloadListener;

    iput-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    .line 7
    :cond_0
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    if-nez p1, :cond_1

    new-instance p1, Lccsansan/aq/addDownloadListener;

    invoke-direct {p1}, Lccsansan/aq/addDownloadListener;-><init>()V

    :cond_1
    iput-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onCreate mActivityConfig = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aq/addDownloadListener;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hybrid"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 2
    const-string p2, "san_webview_container"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/FrameLayout;

    iput-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->addDownloadListener:Lccsanandroid/app/Activity;

    instance-of p3, p2, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    if-eqz p3, :cond_0

    .line 5
    check-cast p2, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {p2}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object p2

    invoke-interface {p2}, Lccsancom/san/hybrid/ui/getDownloadingList;->getDownloadingRecordByUrl()Lccsansan/br/IncentiveDownloadUtils;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    .line 8
    :cond_0
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->addDownloadListener:Lccsanandroid/app/Activity;

    invoke-virtual {p2}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lccsanandroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/ViewGroup;

    iget-object p3, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p2, p3}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 15
    :cond_2
    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    iget-object p3, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {p2, p3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    :cond_0
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload()V

    .line 4
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lccsancom/san/hybrid/ui/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener()V

    .line 4
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lccsancom/san/hybrid/ui/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/Fragment;->onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/os/Bundle;)V

    :cond_0
    nop

    .line 7
    const-string p1, "Hybrid"

    const-string p2, "onViewCreated loadUrl"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload:Z

    .line 9
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p2}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->getDownloadingList:Lccsansan/br/IncentiveDownloadUtils;

    iget-object p2, p0, Lccsancom/san/hybrid/ui/addDownloadListener;->unifiedDownload:Lccsansan/aq/addDownloadListener;

    invoke-virtual {p2}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lccsancom/san/hybrid/ui/addDownloadListener;->IncentiveDownloadUtils()V

    :cond_1
    return-void
.end method

.method public unifiedDownload(IILccsanandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    const-string p2, "callbackName"

    invoke-virtual {p1, p2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lccsancom/san/hybrid/ui/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsanandroid/content/Intent;)V

    :cond_0
    return-void
.end method
