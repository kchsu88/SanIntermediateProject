.class Lccsanandroidx/core/os/UserHandleCompat$Api24Impl;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/os/UserHandleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static getUserHandleForUid(I)Lccsanandroid/os/UserHandle;
    .locals 1
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lccsanandroid/os/UserHandle;->getUserHandleForUid(I)Lccsanandroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method