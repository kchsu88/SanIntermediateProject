.class Lccsanandroidx/transition/ViewGroupOverlayApi14;
.super Lccsanandroidx/transition/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lccsanandroidx/transition/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hostView"    # Lccsanandroid/view/ViewGroup;
    .param p3, "requestingView"    # Lccsanandroid/view/View;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/transition/ViewOverlayApi14;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    .line 29
    return-void
.end method

.method static createFrom(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayApi14;
    .locals 1
    .param p0, "viewGroup"    # Lccsanandroid/view/ViewGroup;

    .line 32
    invoke-static {p0}, Lccsanandroidx/transition/ViewOverlayApi14;->createFrom(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayApi14;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/ViewGroupOverlayApi14;

    return-object v0
.end method


# virtual methods
.method public add(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 37
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Lccsanandroid/view/View;)V

    .line 38
    return-void
.end method

.method public remove(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 42
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Lccsanandroid/view/View;)V

    .line 43
    return-void
.end method
