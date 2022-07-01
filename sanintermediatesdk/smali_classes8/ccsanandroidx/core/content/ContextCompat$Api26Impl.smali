.class Lccsanandroidx/core/content/ContextCompat$Api26Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    return-void
.end method

.method static startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .param p1, "service"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "service"
        }
    .end annotation

    .line 933
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startForegroundService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
