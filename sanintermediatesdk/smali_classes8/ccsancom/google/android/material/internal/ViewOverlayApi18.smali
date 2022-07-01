.class Lccsancom/google/android/material/internal/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewOverlayImpl;


# instance fields
.field private final viewOverlay:Lccsanandroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lccsanandroid/view/View;->getOverlay()Lccsanandroid/view/ViewOverlay;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Lccsanandroid/view/ViewOverlay;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Lccsanandroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewOverlay;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewOverlayApi18;->viewOverlay:Lccsanandroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewOverlay;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method
