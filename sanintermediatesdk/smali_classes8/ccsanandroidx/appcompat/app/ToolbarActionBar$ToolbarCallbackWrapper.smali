.class Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Lccsanandroidx/appcompat/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/ToolbarActionBar;Lccsanandroid/view/Window$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Lccsanandroid/view/Window$Callback;

    .line 517
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    .line 518
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;-><init>(Lccsanandroid/view/Window$Callback;)V

    .line 519
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Lccsanandroid/view/View;
    .locals 2
    .param p1, "featureId"    # I

    .line 533
    if-nez p1, :cond_0

    .line 537
    new-instance v0, Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    return-object v0

    .line 539
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->onCreatePanelView(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "menu"    # Lccsanandroid/view/Menu;

    .line 523
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/view/WindowCallbackWrapper;->onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    .line 524
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 526
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsanandroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    .line 528
    :cond_0
    return v0
.end method
