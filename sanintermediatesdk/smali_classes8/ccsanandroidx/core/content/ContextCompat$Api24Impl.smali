.class Lccsanandroidx/core/content/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    return-void
.end method

.method static createDeviceProtectedStorageContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lccsanandroid/content/Context;->createDeviceProtectedStorageContext()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getDataDir(Lccsanandroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static isDeviceProtectedStorage(Lccsanandroid/content/Context;)Z
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lccsanandroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method
