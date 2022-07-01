.class public Lccsanandroidx/appcompat/widget/ContentFrameLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Lccsanandroid/graphics/Rect;

.field private mFixedHeightMajor:Lccsanandroid/util/TypedValue;

.field private mFixedHeightMinor:Lccsanandroid/util/TypedValue;

.field private mFixedWidthMajor:Lccsanandroid/util/TypedValue;

.field private mFixedWidthMinor:Lccsanandroid/util/TypedValue;

.field private mMinWidthMajor:Lccsanandroid/util/TypedValue;

.field private mMinWidthMinor:Lccsanandroid/util/TypedValue;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    .line 72
    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroid/graphics/Rect;

    .line 79
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->fitSystemWindows(Lccsanandroid/graphics/Rect;)Z

    .line 80
    return-void
.end method

.method public getFixedHeightMajor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 198
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Lccsanandroid/util/TypedValue;

    .line 199
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 203
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Lccsanandroid/util/TypedValue;

    .line 204
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Lccsanandroid/util/TypedValue;

    .line 189
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Lccsanandroid/util/TypedValue;

    .line 194
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 178
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Lccsanandroid/util/TypedValue;

    .line 179
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Lccsanandroid/util/TypedValue;
    .locals 1

    .line 183
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Lccsanandroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Lccsanandroid/util/TypedValue;

    .line 184
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Lccsanandroid/util/TypedValue;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 209
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 210
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    .line 213
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 217
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    .line 221
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 102
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    .line 103
    .local v0, "metrics":Lccsanandroid/util/DisplayMetrics;
    iget v1, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 105
    .local v1, "isPortrait":Z
    :goto_0
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 106
    .local v2, "widthMode":I
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 108
    .local v3, "heightMode":I
    const/4 v4, 0x0

    .line 109
    .local v4, "fixedWidth":Z
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_4

    .line 110
    if-eqz v1, :cond_1

    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMinor:Lccsanandroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedWidthMajor:Lccsanandroid/util/TypedValue;

    .line 111
    .local v9, "tvw":Lccsanandroid/util/TypedValue;
    :goto_1
    if-eqz v9, :cond_4

    iget v10, v9, Lccsanandroid/util/TypedValue;->type:I

    if-eqz v10, :cond_4

    .line 112
    const/4 v10, 0x0

    .line 113
    .local v10, "w":I
    iget v11, v9, Lccsanandroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_2

    .line 114
    invoke-virtual {v9, v0}, Lccsanandroid/util/TypedValue;->getDimension(Lccsanandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_2

    .line 115
    :cond_2
    iget v11, v9, Lccsanandroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_3

    .line 116
    iget v11, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Lccsanandroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    .line 118
    :cond_3
    :goto_2
    if-lez v10, :cond_4

    .line 119
    iget-object v11, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v11, v11, Lccsanandroid/graphics/Rect;->left:I

    iget-object v12, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v12, v12, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 120
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 121
    .local v11, "widthSize":I
    nop

    .line 122
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 121
    invoke-static {v12, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 123
    const/4 v4, 0x1

    .line 128
    .end local v9    # "tvw":Lccsanandroid/util/TypedValue;
    .end local v10    # "w":I
    .end local v11    # "widthSize":I
    :cond_4
    if-ne v3, v7, :cond_8

    .line 129
    if-eqz v1, :cond_5

    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMajor:Lccsanandroid/util/TypedValue;

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mFixedHeightMinor:Lccsanandroid/util/TypedValue;

    .line 130
    .local v9, "tvh":Lccsanandroid/util/TypedValue;
    :goto_3
    if-eqz v9, :cond_8

    iget v10, v9, Lccsanandroid/util/TypedValue;->type:I

    if-eqz v10, :cond_8

    .line 131
    const/4 v10, 0x0

    .line 132
    .local v10, "h":I
    iget v11, v9, Lccsanandroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_6

    .line 133
    invoke-virtual {v9, v0}, Lccsanandroid/util/TypedValue;->getDimension(Lccsanandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v10, v11

    goto :goto_4

    .line 134
    :cond_6
    iget v11, v9, Lccsanandroid/util/TypedValue;->type:I

    if-ne v11, v5, :cond_7

    .line 135
    iget v11, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Lccsanandroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v10, v11

    .line 137
    :cond_7
    :goto_4
    if-lez v10, :cond_8

    .line 138
    iget-object v11, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v11, v11, Lccsanandroid/graphics/Rect;->top:I

    iget-object v12, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v12, v12, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 139
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 140
    .local v11, "heightSize":I
    nop

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 140
    invoke-static {v12, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 146
    .end local v9    # "tvh":Lccsanandroid/util/TypedValue;
    .end local v10    # "h":I
    .end local v11    # "heightSize":I
    :cond_8
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 148
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 149
    .local v9, "width":I
    const/4 v10, 0x0

    .line 151
    .local v10, "measure":Z
    invoke-static {v9, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 153
    if-nez v4, :cond_d

    if-ne v2, v7, :cond_d

    .line 154
    if-eqz v1, :cond_9

    iget-object v7, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMinor:Lccsanandroid/util/TypedValue;

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mMinWidthMajor:Lccsanandroid/util/TypedValue;

    .line 155
    .local v7, "tv":Lccsanandroid/util/TypedValue;
    :goto_5
    if-eqz v7, :cond_d

    iget v11, v7, Lccsanandroid/util/TypedValue;->type:I

    if-eqz v11, :cond_d

    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, "min":I
    iget v12, v7, Lccsanandroid/util/TypedValue;->type:I

    if-ne v12, v6, :cond_a

    .line 158
    invoke-virtual {v7, v0}, Lccsanandroid/util/TypedValue;->getDimension(Lccsanandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v11, v5

    goto :goto_6

    .line 159
    :cond_a
    iget v6, v7, Lccsanandroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_b

    .line 160
    iget v5, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Lccsanandroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v11, v5

    .line 162
    :cond_b
    :goto_6
    if-lez v11, :cond_c

    .line 163
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->left:I

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v11, v5

    .line 165
    :cond_c
    if-ge v9, v11, :cond_d

    .line 166
    invoke-static {v11, v8}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 167
    const/4 v10, 0x1

    .line 172
    .end local v7    # "tv":Lccsanandroid/util/TypedValue;
    .end local v11    # "min":I
    :cond_d
    if-eqz v10, :cond_e

    .line 173
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;->onMeasure(II)V

    .line 175
    :cond_e
    return-void
.end method

.method public setAttachListener(Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V
    .locals 0
    .param p1, "attachListener"    # Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 83
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mAttachListener:Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;

    .line 84
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 94
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->mDecorPadding:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 95
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    .line 98
    :cond_0
    return-void
.end method
