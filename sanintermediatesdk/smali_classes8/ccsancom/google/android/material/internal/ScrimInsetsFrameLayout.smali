.class public Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;
.super Lccsanandroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# instance fields
.field private drawBottomInsetForeground:Z

.field private drawTopInsetForeground:Z

.field insetForeground:Lccsanandroid/graphics/drawable/Drawable;

.field insets:Lccsanandroid/graphics/Rect;

.field private tempRect:Lccsanandroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    .line 47
    iput-boolean v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    .line 61
    sget-object v3, Lccsancom/google/android/material/R$styleable;->ScrimInsetsFrameLayout:[I

    sget v5, Lccsancom/google/android/material/R$style;->Widget_Design_ScrimInsetsFrameLayout:I

    const/4 v1, 0x0

    new-array v6, v1, [I

    .line 62
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->ScrimInsetsFrameLayout_insetForeground:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 72
    new-instance v0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;-><init>(Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;)V

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 109
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 112
    .local v0, "width":I
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 113
    .local v1, "height":I
    iget-object v2, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v2

    .line 115
    .local v2, "sc":I
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 118
    iget-boolean v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v4, v0, v5}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 120
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 121
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 125
    :cond_0
    iget-boolean v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 128
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 132
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->top:I

    iget-object v6, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->left:I

    iget-object v7, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v7, v7, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 133
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 134
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 137
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    iget-object v4, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->top:I

    iget-object v6, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v4, v5, v0, v6}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 138
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 139
    iget-object v3, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1, v2}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 143
    .end local v2    # "sc":I
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 147
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 148
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 155
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 156
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onInsetsChanged(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 161
    return-void
.end method

.method public setDrawBottomInsetForeground(Z)V
    .locals 0
    .param p1, "drawBottomInsetForeground"    # Z

    .line 104
    iput-boolean p1, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    .line 105
    return-void
.end method

.method public setDrawTopInsetForeground(Z)V
    .locals 0
    .param p1, "drawTopInsetForeground"    # Z

    .line 100
    iput-boolean p1, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    .line 101
    return-void
.end method

.method public setScrimInsetForeground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 96
    iput-object p1, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method
