.class Lccsanandroidx/viewpager2/widget/ViewPager2$4;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Lccsanandroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 263
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$4;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 266
    nop

    .line 267
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 268
    .local v0, "layoutParams":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v1, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    if-ne v1, v2, :cond_0

    .line 273
    return-void

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Pages must fill the whole ViewPager2 (use match_parent)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onChildViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 278
    return-void
.end method
