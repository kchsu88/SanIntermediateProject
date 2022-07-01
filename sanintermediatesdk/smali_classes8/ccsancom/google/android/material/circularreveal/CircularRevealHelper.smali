.class public Lccsancom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Lccsanandroid/graphics/Paint;

.field private final delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Lccsanandroid/graphics/Paint;

.field private final revealPath:Lccsanandroid/graphics/Path;

.field private final scrimPaint:Lccsanandroid/graphics/Paint;

.field private final view:Lccsanandroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 128
    const/4 v0, 0x2

    sput v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    .line 129
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 130
    const/4 v0, 0x1

    sput v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    sput v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 134
    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 3
    .param p1, "delegate"    # Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 138
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/View;

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setWillNotDraw(Z)V

    .line 141
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Lccsanandroid/graphics/Path;

    .line 142
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Lccsanandroid/graphics/Paint;

    .line 143
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    .line 144
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 150
    return-void
.end method

.method private drawDebugCircle(Lccsanandroid/graphics/Canvas;IF)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "width"    # F

    .line 352
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p3}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method private drawDebugMode(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 337
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Lccsanandroid/graphics/Canvas;)V

    .line 338
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 343
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const/high16 v0, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Lccsanandroid/graphics/Canvas;IF)V

    .line 345
    const/high16 v0, -0x10000

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Lccsanandroid/graphics/Canvas;IF)V

    .line 348
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Lccsanandroid/graphics/Canvas;)V

    .line 349
    return-void
.end method

.method private drawOverlayDrawable(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 304
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 306
    .local v0, "bounds":Lccsanandroid/graphics/Rect;
    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 307
    .local v1, "translationX":F
    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 309
    .local v2, "translationY":F
    invoke-virtual {p1, v1, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 311
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 313
    .end local v0    # "bounds":Lccsanandroid/graphics/Rect;
    .end local v1    # "translationX":F
    .end local v2    # "translationY":F
    :cond_0
    return-void
.end method

.method private getDistanceToFurthestCorner(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .locals 6
    .param p1, "revealInfo"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 254
    iget v0, p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    .line 255
    invoke-virtual {v2}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    .line 254
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    return v0
.end method

.method private invalidateRevealInfo()V
    .locals 5

    .line 242
    sget v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->rewind()V

    .line 244
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Lccsanandroid/graphics/Path;

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v3, v3, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Lccsanandroid/graphics/Path;->addCircle(FFFLccsanandroid/graphics/Path$Direction;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 251
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .locals 4

    .line 320
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 321
    .local v0, "invalidRevealInfo":Z
    :goto_1
    sget v3, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_3

    .line 322
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 324
    :cond_3
    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private shouldDrawOverlayDrawable()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldDrawScrim()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .locals 7

    .line 153
    sget v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_2

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 157
    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->buildDrawingCache()V

    .line 158
    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getDrawingCache()Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-nez v2, :cond_0

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v4}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 163
    .local v3, "canvas":Lccsanandroid/graphics/Canvas;
    iget-object v4, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v4, v3}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 166
    .end local v3    # "canvas":Lccsanandroid/graphics/Canvas;
    :cond_0
    if-eqz v2, :cond_1

    .line 167
    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Lccsanandroid/graphics/Paint;

    new-instance v4, Lccsanandroid/graphics/BitmapShader;

    sget-object v5, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    sget-object v6, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v6}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 170
    :cond_1
    iput-boolean v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    .line 171
    iput-boolean v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 173
    .end local v2    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 2

    .line 176
    sget v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    .line 178
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->destroyDrawingCache()V

    .line 179
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 264
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget v0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    packed-switch v0, :pswitch_data_0

    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported strategy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Lccsanandroid/graphics/Canvas;)V

    .line 268
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v0

    .line 274
    .local v0, "count":I
    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Canvas;->clipPath(Lccsanandroid/graphics/Path;)Z

    .line 276
    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v1, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Lccsanandroid/graphics/Canvas;)V

    .line 277
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 281
    :cond_0
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 282
    goto :goto_0

    .line 284
    .end local v0    # "count":I
    :pswitch_2
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 285
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget-object v1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget-object v2, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Lccsanandroid/graphics/Canvas;)V

    .line 295
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 300
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Lccsanandroid/graphics/Canvas;)V

    .line 301
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 233
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 228
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 2

    .line 210
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    move-object v0, v1

    .line 215
    .local v0, "revealInfo":Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    invoke-virtual {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-direct {p0, v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v1

    iput v1, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 218
    :cond_1
    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 237
    iput-object p1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 239
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 222
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 224
    return-void
.end method

.method public setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 3
    .param p1, "revealInfo"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 199
    :goto_0
    iget v0, p1, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 200
    invoke-direct {p0, p1}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    .line 199
    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/math/MathUtils;->geq(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 205
    :cond_2
    :goto_1
    invoke-direct {p0}, Lccsancom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    .line 206
    return-void
.end method
