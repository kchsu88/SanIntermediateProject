.class public Lccsancom/google/android/material/shape/MaterialShapeDrawable;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lccsanandroidx/core/graphics/drawable/TintAwareDrawable;
.implements Lccsancom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;,
        Lccsancom/google/android/material/shape/MaterialShapeDrawable$CompatibilityShadowMode;
    }
.end annotation


# static fields
.field public static final SHADOW_COMPAT_MODE_ALWAYS:I = 0x2

.field public static final SHADOW_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final SHADOW_COMPAT_MODE_NEVER:I = 0x1

.field private static final SHADOW_OFFSET_MULTIPLIER:F = 0.25f

.field private static final SHADOW_RADIUS_MULTIPLIER:F = 0.75f

.field private static final TAG:Ljava/lang/String;

.field private static final clearPaint:Lccsanandroid/graphics/Paint;


# instance fields
.field private final containsIncompatibleShadowOp:Ljava/util/BitSet;

.field private final cornerShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

.field private final edgeShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

.field private final fillPaint:Lccsanandroid/graphics/Paint;

.field private final insetRectF:Lccsanandroid/graphics/RectF;

.field private final matrix:Lccsanandroid/graphics/Matrix;

.field private final path:Lccsanandroid/graphics/Path;

.field private final pathBounds:Lccsanandroid/graphics/RectF;

.field private pathDirty:Z

.field private final pathInsetByStroke:Lccsanandroid/graphics/Path;

.field private final pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final pathShadowListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field private final rectF:Lccsanandroid/graphics/RectF;

.field private final scratchRegion:Lccsanandroid/graphics/Region;

.field private shadowBitmapDrawingEnable:Z

.field private final shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

.field private final strokePaint:Lccsanandroid/graphics/Paint;

.field private strokeShapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private strokeTintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

.field private tintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

