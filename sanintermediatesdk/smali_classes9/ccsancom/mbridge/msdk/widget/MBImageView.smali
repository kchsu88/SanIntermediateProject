.class public Lccsancom/mbridge/msdk/widget/MBImageView;
.super Lccsanandroid/widget/ImageView;
.source "MBImageView.java"


# instance fields
.field private a:Lccsanandroid/graphics/Bitmap;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 16
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    .line 21
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 16
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    .line 25
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 16
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    nop

    .line 1045
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/MBImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1046
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/MBImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->b:Ljava/lang/String;

    new-instance v1, Lccsancom/mbridge/msdk/widget/MBImageView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/widget/MBImageView$1;-><init>(Lccsancom/mbridge/msdk/widget/MBImageView;)V

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 38
    :cond_0
    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 42
    :goto_0
    return-void
.end method

.method public setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->a:Lccsanandroid/graphics/Bitmap;

    .line 66
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 71
    :goto_1
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView;->b:Ljava/lang/String;

    .line 33
    return-void
.end method
