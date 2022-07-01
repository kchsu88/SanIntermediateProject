.class public Lccsansan/cx/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 2

    .line 3
    instance-of v0, p0, Lccsanandroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    check-cast p0, Lccsanandroid/app/Activity;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "content"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/cx/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lccsansan/cx/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static getDownloadingList(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    const-string v1, "vast.utils.Views"

    const-string v2, "Attempting to call View#getRootView() on an unattached View."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 18
    const-string v1, "content"

    invoke-static {v1, v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public static removeDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
