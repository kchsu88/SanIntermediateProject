.class Lccsanandroidx/transition/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Lccsanandroidx/transition/ViewOverlayImpl;


# instance fields
.field private final mViewOverlay:Lccsanandroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lccsanandroid/view/View;->getOverlay()Lccsanandroid/view/ViewOverlay;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi18;->mViewOverlay:Lccsanandroid/view/ViewOverlay;

    .line 33
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 37
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi18;->mViewOverlay:Lccsanandroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewOverlay;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi18;->mViewOverlay:Lccsanandroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewOverlay;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method
