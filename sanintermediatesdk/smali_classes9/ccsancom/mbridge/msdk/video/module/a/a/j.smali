.class public final Lccsancom/mbridge/msdk/video/module/a/a/j;
.super Lccsancom/mbridge/msdk/video/module/a/a/e;
.source "RoundedImageLoaderListener.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lccsanandroid/widget/ImageView;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/a/a/e;-><init>(Lccsanandroid/widget/ImageView;)V

    .line 15
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/j;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 21
    if-nez p1, :cond_0

    .line 22
    return-void

    .line 24
    :cond_0
    :try_start_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/j;->b:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 26
    const/4 p2, 0x1

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/j;->a:I

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/p;->a(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/a/a/j;->b:Lccsanandroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :cond_2
    :goto_0
    return-void
.end method
