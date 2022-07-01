.class Lccsanandroidx/core/os/HandlerCompat$Api28Impl;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/os/HandlerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method public static createAsync(Lccsanandroid/os/Looper;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "looper"    # Lccsanandroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 267
    invoke-static {p0}, Lccsanandroid/os/Handler;->createAsync(Lccsanandroid/os/Looper;)Lccsanandroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createAsync(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "looper"    # Lccsanandroid/os/Looper;
    .param p1, "callback"    # Lccsanandroid/os/Handler$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "callback"
        }
    .end annotation

    .line 271
    invoke-static {p0, p1}, Lccsanandroid/os/Handler;->createAsync(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)Lccsanandroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static postDelayed(Lccsanandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "handler"    # Lccsanandroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handler",
            "r",
            "token",
            "delayMillis"
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method
