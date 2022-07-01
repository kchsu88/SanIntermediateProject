.class Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;
.super Lccsancom/google/android/material/internal/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hostView"    # Lccsanandroid/view/ViewGroup;
    .param p3, "requestingView"    # Lccsanandroid/view/View;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/internal/ViewOverlayApi14;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    .line 28
    return-void
.end method

.method static createFrom(Lccsanandroid/view/ViewGroup;)Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;
    .locals 1
    .param p0, "viewGroup"    # Lccsanandroid/view/ViewGroup;

    .line 31
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewOverlayApi14;->createFrom(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayApi14;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;

    return-object v0
.end method


# virtual methods
.method public add(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 36
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Lccsanandroid/view/View;)V

    .line 37
    return-void
.end method

.method public remove(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 41
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;->overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Lccsanandroid/view/View;)V

    .line 42
    return-void
.end method
