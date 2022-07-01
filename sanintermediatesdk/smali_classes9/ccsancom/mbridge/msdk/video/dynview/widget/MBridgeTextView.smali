.class public Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;
.super Lccsanandroidx/appcompat/widget/AppCompatTextView;
.source "MBridgeTextView.java"


# instance fields
.field private originalText:Ljava/lang/CharSequence;

.field private roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

.field private spacing:F


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private applySpacing()V
    .locals 6

    .line 152
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 155
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->isEnglish(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->isEnglish(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    const-string v1, "\u00a0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    .line 166
    :cond_3
    new-instance v1, Lccsanandroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 169
    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 171
    new-instance v2, Lccsanandroid/text/style/ScaleXSpan;

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-direct {v2, v4}, Lccsanandroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Lccsanandroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 174
    :cond_4
    sget-object v0, Lccsanandroid/widget/TextView$BufferType;->SPANNABLE:Lccsanandroid/widget/TextView$BufferType;

    invoke-super {p0, v1, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Lccsanandroid/widget/TextView$BufferType;)V

    .line 175
    return-void
.end method

.method private init(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 131
    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/video/dynview/f/b;->a(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)Lccsancom/mbridge/msdk/video/dynview/f/b;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    .line 132
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->setBackgroundKeepingPadding(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .locals 1

    .line 181
    const-string v0, "^[a-zA-Z]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static setBackgroundKeepingPadding(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingRight()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 144
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 145
    aget p1, v0, v2

    aget v1, v0, v3

    aget v2, v0, v4

    aget v0, v0, v5

    invoke-virtual {p0, p1, v1, v2, v0}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 146
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setColor(I)V

    .line 49
    return-void
.end method

.method public setEachCornerRadius(IIII)V
    .locals 2

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x2

    aput p1, v0, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    const/4 p2, 0x5

    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setCornerRadii([F)V

    .line 110
    return-void
.end method

.method public setGradient(ILccsanandroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setGradientType(I)V

    .line 71
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setOrientation(Lccsanandroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 72
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setColors([I)V

    .line 73
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->setCornerRadius(F)V

    .line 91
    return-void
.end method

.method public setSpacing(F)V
    .locals 0

    .line 116
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    .line 117
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->applySpacing()V

    .line 118
    return-void
.end method

.method public setStrokeColors(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/f/b;->a(I)V

    .line 82
    return-void
.end method

.method public setStrokeData(II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->roundButtonDrawable:Lccsancom/mbridge/msdk/video/dynview/f/b;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/f/b;->a(II)V

    .line 60
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Lccsanandroid/widget/TextView$BufferType;)V
    .locals 2

    .line 122
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->spacing:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Lccsanandroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 125
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->originalText:Ljava/lang/CharSequence;

    .line 126
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeTextView;->applySpacing()V

    .line 128
    :goto_0
    return-void
.end method
