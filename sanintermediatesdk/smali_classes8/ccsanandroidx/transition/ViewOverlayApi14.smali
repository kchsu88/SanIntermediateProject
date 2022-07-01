.class Lccsanandroidx/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Lccsanandroidx/transition/ViewOverlayImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hostView"    # Lccsanandroid/view/ViewGroup;
    .param p3, "requestingView"    # Lccsanandroid/view/View;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/ViewOverlayApi14;)V

    iput-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    .line 49
    return-void
.end method

.method static createFrom(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayApi14;
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 65
    invoke-static {p0}, Lccsanandroidx/transition/ViewOverlayApi14;->getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 66
    .local v0, "contentView":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 68
    .local v1, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 69
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "child":Lccsanandroid/view/View;
    instance-of v4, v3, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v4, :cond_0

    .line 71
    move-object v4, v3

    check-cast v4, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    iget-object v4, v4, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Lccsanandroidx/transition/ViewOverlayApi14;

    return-object v4

    .line 68
    .end local v3    # "child":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lccsanandroidx/transition/ViewGroupOverlayApi14;

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lccsanandroidx/transition/ViewGroupOverlayApi14;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V

    return-object v2

    .line 76
    .end local v1    # "numChildren":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static getContentView(Lccsanandroid/view/View;)Lccsanandroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 52
    move-object v0, p0

    .line 53
    .local v0, "parent":Lccsanandroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Lccsanandroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewGroup;

    return-object v1

    .line 57
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method
