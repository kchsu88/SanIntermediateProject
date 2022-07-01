.class public Lccsanandroidx/recyclerview/widget/DividerItemDecoration;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DividerItem"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Lccsanandroid/graphics/Rect;

.field private mDivider:Lccsanandroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "orientation"    # I

    .line 66
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 57
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Lccsanandroid/graphics/Rect;

    .line 67
    sget-object v0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    .line 69
    if-nez v1, :cond_0

    .line 70
    const-string v1, "DividerItem"

    const-string v2, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, p2}, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->setOrientation(I)V

    .line 75
    return-void
.end method

.method private drawHorizontal(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 151
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 155
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 157
    .local v0, "top":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 158
    .local v1, "bottom":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    .line 159
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 158
    invoke-virtual {p1, v2, v0, v3, v1}, Lccsanandroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 161
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_0
    const/4 v0, 0x0

    .line 162
    .restart local v0    # "top":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 165
    .restart local v1    # "bottom":I
    :goto_0
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 166
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 167
    invoke-virtual {p2, v3}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 168
    .local v4, "child":Lccsanandroid/view/View;
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget-object v6, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 169
    iget-object v5, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 170
    .local v5, "right":I
    iget-object v6, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v5, v6

    .line 171
    .local v6, "left":I
    iget-object v7, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v0, v5, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    iget-object v7, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 166
    .end local v4    # "child":Lccsanandroid/view/View;
    .end local v5    # "right":I
    .end local v6    # "left":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 175
    return-void
.end method

.method private drawVertical(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 124
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 128
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 130
    .local v0, "left":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 131
    .local v1, "right":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 132
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 131
    invoke-virtual {p1, v0, v2, v1, v3}, Lccsanandroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 134
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    const/4 v0, 0x0

    .line 135
    .restart local v0    # "left":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 138
    .restart local v1    # "right":I
    :goto_0
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 139
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 140
    invoke-virtual {p2, v3}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 141
    .local v4, "child":Lccsanandroid/view/View;
    iget-object v5, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 142
    iget-object v5, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 143
    .local v5, "bottom":I
    iget-object v6, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v5, v6

    .line 144
    .local v6, "top":I
    iget-object v7, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v6, v1, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v7, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 139
    .end local v4    # "child":Lccsanandroid/view/View;
    .end local v5    # "bottom":I
    .end local v6    # "top":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 148
    return-void
.end method


# virtual methods
.method public getDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Lccsanandroid/graphics/Rect;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 180
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1, v1, v1, v1, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 182
    return-void

    .line 184
    :cond_0
    iget v2, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 185
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 189
    :goto_0
    return-void
.end method

.method public onDraw(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 113
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    iget v0, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 117
    invoke-direct {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->drawVertical(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->drawHorizontal(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_2
    :goto_1
    return-void
.end method

.method public setDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 97
    if-eqz p1, :cond_0

    .line 100
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Lccsanandroid/graphics/drawable/Drawable;

    .line 101
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 84
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :goto_0
    iput p1, p0, Lccsanandroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    .line 89
    return-void
.end method
