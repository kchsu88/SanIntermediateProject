.class Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapState"
.end annotation


# static fields
.field private static final DEFAULT_PAINT:Lccsanandroid/graphics/Paint;

.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field private static final GRAVITY:I = 0x77


# instance fields
.field final bitmap:Lccsanandroid/graphics/Bitmap;

.field paint:Lccsanandroid/graphics/Paint;

.field targetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 149
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 147
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Lccsanandroid/graphics/Paint;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    .line 150
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    .line 151
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .locals 1
    .param p1, "other"    # Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    .line 155
    iget-object v0, p1, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 156
    iget v0, p1, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    iput v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 157
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method mutatePaint()V
    .locals 2

    .line 172
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->DEFAULT_PAINT:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    if-ne v0, v1, :cond_0

    .line 173
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    .line 175
    :cond_0
    return-void
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 179
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 184
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-direct {v0, p1, p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    return-object v0
.end method

.method setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 165
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 166
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 167
    return-void
.end method

.method setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 160
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->mutatePaint()V

    .line 161
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 162
    return-void
.end method
