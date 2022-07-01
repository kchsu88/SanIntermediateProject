.class Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;
.super Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Lccsanandroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionProviderWrapperJB"
.end annotation


# instance fields
.field private mListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

.field final synthetic this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/content/Context;Lccsanandroid/view/ActionProvider;)V
    .locals 0
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "inner"    # Lccsanandroid/view/ActionProvider;

    .line 463
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->this$0:Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;Lccsanandroid/content/Context;Lccsanandroid/view/ActionProvider;)V

    .line 465
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 495
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0, p1}, Lccsanandroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 498
    :cond_0
    return-void
.end method

.method public onCreateActionView(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "forItem"    # Lccsanandroid/view/MenuItem;

    .line 469
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ActionProvider;->onCreateActionView(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 484
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mInner:Lccsanandroid/view/ActionProvider;

    invoke-virtual {v0}, Lccsanandroid/view/ActionProvider;->refreshVisibility()V

    .line 485
    return-void
.end method

.method public setVisibilityListener(Lccsanandroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    .line 489
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    .line 490
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mInner:Lccsanandroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/view/ActionProvider;->setVisibilityListener(Lccsanandroid/view/ActionProvider$VisibilityListener;)V

    .line 491
    return-void
.end method
