.class public Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;
.super Lccsancom/mbridge/msdk/widget/MBImageView;
.source "RoundImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lccsanandroid/graphics/Paint;

.field private d:I

.field private e:Lccsanandroid/graphics/Matrix;

.field private f:Lccsanandroid/graphics/BitmapShader;

.field private g:I

.field private h:Lccsanandroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 59
    new-instance p1, Lccsanandroid/graphics/Matrix;

    invoke-direct {p1}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->e:Lccsanandroid/graphics/Matrix;

    .line 60
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    nop

    .line 65
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    .line 63
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1, p1}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    .line 66
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Lccsanandroid/graphics/Matrix;

    invoke-direct {p1}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->e:Lccsanandroid/graphics/Matrix;

    .line 48
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    .line 49
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    nop

    .line 53
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    .line 51
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p2, v0, p1}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    .line 54
    iput p2, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 34
    new-instance p1, Lccsanandroid/graphics/Matrix;

    invoke-direct {p1}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->e:Lccsanandroid/graphics/Matrix;

    .line 35
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    .line 36
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    nop

    .line 40
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    .line 38
    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3, p1}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    .line 41
    iput p2, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 8

    .line 81
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    nop

    .line 1148
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1149
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1150
    goto/16 :goto_1

    .line 1153
    :cond_1
    nop

    .line 1172
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1173
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1174
    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    .line 1175
    new-instance v5, Lccsanandroid/graphics/Canvas;

    invoke-direct {v5, v4}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 1176
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1177
    invoke-virtual {v0, v5}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1178
    nop

    .line 1153
    nop

    .line 1154
    new-instance v0, Lccsanandroid/graphics/BitmapShader;

    sget-object v2, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    sget-object v3, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {v0, v4, v2, v3}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->f:Lccsanandroid/graphics/BitmapShader;

    .line 1155
    nop

    .line 1156
    nop

    .line 1157
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 1158
    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1159
    iget v3, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->g:I

    int-to-float v4, v3

    mul-float v4, v4, v2

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 1160
    int-to-float v3, v3

    mul-float v3, v3, v2

    div-float v2, v3, v0

    .line 1162
    move v0, v2

    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 1163
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1164
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    .line 1162
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1166
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->e:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v3, v2, v0}, Lccsanandroid/graphics/Matrix;->setScale(FF)V

    .line 1167
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->f:Lccsanandroid/graphics/BitmapShader;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->e:Lccsanandroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/BitmapShader;->setLocalMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 1168
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->f:Lccsanandroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 86
    :goto_1
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->h:Lccsanandroid/graphics/RectF;

    iget v1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    goto :goto_2

    .line 90
    :cond_4
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->d:I

    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->c:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 92
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/widget/MBImageView;->onMeasure(II)V

    .line 72
    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->g:I

    .line 74
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->d:I

    .line 75
    invoke-virtual {p0, p1, p1}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->setMeasuredDimension(II)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 1

    .line 116
    instance-of v0, p1, Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lccsanandroid/os/Bundle;

    .line 118
    nop

    .line 119
    const-string v0, "state_instance"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 118
    invoke-super {p0, v0}, Lccsancom/mbridge/msdk/widget/MBImageView;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 120
    const-string v0, "state_type"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 121
    const-string v0, "state_border_radius"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 126
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 3

    .line 107
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 108
    invoke-super {p0}, Lccsancom/mbridge/msdk/widget/MBImageView;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state_instance"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 109
    iget v1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    const-string v2, "state_type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget v1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    const-string v2, "state_border_radius"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/widget/MBImageView;->onSizeChanged(IIII)V

    .line 101
    iget p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 102
    new-instance p1, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->h:Lccsanandroid/graphics/RectF;

    .line 103
    :cond_0
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p1

    .line 130
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->b:I

    .line 132
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 137
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    if-eq v0, p1, :cond_1

    .line 138
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 139
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->a:I

    .line 142
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->requestLayout()V

    .line 145
    :cond_1
    return-void
.end method
