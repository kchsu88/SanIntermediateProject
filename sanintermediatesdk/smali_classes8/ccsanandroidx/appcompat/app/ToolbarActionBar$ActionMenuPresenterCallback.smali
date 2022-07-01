.class final Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 569
    iget-boolean v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 570
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 574
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->dismissPopupMenus()V

    .line 575
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onPanelClosed(ILccsanandroid/view/Menu;)V

    .line 578
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 579
    return-void
.end method

.method public onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 560
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Lccsanandroid/view/Window$Callback;->onMenuOpened(ILccsanandroid/view/Menu;)Z

    .line 562
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
