.class public Lccsanandroidx/appcompat/widget/DialogTitle;
.super Lccsanandroidx/appcompat/widget/AppCompatTextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 57
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DialogTitle;->getLayout()Lccsanandroid/text/Layout;

    move-result-object v0

    .line 58
    .local v0, "layout":Lccsanandroid/text/Layout;
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lccsanandroid/text/Layout;->getLineCount()I

    move-result v1

    .line 60
    .local v1, "lineCount":I
    if-lez v1, :cond_1

    .line 61
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lccsanandroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 62
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_1

    .line 63
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lccsanandroidx/appcompat/widget/DialogTitle;->setSingleLine(Z)V

    .line 64
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/DialogTitle;->setMaxLines(I)V

    .line 66
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DialogTitle;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lccsanandroidx/appcompat/R$styleable;->TextAppearance:[I

    const v7, 0x1010041

    const v8, 0x1030044

    invoke-virtual {v4, v5, v6, v7, v8}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v4

    .line 70
    .local v4, "a":Lccsanandroid/content/res/TypedArray;
    sget v5, Lccsanandroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v4, v5, v3}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 72
    .local v5, "textSize":I
    if-eqz v5, :cond_0

    .line 74
    int-to-float v6, v5

    invoke-virtual {p0, v3, v6}, Lccsanandroidx/appcompat/widget/DialogTitle;->setTextSize(IF)V

    .line 76
    :cond_0
    invoke-virtual {v4}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 82
    .end local v1    # "lineCount":I
    .end local v2    # "ellipsisCount":I
    .end local v4    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v5    # "textSize":I
    :cond_1
    return-void
.end method
