.class public final Lccsancom/mbridge/msdk/video/dynview/f/b;
.super Lccsanandroid/graphics/drawable/GradientDrawable;
.source "MBShapeDrawable.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/b;->a:I

    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)Lccsancom/mbridge/msdk/video/dynview/f/b;
    .locals 10

    .line 35
    const-string p2, "RoundShape"

    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p1

    .line 37
    const-string p2, "RoundShape_roundBgColor"

    const-string v0, "styleable"

    invoke-static {p0, p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 38
    const-string v1, "white"

    const-string v2, "color"

    invoke-static {p0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 39
    const-string v3, "RoundShape_roundRadius"

    invoke-static {p0, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 40
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 41
    const-string v5, "RoundShape_topLeftRadius"

    invoke-static {p0, v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 42
    invoke-virtual {p1, v5, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 43
    const-string v6, "RoundShape_topRightRadius"

    invoke-static {p0, v6, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 44
    invoke-virtual {p1, v6, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 45
    const-string v7, "RoundShape_bottomLeftRadius"

    invoke-static {p0, v7, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 46
    invoke-virtual {p1, v8, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 47
    invoke-static {p0, v7, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 48
    invoke-virtual {p1, v7, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 49
    const-string v9, "RoundShape_roundStrokeColor"

    invoke-static {p0, v9, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 50
    invoke-static {p0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v9, v1}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 51
    const-string v2, "RoundShape_roundStrokeWidth"

    invoke-static {p0, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 52
    invoke-virtual {p1, p0, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    .line 53
    invoke-virtual {p1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance p1, Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;-><init>()V

    .line 57
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setColor(I)V

    .line 59
    if-gtz v5, :cond_1

    if-gtz v6, :cond_1

    if-gtz v8, :cond_1

    if-lez v7, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    int-to-float p2, v3

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setCornerRadius(F)V

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/16 p2, 0x8

    new-array p2, p2, [F

    int-to-float v0, v5

    aput v0, p2, v4

    const/4 v2, 0x1

    aput v0, p2, v2

    const/4 v0, 0x2

    int-to-float v2, v6

    aput v2, p2, v0

    const/4 v0, 0x3

    aput v2, p2, v0

    const/4 v0, 0x4

    int-to-float v2, v8

    aput v2, p2, v0

    const/4 v0, 0x5

    aput v2, p2, v0

    const/4 v0, 0x6

    int-to-float v2, v7

    aput v2, p2, v0

    const/4 v0, 0x7

    aput v2, p2, v0

    .line 66
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setCornerRadii([F)V

    .line 67
    nop

    .line 71
    :goto_1
    invoke-virtual {p1, p0, v1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->a(II)V

    .line 73
    return-object p1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 30
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/b;->a:I

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->a(II)V

    .line 31
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 25
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/b;->a:I

    .line 26
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setStroke(II)V

    .line 27
    return-void
.end method
