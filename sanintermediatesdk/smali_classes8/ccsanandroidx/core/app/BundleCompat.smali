.class public final Lccsanandroidx/core/app/BundleCompat;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/BundleCompat$BundleCompatBaseImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroid/os/IBinder;
    .locals 2
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key"
        }
    .end annotation

    .line 105
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->getBinder(Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/app/BundleCompat$BundleCompatBaseImpl;->getBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V
    .locals 2
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key",
            "binder"
        }
    .end annotation

    .line 121
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Lccsanandroid/os/Bundle;->putBinder(Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/app/BundleCompat$BundleCompatBaseImpl;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 126
    :goto_0
    return-void
.end method
