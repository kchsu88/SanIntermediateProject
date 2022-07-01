.class final Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 594
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onPanelClosed(ILccsanandroid/view/Menu;)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lccsanandroid/view/Window$Callback;->onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    .line 602
    :cond_1
    :goto_0
    return-void
.end method
