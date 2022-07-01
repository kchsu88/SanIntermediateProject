.class public final Lccsanandroidx/appcompat/widget/ViewStubCompat;
.super Lccsanandroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Lccsanandroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 61
    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 65
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 67
    sget v0, Lccsanandroidx/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v1, v0, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->setId(I)V

    .line 68
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 70
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 161
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 157
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .line 85
    iget v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Lccsanandroid/view/LayoutInflater;
    .locals 1

    .line 146
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflater:Lccsanandroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 115
    iget v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Lccsanandroid/view/View;
    .locals 7

    .line 198
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 200
    .local v0, "viewParent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 201
    iget v1, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_4

    .line 202
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 204
    .local v1, "parent":Lccsanandroid/view/ViewGroup;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflater:Lccsanandroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflater:Lccsanandroid/view/LayoutInflater;

    .local v2, "factory":Lccsanandroid/view/LayoutInflater;
    goto :goto_0

    .line 207
    .end local v2    # "factory":Lccsanandroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v2

    .line 209
    .restart local v2    # "factory":Lccsanandroid/view/LayoutInflater;
    :goto_0
    iget v3, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "view":Lccsanandroid/view/View;
    iget v4, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 213
    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setId(I)V

    .line 216
    :cond_1
    invoke-virtual {v1, p0}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v4

    .line 217
    .local v4, "index":I
    invoke-virtual {v1, p0}, Lccsanandroid/view/ViewGroup;->removeViewInLayout(Lccsanandroid/view/View;)V

    .line 219
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 220
    .local v5, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_2

    .line 221
    invoke-virtual {v1, v3, v4, v5}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v1, v3, v4}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;I)V

    .line 226
    :goto_1
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 228
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_3

    .line 229
    invoke-interface {v6, p0, v3}, Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;->onInflate(Lccsanandroidx/appcompat/widget/ViewStubCompat;Lccsanandroid/view/View;)V

    .line 232
    :cond_3
    return-object v3

    .line 234
    .end local v1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local v2    # "factory":Lccsanandroid/view/LayoutInflater;
    .end local v3    # "view":Lccsanandroid/view/View;
    .end local v4    # "index":I
    .end local v5    # "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .param p1, "inflatedId"    # I

    .line 99
    iput p1, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    .line 100
    return-void
.end method

.method public setLayoutInflater(Lccsanandroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Lccsanandroid/view/LayoutInflater;

    .line 139
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 140
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResource"    # I

    .line 131
    iput p1, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    .line 132
    return-void
.end method

.method public setOnInflateListener(Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;)V
    .locals 0
    .param p1, "inflateListener"    # Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    .line 250
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Lccsanandroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    .line 251
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 175
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 177
    .local v0, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 182
    .end local v0    # "view":Lccsanandroid/view/View;
    goto :goto_0

    .line 180
    .restart local v0    # "view":Lccsanandroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "view":Lccsanandroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 184
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 185
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ViewStubCompat;->inflate()Lccsanandroid/view/View;

    .line 188
    :cond_3
    :goto_0
    return-void
.end method
