.class public final Lccsanandroidx/core/app/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteOp(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "op",
            "uid",
            "packageName"
        }
    .end annotation

    .line 104
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 105
    nop

    .line 106
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;

    .line 107
    .local v0, "appOpsManager":Lccsanandroid/app/AppOpsManager;
    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1

    .line 109
    .end local v0    # "appOpsManager":Lccsanandroid/app/AppOpsManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static noteOpNoThrow(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "op",
            "uid",
            "packageName"
        }
    .end annotation

    .line 124
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 125
    nop

    .line 126
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;

    .line 127
    .local v0, "appOpsManager":Lccsanandroid/app/AppOpsManager;
    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1

    .line 129
    .end local v0    # "appOpsManager":Lccsanandroid/app/AppOpsManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static noteProxyOp(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "op",
            "proxiedPackageName"
        }
    .end annotation

    .line 156
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 157
    const-class v0, Lccsanandroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;

    .line 158
    .local v0, "appOpsManager":Lccsanandroid/app/AppOpsManager;
    invoke-virtual {v0, p1, p2}, Lccsanandroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 160
    .end local v0    # "appOpsManager":Lccsanandroid/app/AppOpsManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static noteProxyOpNoThrow(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "op",
            "proxiedPackageName"
        }
    .end annotation

    .line 175
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 176
    const-class v0, Lccsanandroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/AppOpsManager;

    .line 177
    .local v0, "appOpsManager":Lccsanandroid/app/AppOpsManager;
    invoke-virtual {v0, p1, p2}, Lccsanandroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 179
    .end local v0    # "appOpsManager":Lccsanandroid/app/AppOpsManager;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 75
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 76
    invoke-static {p0}, Lccsanandroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
