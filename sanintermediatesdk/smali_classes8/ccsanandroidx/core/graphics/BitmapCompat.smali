.class public final Lccsanandroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationByteCount(Lccsanandroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 48
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method public static hasMipMap(Lccsanandroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 28
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setHasMipMap(Lccsanandroid/graphics/Bitmap;Z)V
    .locals 2
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "hasMipMap"
        }
    .end annotation

    .line 35
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lccsanandroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 38
    :cond_0
    return-void
.end method