.field private final transparentRegion:Lccsanandroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 189
    invoke-static {p1, p2, p3, p4}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 190
    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V
    .locals 5
    .param p1, "drawableState"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 205
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 114
    const/4 v0, 0x4

    new-array v1, v0, [Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iput-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 115
    new-array v0, v0, [Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 116
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 120
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->matrix:Lccsanandroid/graphics/Matrix;

    .line 121
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    .line 122
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Lccsanandroid/graphics/Path;

    .line 123
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->rectF:Lccsanandroid/graphics/RectF;

    .line 124
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Lccsanandroid/graphics/RectF;

    .line 125
    new-instance v0, Lccsanandroid/graphics/Region;

    invoke-direct {v0}, Lccsanandroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Lccsanandroid/graphics/Region;

    .line 126
    new-instance v0, Lccsanandroid/graphics/Region;

    invoke-direct {v0}, Lccsanandroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Lccsanandroid/graphics/Region;

    .line 129
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    .line 130
    new-instance v2, Lccsanandroid/graphics/Paint;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    .line 132
    new-instance v3, Lccsancom/google/android/material/shadow/ShadowRenderer;

    invoke-direct {v3}, Lccsancom/google/android/material/shadow/ShadowRenderer;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    .line 137
    nop

    .line 138
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 139
    invoke-static {}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-direct {v3}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    :goto_0
    iput-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 145
    new-instance v3, Lccsanandroid/graphics/RectF;

    invoke-direct {v3}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    .line 147
    iput-boolean v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 206
    iput-object p1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 207
    sget-object v1, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 208
    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 209
    sget-object v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Lccsanandroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 210
    new-instance v1, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 211
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 212
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    .line 214
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;
    .param p2, "x1"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 75
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 202
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsancom/google/android/material/elevation/ElevationOverlayProvider;)V

    invoke-direct {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .param p1, "shapePathModel"    # Lccsancom/google/android/material/shape/ShapePathModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    return-object v0
.end method

.method static synthetic access$402(Lccsancom/google/android/material/shape/MaterialShapeDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    return p1
.end method

.method private calculatePaintColorTintFilter(Lccsanandroid/graphics/Paint;Z)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 4
    .param p1, "paint"    # Lccsanandroid/graphics/Paint;
    .param p2, "requiresElevationOverlay"    # Z

    .line 1251
    if-eqz p2, :cond_0

    .line 1252
    invoke-virtual {p1}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1253
    .local v0, "paintColor":I
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v1

    .line 1254
    .local v1, "tintColor":I
    if-eq v1, v0, :cond_0

    .line 1255
    new-instance v2, Lccsanandroid/graphics/PorterDuffColorFilter;

    sget-object v3, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Lccsanandroid/graphics/PorterDuffColorFilter;-><init>(ILccsanandroid/graphics/PorterDuff$Mode;)V

    return-object v2

    .line 1258
    .end local v0    # "paintColor":I
    .end local v1    # "tintColor":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private calculatePath(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V
    .locals 6
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p2, "path"    # Lccsanandroid/graphics/Path;

    .line 1201
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 1203
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->matrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v0}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 1205
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->matrix:Lccsanandroid/graphics/Matrix;

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 1206
    invoke-virtual {p1}, Lccsanandroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Lccsanandroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .line 1205
    invoke-virtual {v0, v1, v2, v3, v5}, Lccsanandroid/graphics/Matrix;->setScale(FFFF)V

    .line 1207
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->matrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Path;->transform(Lccsanandroid/graphics/Matrix;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/graphics/Path;->computeBounds(Lccsanandroid/graphics/RectF;Z)V

    .line 1212
    return-void
.end method

.method private calculateStrokePath()V
    .locals 6

    .line 1152
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    move-result v0

    neg-float v0, v0

    .line 1153
    .local v0, "strokeInsetLength":F
    nop

    .line 1154
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    new-instance v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$2;

    invoke-direct {v2, p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable$2;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable;F)V

    .line 1155
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1168
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 1171
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Lccsanandroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Lccsanandroid/graphics/Path;

    .line 1168
    invoke-virtual {v2, v1, v3, v4, v5}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 1173
    return-void
.end method

.method private calculateTintColorTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Z)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .param p3, "requiresElevationOverlay"    # Z

    .line 1266
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1267
    .local v0, "tintColor":I
    if-eqz p3, :cond_0

    .line 1268
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->compositeElevationOverlayIfNeeded(I)I

    move-result v0

    .line 1270
    :cond_0
    new-instance v1, Lccsanandroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Lccsanandroid/graphics/PorterDuffColorFilter;-><init>(ILccsanandroid/graphics/PorterDuff$Mode;)V

    return-object v1
.end method

.method private calculateTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/graphics/Paint;Z)Lccsanandroid/graphics/PorterDuffColorFilter;
    .locals 1
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .param p3, "paint"    # Lccsanandroid/graphics/Paint;
    .param p4, "requiresElevationOverlay"    # Z

    .line 1243
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculateTintColorTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Z)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_1

    .line 1244
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePaintColorTintFilter(Lccsanandroid/graphics/Paint;Z)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 1243
    :goto_1
    return-object v0
.end method

