.class Lccsansan/cr/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cr/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDownloadingList"
.end annotation


# direct methods
.method private static IncentiveDownloadUtils(Lccsanandroid/view/View;)Lccsanandroid/view/View;
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
    const-string v1, "VisibilityTracker"

    const-string v2, "Attempting to call View#getRootView() on an unattached View."

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

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

.method private static addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
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

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/cr/addDownloadListener$getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lccsansan/cr/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method
