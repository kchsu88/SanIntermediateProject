.class Lccsanandroidx/cardview/widget/CardView$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Lccsanandroidx/cardview/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/cardview/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Lccsanandroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lccsanandroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Lccsanandroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/cardview/widget/CardView;

    .line 447
    iput-object p1, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 485
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->mCardBackground:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Lccsanandroid/view/View;
    .locals 1

    .line 490
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Lccsanandroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public setCardBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 452
    iput-object p1, p0, Lccsanandroidx/cardview/widget/CardView$1;->mCardBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 453
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Lccsanandroidx/cardview/widget/CardView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 454
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 475
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget v0, v0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 476
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-static {v0, p1}, Lccsanandroidx/cardview/widget/CardView;->access$101(Lccsanandroidx/cardview/widget/CardView;I)V

    .line 478
    :cond_0
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget v0, v0, Lccsanandroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_1

    .line 479
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    invoke-static {v0, p2}, Lccsanandroidx/cardview/widget/CardView;->access$201(Lccsanandroidx/cardview/widget/CardView;I)V

    .line 481
    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 468
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget-object v0, v0, Lccsanandroidx/cardview/widget/CardView;->mShadowBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 469
    iget-object v0, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget-object v1, v0, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget-object v2, v2, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v2, v2, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget-object v3, v3, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v3, v3, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lccsanandroidx/cardview/widget/CardView$1;->this$0:Lccsanandroidx/cardview/widget/CardView;

    iget-object v4, v4, Lccsanandroidx/cardview/widget/CardView;->mContentPadding:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroidx/cardview/widget/CardView;->access$001(Lccsanandroidx/cardview/widget/CardView;IIII)V

    .line 471
    return-void
.end method