.method public static createWithElevationOverlay(Lccsanandroid/content/Context;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Lccsanandroid/content/Context;F)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createWithElevationOverlay(Lccsanandroid/content/Context;F)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "elevation"    # F

    .line 170
    sget v0, Lccsancom/google/android/material/R$attr;->colorSurface:I

    const-class v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {p0, v0, v1}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "colorSurface":I
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 174
    .local v1, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1, p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 175
    invoke-static {v0}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 176
    invoke-virtual {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 177
    return-object v1
.end method

.method private drawCompatShadow(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1087
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 1088
    sget-object v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    invoke-virtual {v1}, Lccsancom/google/android/material/shadow/ShadowRenderer;->getShadowPaint()Lccsanandroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 1098
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1099
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    aget-object v1, v1, v0

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    invoke-virtual {v1, v2, v3, p1}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V

    .line 1100
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    aget-object v1, v1, v0

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    invoke-virtual {v1, v2, v3, p1}, Lccsancom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Lccsancom/google/android/material/shadow/ShadowRenderer;ILccsanandroid/graphics/Canvas;)V

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    .end local v0    # "index":I
    :cond_2
    iget-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    if-eqz v0, :cond_3

    .line 1104
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v0

    .line 1105
    .local v0, "shadowOffsetX":I
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v1

    .line 1107
    .local v1, "shadowOffsetY":I
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1108
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    sget-object v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->clearPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 1109
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1111
    .end local v0    # "shadowOffsetX":I
    .end local v1    # "shadowOffsetY":I
    :cond_3
    return-void
.end method

.method private drawFillShape(Lccsanandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1049
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v4, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;Lccsanandroid/graphics/Path;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)V

    .line 1050
    return-void
.end method

.method private drawShape(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;Lccsanandroid/graphics/Path;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)V
    .locals 2
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .param p3, "path"    # Lccsanandroid/graphics/Path;
    .param p4, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .param p5, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 1038
    invoke-virtual {p4, p5}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    nop

    .line 1040
    invoke-virtual {p4}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p5}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    mul-float v0, v0, v1

    .line 1042
    .local v0, "cornerSize":F
    invoke-virtual {p1, p5, v0, v0, p2}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 1043
    .end local v0    # "cornerSize":F
    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p1, p3, p2}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 1046
    :goto_0
    return-void
.end method

.method private drawStrokeShape(Lccsanandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1053
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathInsetByStroke:Lccsanandroid/graphics/Path;

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeShapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1054
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsInsetByStroke()Lccsanandroid/graphics/RectF;

    move-result-object v5

    .line 1053
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;Lccsanandroid/graphics/Path;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)V

    .line 1055
    return-void
.end method

.method private getBoundsInsetByStroke()Lccsanandroid/graphics/RectF;
    .locals 2

    .line 1327
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/RectF;)V

    .line 1328
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getStrokeInsetLength()F

    move-result v0

    .line 1329
    .local v0, "inset":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Lccsanandroid/graphics/RectF;->inset(FF)V

    .line 1330
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->insetRectF:Lccsanandroid/graphics/RectF;

    return-object v1
.end method

.method private getStrokeInsetLength()F
    .locals 2

    .line 1319
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    .line 1322
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasCompatShadow()Z
    .locals 3

    .line 916
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 918
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->requiresCompatShadow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 916
    :goto_0
    return v1
.end method

.method private hasFill()Z
    .locals 2

    .line 923
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasStroke()Z
    .locals 2

    .line 929
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    .line 931
    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0
.end method

.method private invalidateSelfIgnoreShape()V
    .locals 0

    .line 863
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 864
    return-void
.end method

