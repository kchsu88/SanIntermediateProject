.class public final Lccsancom/mbridge/msdk/video/dynview/f/a;
.super Lccsanandroid/graphics/drawable/ShapeDrawable;
.source "BackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/dynview/f/a$b;,
        Lccsancom/mbridge/msdk/video/dynview/f/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Lccsanandroid/graphics/Bitmap;

.field private g:Lccsanandroid/graphics/Bitmap;

.field private h:Lccsanandroid/graphics/Paint;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)V
    .locals 1

    .line 62
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->a(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroid/graphics/drawable/ShapeDrawable;-><init>(Lccsanandroid/graphics/drawable/shapes/Shape;)V

    .line 63
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->b(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->f:Lccsanandroid/graphics/Bitmap;

    .line 64
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->c(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->g:Lccsanandroid/graphics/Bitmap;

    .line 65
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->d(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->a:I

    .line 66
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->e(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    .line 67
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->f(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    .line 68
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->g(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    .line 69
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;->h(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)F

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    .line 71
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->h:Lccsanandroid/graphics/Paint;

    .line 72
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 73
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->h:Lccsanandroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/dynview/f/a$a;Lccsancom/mbridge/msdk/video/dynview/f/a$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/a;-><init>(Lccsancom/mbridge/msdk/video/dynview/f/a$a;)V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/f/a$a;
    .locals 2

    .line 165
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/f/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/f/a$a;-><init>(Lccsancom/mbridge/msdk/video/dynview/f/a$1;)V

    return-object v0
.end method

.method private a(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Bitmap;)V
    .locals 3

    .line 153
    new-instance v0, Lccsanandroid/graphics/BitmapShader;

    sget-object v1, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    sget-object v2, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {v0, p3, v1, v2}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    .line 154
    iget-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->h:Lccsanandroid/graphics/Paint;

    invoke-virtual {p3, v0}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 155
    iget-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->h:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 156
    return-void
.end method


# virtual methods
.method public final draw(Lccsanandroid/graphics/Canvas;)V
    .locals 6

    .line 80
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/ShapeDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 81
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->a:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 82
    nop

    .line 1089
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    div-float/2addr v0, v1

    .line 1091
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    .line 1092
    invoke-virtual {v1, v2, v2}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 1093
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1094
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1095
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    invoke-virtual {v1, v3, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1096
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->f:Lccsanandroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1098
    :try_start_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->f:Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v3}, Lccsancom/mbridge/msdk/video/dynview/f/a;->a(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    goto :goto_0

    .line 1099
    :catch_0
    move-exception v1

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1106
    :cond_0
    :goto_0
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    .line 1107
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 1108
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1109
    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1110
    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1111
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->g:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1113
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->g:Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v0}, Lccsancom/mbridge/msdk/video/dynview/f/a;->a(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    goto :goto_1

    .line 1114
    :catch_1
    move-exception p1

    .line 1115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_1
    :goto_1
    goto/16 :goto_3

    .line 84
    :cond_2
    nop

    .line 1121
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    div-float/2addr v0, v1

    .line 1123
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    .line 1124
    invoke-virtual {v1, v2, v2}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 1125
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1126
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v3, v4}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1127
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1128
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->f:Lccsanandroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1130
    :try_start_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->f:Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v3}, Lccsancom/mbridge/msdk/video/dynview/f/a;->a(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1133
    goto :goto_2

    .line 1131
    :catch_2
    move-exception v1

    .line 1132
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1137
    :cond_3
    :goto_2
    new-instance v1, Lccsanandroid/graphics/Path;

    invoke-direct {v1}, Lccsanandroid/graphics/Path;-><init>()V

    .line 1138
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 1139
    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    invoke-virtual {v1, v3, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1140
    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->b:F

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v2, v3}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1141
    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->d:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->c:F

    invoke-virtual {v1, v0, v2}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 1142
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->g:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1144
    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/f/a;->g:Lccsanandroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v0}, Lccsancom/mbridge/msdk/video/dynview/f/a;->a(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1147
    goto :goto_3

    .line 1145
    :catch_3
    move-exception p1

    .line 1146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_4
    :goto_3
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 161
    const/4 v0, -0x3

    return v0
.end method
