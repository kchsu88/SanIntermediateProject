.class public Lccsancom/san/action/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;II)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-class v3, Lccsancom/san/landingpage/AdLandingPageActivity;

    invoke-direct {v1, v2, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 7
    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "animation_type"

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->deleteDownItem()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    :cond_1
    if-ne p2, v2, :cond_2

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p2, p2, 0x2

    .line 12
    :cond_2
    invoke-static {p0}, Lccsancom/san/landingpage/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-string v2, "isGpLanding"

    .line 13
    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    :cond_3
    const-string v2, "revealX"

    .line 15
    invoke-virtual {v1, v2, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    const-string p1, "revealY"

    .line 16
    invoke-virtual {v1, p1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    const-string p1, "ad_landing_page"

    .line 17
    invoke-static {p1, p0}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    move-exception p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