.method private maybeDrawCompatShadow(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 971
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->hasCompatShadow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    return-void

    .line 975
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 976
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->prepareCanvasForShadow(Lccsanandroid/graphics/Canvas;)V

    .line 977
    iget-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    if-nez v0, :cond_1

    .line 978
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Lccsanandroid/graphics/Canvas;)V

    .line 979
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 980
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 986
    .local v0, "pathExtraWidth":I
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v1}, Lccsanandroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 988
    .local v1, "pathExtraHeight":I
    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 995
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    .line 997
    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathBounds:Lccsanandroid/graphics/RectF;

    .line 998
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v4, v4, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    .line 996
    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 1000
    .local v2, "shadowLayer":Lccsanandroid/graphics/Bitmap;
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 1004
    .local v3, "shadowCanvas":Lccsanandroid/graphics/Canvas;
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Rect;->left:I

    iget-object v5, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v5, v5, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 1005
    .local v4, "shadowLeft":F
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Lccsanandroid/graphics/Rect;->top:I

    iget-object v6, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v6, v6, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    int-to-float v5, v5

    .line 1006
    .local v5, "shadowTop":F
    neg-float v6, v4

    neg-float v7, v5

    invoke-virtual {v3, v6, v7}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1007
    invoke-direct {p0, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawCompatShadow(Lccsanandroid/graphics/Canvas;)V

    .line 1008
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v4, v5, v6}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    .line 1011
    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 1014
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 1015
    return-void

    .line 989
    .end local v2    # "shadowLayer":Lccsanandroid/graphics/Bitmap;
    .end local v3    # "shadowCanvas":Lccsanandroid/graphics/Canvas;
    .end local v4    # "shadowLeft":F
    .end local v5    # "shadowTop":F
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static modulateAlpha(II)I
    .locals 2
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .line 246
    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 247
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private prepareCanvasForShadow(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1059
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetX()I

    move-result v0

    .line 1060
    .local v0, "shadowOffsetX":I
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    move-result v1

    .line 1065
    .local v1, "shadowOffsetY":I
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    if-eqz v2, :cond_0

    .line 1068
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getClipBounds()Lccsanandroid/graphics/Rect;

    move-result-object v2

    .line 1069
    .local v2, "canvasClipBounds":Lccsanandroid/graphics/Rect;
    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    neg-int v3, v3

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v4, v4, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/graphics/Rect;->inset(II)V

    .line 1070
    invoke-virtual {v2, v0, v1}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 1071
    sget-object v3, Lccsanandroid/graphics/Region$Op;->REPLACE:Lccsanandroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Region$Op;)Z

    .line 1076
    .end local v2    # "canvasClipBounds":Lccsanandroid/graphics/Rect;
    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 1077
    return-void
.end method

