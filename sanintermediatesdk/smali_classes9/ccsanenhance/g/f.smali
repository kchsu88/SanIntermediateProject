.class public Lccsanenhance/g/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
