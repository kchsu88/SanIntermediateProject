.class public final Lccsanandroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsanandroid/graphics/Rect;",
            "Lccsanandroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Lccsanandroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 11
    .param p0, "paint"    # Lccsanandroid/graphics/Paint;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paint",
            "string"
        }
    .end annotation

    .line 51
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lccsanandroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 56
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    return v1

    .line 61
    :cond_1
    const-string/jumbo v3, "\udb3f\udffd"

    invoke-virtual {p0, v3}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 62
    .local v4, "missingGlyphWidth":F
    const-string v5, "m"

    invoke-virtual {p0, v5}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 64
    .local v5, "emGlyphWidth":F
    invoke-virtual {p0, p1}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 66
    .local v6, "width":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-nez v7, :cond_2

    .line 68
    return v2

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v7

    if-le v7, v1, :cond_5

    .line 74
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v5

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 75
    return v2

    .line 88
    :cond_3
    const/4 v7, 0x0

    .line 89
    .local v7, "sumWidth":F
    const/4 v8, 0x0

    .line 90
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_4

    .line 91
    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 92
    .local v9, "charCount":I
    add-int v10, v8, v9

    invoke-virtual {p0, p1, v8, v10}, Lccsanandroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    add-float/2addr v7, v10

    .line 93
    add-int/2addr v8, v9

    .line 94
    .end local v9    # "charCount":I
    goto :goto_0

    .line 95
    :cond_4
    cmpl-float v9, v6, v7

    if-ltz v9, :cond_5

    .line 96
    return v2

    .line 100
    .end local v7    # "sumWidth":F
    .end local v8    # "i":I
    :cond_5
    cmpl-float v7, v6, v4

    if-eqz v7, :cond_6

    .line 102
    return v1

    .line 107
    :cond_6
    invoke-static {}, Lccsanandroidx/core/graphics/PaintCompat;->obtainEmptyRects()Lccsanandroidx/core/util/Pair;

    move-result-object v7

    .line 108
    .local v7, "rects":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;>;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v7, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, v3, v2, v8, v9}, Lccsanandroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILccsanandroid/graphics/Rect;)V

    .line 109
    iget-object v3, v7, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v0, v3}, Lccsanandroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILccsanandroid/graphics/Rect;)V

    .line 110
    iget-object v2, v7, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/graphics/Rect;

    iget-object v3, v7, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private static obtainEmptyRects()Lccsanandroidx/core/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsanandroid/graphics/Rect;",
            "Lccsanandroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lccsanandroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/util/Pair;

    .line 146
    .local v1, "rects":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;>;"
    if-nez v1, :cond_0

    .line 147
    new-instance v2, Lccsanandroidx/core/util/Pair;

    new-instance v3, Lccsanandroid/graphics/Rect;

    invoke-direct {v3}, Lccsanandroid/graphics/Rect;-><init>()V

    new-instance v4, Lccsanandroid/graphics/Rect;

    invoke-direct {v4}, Lccsanandroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v3, v4}, Lccsanandroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, v1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 151
    iget-object v0, v1, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 153
    :goto_0
    return-object v1
.end method

.method public static setBlendMode(Lccsanandroid/graphics/Paint;Lccsanandroidx/core/graphics/BlendModeCompat;)Z
    .locals 4
    .param p0, "paint"    # Lccsanandroid/graphics/Paint;
    .param p1, "blendMode"    # Lccsanandroidx/core/graphics/BlendModeCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paint",
            "blendMode"
        }
    .end annotation

    .line 126
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    .line 127
    if-eqz p1, :cond_0

    invoke-static {p1}, Lccsanandroidx/core/graphics/BlendModeUtils;->obtainBlendModeFromCompat(Lccsanandroidx/core/graphics/BlendModeCompat;)Lccsanandroid/graphics/BlendMode;

    move-result-object v2

    :cond_0
    invoke-virtual {p0, v2}, Lccsanandroid/graphics/Paint;->setBlendMode(Lccsanandroid/graphics/BlendMode;)V

    .line 129
    return v1

    .line 130
    :cond_1
    if-eqz p1, :cond_4

    .line 131
    invoke-static {p1}, Lccsanandroidx/core/graphics/BlendModeUtils;->obtainPorterDuffFromCompat(Lccsanandroidx/core/graphics/BlendModeCompat;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 132
    .local v0, "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_2

    new-instance v2, Lccsanandroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v0}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0, v2}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 135
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 139
    .end local v0    # "mode":Lccsanandroid/graphics/PorterDuff$Mode;
    :cond_4
    invoke-virtual {p0, v2}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 140
    return v1
.end method
