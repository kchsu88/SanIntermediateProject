.class Lccsancom/google/android/material/internal/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hostView"    # Lccsanandroid/view/ViewGroup;
    .param p3, "requestingView"    # Lccsanandroid/view/View;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewOverlayApi14;)V

    iput-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    .line 47
    return-void
.end method

.method static createFrom(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayApi14;
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 50
    invoke-static {p0}, Lccsancom/google/android/material/internal/ViewUtils;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 51
    .local v0, "contentView":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 53
    .local v1, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 55
    .local v3, "child":Lccsanandroid/view/View;
    instance-of v4, v3, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v4, :cond_0

    .line 56
    move-object v4, v3

    check-cast v4, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    iget-object v4, v4, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->viewOverlay:Lccsancom/google/android/material/internal/ViewOverlayApi14;

    return-object v4

    .line 53
    .end local v3    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lccsancom/google/android/material/internal/ViewGroupOverlayApi14;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    return-object v2

    .line 61
    .end local v1    # "numChildren":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi14;->overlayViewGroup:Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method