.method private updateColorsForState([I)Z
    .locals 4
    .param p1, "state"    # [I

    .line 1294
    const/4 v0, 0x0

    .line 1296
    .local v0, "invalidateSelf":Z
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v1

    .line 1298
    .local v1, "previousFillColor":I
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 1299
    .local v2, "newFillColor":I
    if-eq v1, v2, :cond_0

    .line 1300
    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1301
    const/4 v0, 0x1

    .line 1305
    .end local v1    # "previousFillColor":I
    .end local v2    # "newFillColor":I
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 1306
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v1

    .line 1307
    .local v1, "previousStrokeColor":I
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 1308
    invoke-virtual {v2, p1, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 1309
    .local v2, "newStrokeColor":I
    if-eq v1, v2, :cond_1

    .line 1310
    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 1311
    const/4 v0, 0x1

    .line 1315
    .end local v1    # "previousStrokeColor":I
    .end local v2    # "newStrokeColor":I
    :cond_1
    return v0
.end method

.method private updateTintFilter()Z
    .locals 7

    .line 1215
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    .line 1216
    .local v0, "originalTintFilter":Lccsanandroid/graphics/PorterDuffColorFilter;
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    .line 1217
    .local v1, "originalStrokeTintFilter":Lccsanandroid/graphics/PorterDuffColorFilter;
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    .line 1218
    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/graphics/Paint;Z)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    .line 1223
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    .line 1224
    const/4 v6, 0x0

    invoke-direct {p0, v2, v3, v4, v6}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculateTintFilter(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/graphics/Paint;Z)Lccsanandroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    .line 1229
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-boolean v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    if-eqz v2, :cond_0

    .line 1230
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 1231
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1230
    invoke-virtual {v2, v3}, Lccsancom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 1233
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    .line 1234
    invoke-static {v1, v2}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 1233
    :goto_1
    return v5
.end method

.method private updateZ()V
    .locals 4

    .line 712
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    .line 713
    .local v0, "z":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 714
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 716
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 717
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 718
    return-void
.end method


# virtual methods
.method protected final calculatePathForSize(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V
    .locals 6
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p2, "path"    # Lccsanandroid/graphics/Path;

    .line 1140
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    iget-object v4, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathShadowListener:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsancom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Lccsanandroid/graphics/Path;)V

    .line 1146
    return-void
.end method

.method protected compositeElevationOverlayIfNeeded(I)I
    .locals 2
    .param p1, "backgroundColor"    # I

    .line 606
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getZ()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getParentAbsoluteElevation()F

    move-result v1

    add-float/2addr v0, v1

    .line 607
    .local v0, "elevation":F
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 608
    invoke-virtual {v1, p1, v0}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 607
    :goto_0
    return v1
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 942
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->tintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 943
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 944
    .local v0, "prevAlpha":I
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    invoke-static {v0, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 946
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokeTintFilter:Lccsanandroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 947
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 949
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 950
    .local v1, "prevStrokeAlpha":I
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v3, v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    invoke-static {v1, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 952
    iget-boolean v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    if-eqz v2, :cond_0

    .line 953
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculateStrokePath()V

    .line 954
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 955
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 958
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->maybeDrawCompatShadow(Lccsanandroid/graphics/Canvas;)V

    .line 959
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->hasFill()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawFillShape(Lccsanandroid/graphics/Canvas;)V

    .line 962
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->hasStroke()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Lccsanandroid/graphics/Canvas;)V

    .line 966
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->fillPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v2, v0}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 967
    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->strokePaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 968
    return-void
.end method

.method protected drawShape(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/RectF;)V
    .locals 7
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .param p3, "path"    # Lccsanandroid/graphics/Path;
    .param p4, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 1028
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v5, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawShape(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;Lccsanandroid/graphics/Path;Lccsancom/google/android/material/shape/ShapeAppearanceModel;Lccsanandroid/graphics/RectF;)V

    .line 1029
    return-void
.end method

.method public getBottomLeftCornerResolvedSize()F
    .locals 2

    .line 1351
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1353
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1354
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 1351
    return v0
.end method

.method public getBottomRightCornerResolvedSize()F
    .locals 2

    .line 1359
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1361
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1362
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 1359
    return v0
.end method

.method protected getBoundsAsRectF()Lccsanandroid/graphics/RectF;
    .locals 2

    .line 473
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->rectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 474
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->rectF:Lccsanandroid/graphics/RectF;

    return-object v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 234
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 657
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    return v0
.end method

.method public getFillColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 317
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getInterpolation()F
    .locals 1

    .line 620
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 444
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Lccsanandroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Lccsanandroid/graphics/Outline;

    .line 1178
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1180
    return-void

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v0

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v1, v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    mul-float v0, v0, v1

    .line 1185
    .local v0, "radius":F
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsanandroid/graphics/Outline;->setRoundRect(Lccsanandroid/graphics/Rect;F)V

    .line 1186
    return-void

    .line 1189
    .end local v0    # "radius":F
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 1190
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 1192
    :cond_2
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Outline;->setConvexPath(Lccsanandroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1198
    :cond_3
    :goto_0
    return-void
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 507
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 509
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getPaintStyle()Lccsanandroid/graphics/Paint$Style;
    .locals 1

    .line 901
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getParentAbsoluteElevation()F
    .locals 1

    .line 640
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    return v0
.end method

.method public getPathForSize(IILccsanandroid/graphics/Path;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "path"    # Lccsanandroid/graphics/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    new-instance v0, Lccsanandroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePathForSize(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 1131
    return-void
.end method

.method public getScale()F
    .locals 1

    .line 837
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    return v0
.end method

.method public getShadowCompatRotation()I
    .locals 1

    .line 784
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    return v0
.end method

.method public getShadowCompatibilityMode()I
    .locals 1

    .line 502
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    return v0
.end method

.method public getShadowElevation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getShadowOffsetX()I
    .locals 4

    .line 1115
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    int-to-double v0, v0

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    int-to-double v2, v2

    .line 1117
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1115
    return v0
.end method

.method public getShadowOffsetY()I
    .locals 4

    .line 1122
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    int-to-double v0, v0

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v2, v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    int-to-double v2, v2

    .line 1124
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1122
    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .line 808
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    return v0
.end method

.method public getShadowVerticalOffset()I
    .locals 1

    .line 749
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    return v0
.end method

.method public getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 271
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getShapedViewModel()Lccsancom/google/android/material/shape/ShapePathModel;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 295
    .local v0, "shapeAppearance":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    instance-of v1, v0, Lccsancom/google/android/material/shape/ShapePathModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/shape/ShapePathModel;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getStrokeColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 339
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 371
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 427
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    return v0
.end method

.method public getTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 361
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTopLeftCornerResolvedSize()F
    .locals 2

    .line 1335
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1337
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1338
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 1335
    return v0
.end method

.method public getTopRightCornerResolvedSize()F
    .locals 2

    .line 1343
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 1345
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    .line 1346
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 1343
    return v0
.end method

.method public getTranslationZ()F
    .locals 1

    .line 678
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    return v0
.end method

.method public getTransparentRegion()Lccsanandroid/graphics/Region;
    .locals 4

    .line 463
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 464
    .local v0, "bounds":Lccsanandroid/graphics/Rect;
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Lccsanandroid/graphics/Region;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Region;->set(Lccsanandroid/graphics/Rect;)Z

    .line 465
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-direct {p0, v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->calculatePath(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 466
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Lccsanandroid/graphics/Region;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    iget-object v3, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Lccsanandroid/graphics/Region;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Region;->setPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Region;)Z

    .line 467
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Lccsanandroid/graphics/Region;

    iget-object v2, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->scratchRegion:Lccsanandroid/graphics/Region;

    sget-object v3, Lccsanandroid/graphics/Region$Op;->DIFFERENCE:Lccsanandroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Region;->op(Lccsanandroid/graphics/Region;Lccsanandroid/graphics/Region$Op;)Z

    .line 468
    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->transparentRegion:Lccsanandroid/graphics/Region;

    return-object v1
.end method

.method public getZ()F
    .locals 2

    .line 699
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public initializeElevationOverlay(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 599
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    new-instance v1, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {v1, p1}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 600
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 601
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 855
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 856
    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    .line 584
    invoke-virtual {v0}, Lccsancom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0
.end method

.method public isElevationOverlayInitialized()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevationOverlayProvider:Lccsancom/google/android/material/elevation/ElevationOverlayProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointInTransparentRegion(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 497
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isRoundRect()Z
    .locals 2

    .line 1373
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public isShadowEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1275
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 1276
    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    .line 1277
    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 1278
    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    .line 1279
    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 1275
    :goto_1
    return v0
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 240
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    .line 241
    .local v0, "newDrawableState":Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;
    iput-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 242
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 937
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 938
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .line 1284
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateColorsForState([I)Z

    move-result v0

    .line 1285
    .local v0, "paintColorChanged":Z
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    move-result v1

    .line 1286
    .local v1, "tintFilterChanged":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1287
    .local v2, "invalidateSelf":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 1288
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1290
    :cond_2
    return v2
.end method

.method public requiresCompatShadow()Z
    .locals 2

    .line 827
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 828
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->path:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 827
    :goto_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 449
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    if-eq v0, p1, :cond_0

    .line 450
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->alpha:I

    .line 451
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 453
    :cond_0
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 457
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->colorFilter:Lccsanandroid/graphics/ColorFilter;

    .line 458
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 459
    return-void
.end method

.method public setCornerSize(F)V
    .locals 1
    .param p1, "cornerSize"    # F

    .line 479
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 480
    return-void
.end method

.method public setCornerSize(Lccsancom/google/android/material/shape/CornerSize;)V
    .locals 1
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 484
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 485
    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 759
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->setEdgeIntersectionCheckEnable(Z)V

    .line 760
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 666
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->elevation:F

    .line 668
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 670
    :cond_0
    return-void
.end method

.method public setFillColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "fillColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 304
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Lccsanandroid/content/res/ColorStateList;

    .line 306
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 308
    :cond_0
    return-void
.end method

.method public setInterpolation(F)V
    .locals 1
    .param p1, "interpolation"    # F

    .line 631
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->interpolation:F

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->pathDirty:Z

    .line 634
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 636
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 524
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    .line 528
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->padding:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 529
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 530
    return-void
.end method

.method public setPaintStyle(Lccsanandroid/graphics/Paint$Style;)V
    .locals 1
    .param p1, "paintStyle"    # Lccsanandroid/graphics/Paint$Style;

    .line 910
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->paintStyle:Lccsanandroid/graphics/Paint$Style;

    .line 911
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 912
    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .locals 1
    .param p1, "parentAbsoluteElevation"    # F

    .line 645
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->parentAbsoluteElevation:F

    .line 647
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 649
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 846
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->scale:F

    .line 848
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 850
    :cond_0
    return-void
.end method

.method public setShadowBitmapDrawingEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 754
    iput-boolean p1, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowBitmapDrawingEnable:Z

    .line 755
    return-void
.end method

.method public setShadowColor(I)V
    .locals 2
    .param p1, "shadowColor"    # I

    .line 890
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->shadowRenderer:Lccsancom/google/android/material/shadow/ShadowRenderer;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    .line 891
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 892
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 893
    return-void
.end method

.method public setShadowCompatRotation(I)V
    .locals 1
    .param p1, "shadowRotation"    # I

    .line 796
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    if-eq v0, p1, :cond_0

    .line 797
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRotation:I

    .line 798
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 800
    :cond_0
    return-void
.end method

.method public setShadowCompatibilityMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 543
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    if-eq v0, p1, :cond_0

    .line 544
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatMode:I

    .line 545
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 547
    :cond_0
    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1
    .param p1, "shadowElevation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 739
    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 1
    .param p1, "shadowEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 576
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 1
    .param p1, "shadowRadius"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatRadius:I

    .line 820
    return-void
.end method

.method public setShadowVerticalOffset(I)V
    .locals 1
    .param p1, "shadowOffset"    # I

    .line 773
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    if-eq v0, p1, :cond_0

    .line 774
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shadowCompatOffset:I

    .line 775
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 777
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 258
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 259
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 260
    return-void
.end method

.method public setShapedViewModel(Lccsancom/google/android/material/shape/ShapePathModel;)V
    .locals 0
    .param p1, "shapedViewModel"    # Lccsancom/google/android/material/shape/ShapePathModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 283
    return-void
.end method

.method public setStroke(FI)V
    .locals 1
    .param p1, "strokeWidth"    # F
    .param p2, "strokeColor"    # I

    .line 406
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 407
    invoke-static {p2}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 408
    return-void
.end method

.method public setStroke(FLccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "strokeWidth"    # F
    .param p2, "strokeColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 417
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 418
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 419
    return-void
.end method

.method public setStrokeColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "strokeColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 326
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 327
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 330
    :cond_0
    return-void
.end method

.method public setStrokeTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 396
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStrokeTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 397
    return-void
.end method

.method public setStrokeTint(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 385
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeTintList:Lccsanandroid/content/res/ColorStateList;

    .line 386
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 387
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 388
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 436
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    .line 437
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 438
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 376
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 377
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 353
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintList:Lccsanandroid/content/res/ColorStateList;

    .line 354
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 355
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 356
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 344
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 345
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-object p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->tintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 346
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateTintFilter()Z

    .line 347
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelfIgnoreShape()V

    .line 349
    :cond_0
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 1
    .param p1, "translationZ"    # F

    .line 687
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->translationZ:F

    .line 689
    invoke-direct {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->updateZ()V

    .line 691
    :cond_0
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .locals 1
    .param p1, "useTintColorForShadow"    # Z

    .line 874
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-boolean v0, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    if-eq v0, p1, :cond_0

    .line 875
    iget-object v0, p0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput-boolean p1, v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->useTintColorForShadow:Z

    .line 876
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 878
    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 1
    .param p1, "z"    # F

    .line 708
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTranslationZ(F)V

    .line 709
    return-void
.end method
