.class Lccsanandroidx/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"

# interfaces
.implements Lccsanandroidx/transition/ViewGroupOverlayImpl;


# instance fields
.field private final mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "group"    # Lccsanandroid/view/ViewGroup;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getOverlay()Lccsanandroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public add(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 48
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->add(Lccsanandroid/view/View;)V

    .line 49
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method public remove(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 53
    iget-object v0, p0, Lccsanandroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Lccsanandroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroupOverlay;->remove(Lccsanandroid/view/View;)V

    .line 54
    return-void
.end method
