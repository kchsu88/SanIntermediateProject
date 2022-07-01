.class Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuView;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 778
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Lccsanandroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Lccsanandroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 779
    invoke-interface {v0, p2}, Lccsanandroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 778
    :goto_0
    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 784
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V

    .line 787
    :cond_0
    return-void
.end method
