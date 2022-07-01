.class public Lccsanandroidx/legacy/widget/Space;
.super Lccsanandroid/view/View;
.source "Space.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/legacy/widget/Space;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/legacy/widget/Space;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Lccsanandroidx/legacy/widget/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lccsanandroidx/legacy/widget/Space;->setVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .line 83
    move v0, p0

    .line 84
    .local v0, "result":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 85
    .local v1, "specMode":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 87
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 95
    :sswitch_0
    move v0, v2

    goto :goto_0

    .line 89
    :sswitch_1
    move v0, p0

    .line 90
    goto :goto_0

    .line 92
    :sswitch_2
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    nop

    .line 98
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    nop

    .line 108
    invoke-virtual {p0}, Lccsanandroidx/legacy/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lccsanandroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lccsanandroidx/legacy/widget/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lccsanandroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v1

    .line 107
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/legacy/widget/Space;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method
