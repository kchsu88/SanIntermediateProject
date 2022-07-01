.class Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
.super Lccsanandroid/widget/FrameLayout;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollapsibleActionViewWrapper"
.end annotation


# instance fields
.field final mWrappedView:Lccsanandroid/view/CollapsibleActionView;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "actionView"    # Lccsanandroid/view/View;

    .line 512
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 513
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/CollapsibleActionView;

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Lccsanandroid/view/CollapsibleActionView;

    .line 514
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->addView(Lccsanandroid/view/View;)V

    .line 515
    return-void
.end method


# virtual methods
.method getWrappedView()Lccsanandroid/view/View;
    .locals 1

    .line 528
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Lccsanandroid/view/CollapsibleActionView;

    check-cast v0, Lccsanandroid/view/View;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .locals 1

    .line 524
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Lccsanandroid/view/CollapsibleActionView;

    invoke-interface {v0}, Lccsanandroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 525
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    .line 519
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Lccsanandroid/view/CollapsibleActionView;

    invoke-interface {v0}, Lccsanandroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 520
    return-void
.end method
