.class Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewGroupOverlayImpl;


# instance fields
.field private final viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "group"    # Lccsanandroid/view/ViewGroup;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getOverlay()Lccsanandroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;->viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 37
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;->viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public add(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 47
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;->viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->add(Lccsanandroid/view/View;)V

    .line 48
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;->viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method public remove(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 52
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewGroupOverlayApi18;->viewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->remove(Lccsanandroid/view/View;)V

    .line 53
    return-void
.end method
