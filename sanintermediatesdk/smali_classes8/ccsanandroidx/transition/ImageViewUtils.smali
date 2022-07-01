.class Lccsanandroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static sDrawMatrixField:Ljava/lang/reflect/Field;

.field private static sDrawMatrixFieldFetched:Z

.field private static sTryHiddenAnimateTransform:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static animateTransform(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V
    .locals 5
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 45
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ImageView;->animateTransform(Lccsanandroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 50
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    .local v1, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 53
    .local v2, "vwidth":I
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 54
    .local v3, "vheight":I
    invoke-virtual {v1, v0, v0, v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->invalidate()V

    .line 57
    .end local v1    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    .end local v2    # "vwidth":I
    .end local v3    # "vheight":I
    :cond_1
    goto :goto_1

    :cond_2
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 58
    invoke-static {p0, p1}, Lccsanandroidx/transition/ImageViewUtils;->hiddenAnimateTransform(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    .restart local v1    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 63
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 62
    invoke-virtual {v1, v0, v0, v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "drawMatrix":Lccsanandroid/graphics/Matrix;
    invoke-static {}, Lccsanandroidx/transition/ImageViewUtils;->fetchDrawMatrixField()V

    .line 66
    sget-object v2, Lccsanandroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    .line 68
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/graphics/Matrix;

    move-object v0, v2

    .line 69
    if-nez v0, :cond_4

    .line 70
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2}, Lccsanandroid/graphics/Matrix;-><init>()V

    move-object v0, v2

    .line 71
    sget-object v2, Lccsanandroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_4
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 77
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Matrix;->set(Lccsanandroid/graphics/Matrix;)V

    .line 80
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->invalidate()V

    .line 83
    .end local v0    # "drawMatrix":Lccsanandroid/graphics/Matrix;
    .end local v1    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    :cond_7
    :goto_1
    return-void
.end method

.method private static fetchDrawMatrixField()V
    .locals 3

    .line 100
    sget-boolean v0, Lccsanandroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lccsanandroid/widget/ImageView;

    const-string v2, "mDrawMatrix"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 107
    :goto_0
    sput-boolean v0, Lccsanandroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    .line 109
    :cond_0
    return-void
.end method

.method private static hiddenAnimateTransform(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/widget/ImageView;
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 88
    sget-boolean v0, Lccsanandroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ImageView;->animateTransform(Lccsanandroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Lccsanandroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    .line 97
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    :goto_0
    return-void
.end method
