.class Lccsanandroidx/core/content/ContextCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    return-void
.end method

.method static getCodeCacheDir(Lccsanandroid/content/Context;)Ljava/io/File;
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

    .line 872
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "id"
        }
    .end annotation

    .line 862
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getNoBackupFilesDir(Lccsanandroid/content/Context;)Ljava/io/File;
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

    .line 867
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
