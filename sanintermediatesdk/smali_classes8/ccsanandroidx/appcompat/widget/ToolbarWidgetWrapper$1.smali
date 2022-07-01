.class Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Lccsanandroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lccsanandroidx/appcompat/view/menu/ActionMenuItem;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;)V
    .locals 8
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 182
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v7, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;

    iget-object v0, p1, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v6, p1, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/view/menu/ActionMenuItem;-><init>(Lccsanandroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->mNavItem:Lccsanandroidx/appcompat/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 187
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->this$0:Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Lccsanandroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ToolbarWidgetWrapper$1;->mNavItem:Lccsanandroidx/appcompat/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Lccsanandroid/view/Window$Callback;->onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z

    .line 190
    :cond_0
    return-void
.end method
