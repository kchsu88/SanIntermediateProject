.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lccsanandroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onBindViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

.field final synthetic val$container:Lccsanandroid/widget/FrameLayout;

.field final synthetic val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroid/widget/FrameLayout;Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 184
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->val$container:Lccsanandroid/widget/FrameLayout;

    iput-object p3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Lccsanandroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 188
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->val$container:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->val$container:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lccsanandroid/widget/FrameLayout;->removeOnLayoutChangeListener(Lccsanandroid/view/View$OnLayoutChangeListener;)V

    .line 190
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;->val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 192
    :cond_0
    return-void
.end method
