.class public Lccsanandroidx/core/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isUserUnlocked(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 42
    const-class v0, Lccsanandroid/os/UserManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/UserManager;

    invoke-virtual {v0}, Lccsanandroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
