.class public Lccsancom/vungle/warren/utility/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMainThread()Z
    .locals 5

    .line 17
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    .line 19
    .local v0, "mainLooper":Lccsanandroid/os/Looper;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20
    return v1

    .line 22
    :cond_0
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 23
    invoke-virtual {v0}, Lccsanandroid/os/Looper;->isCurrentThread()Z

    move-result v1

    return v1

    .line 25
    :cond_1
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    .line 27
    .local v2, "myLooper":Lccsanandroid/os/Looper;
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
