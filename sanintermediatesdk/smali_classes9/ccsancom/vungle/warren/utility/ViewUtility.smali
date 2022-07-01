.class public Lccsancom/vungle/warren/utility/ViewUtility;
.super Ljava/lang/Object;
.source "ViewUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/ViewUtility$Asset;
    }
.end annotation


# static fields
.field private static final INPUT_DPI:I = 0x14a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPixels(Lccsanandroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "dp"    # I

    .line 50
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 51
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;
    .locals 5
    .param p0, "asset"    # Lccsancom/vungle/warren/utility/ViewUtility$Asset;
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 31
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->base64src:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 32
    .local v0, "imageBytes":[B
    new-instance v2, Lccsanandroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Lccsanandroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v2, "options":Lccsanandroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x14a

    iput v3, v2, Lccsanandroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 34
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Lccsanandroid/util/DisplayMetrics;->density:F

    iget v4, v2, Lccsanandroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Lccsanandroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 38
    array-length v3, v0

    invoke-static {v0, v1, v3, v2}, Lccsanandroid/graphics/BitmapFactory;->decodeByteArray([BIILccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getWebView(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 43
    :try_start_0
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p0}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
