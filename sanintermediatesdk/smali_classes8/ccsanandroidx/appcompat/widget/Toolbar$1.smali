.class Lccsanandroidx/appcompat/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/Toolbar;

    .line 203
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/Toolbar$1;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 206
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$1;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Lccsanandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$1;->this$0:Lccsanandroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Lccsanandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
