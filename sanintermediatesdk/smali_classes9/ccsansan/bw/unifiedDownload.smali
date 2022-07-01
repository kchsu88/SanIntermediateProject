.class public Lccsansan/bw/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 5
    :cond_0
    nop

    instance-of v0, p0, Lccsanandroid/app/Activity;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000000

    .line 6
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method
