.class public Lccsansan/ah/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener()Lccsancom/san/hybrid/ui/addDownloadListener;
    .locals 1

    .line 15
    new-instance v0, Lccsancom/san/hybrid/ui/addDownloadListener;

    invoke-direct {v0}, Lccsancom/san/hybrid/ui/addDownloadListener;-><init>()V

    return-object v0
.end method

.method public static addDownloadListener(Lccsancom/san/hybrid/ui/BaseHybridActivity;)Lccsancom/san/hybrid/ui/getDownloadingList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lccsansan/aq/addDownloadListener;

    invoke-direct {v0}, Lccsansan/aq/addDownloadListener;-><init>()V

    goto :goto_0

    :cond_0
    nop

    .line 6
    const-string v1, "INTENT_TAG_CONFIG"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsansan/aq/addDownloadListener;

    .line 7
    const-string v2, "INTENT_TAG_URL"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lccsansan/aq/addDownloadListener;

    invoke-direct {v1}, Lccsansan/aq/addDownloadListener;-><init>()V

    .line 9
    :cond_1
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 14
    :cond_2
    move-object v0, v1

    :goto_0
    new-instance v1, Lccsansan/ba/addDownloadListener;

    invoke-direct {v1, p0, v0}, Lccsansan/ba/addDownloadListener;-><init>(Lccsancom/san/hybrid/ui/BaseHybridActivity;Lccsansan/aq/addDownloadListener;)V

    return-object v1
.end method
