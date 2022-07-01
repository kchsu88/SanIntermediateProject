.class Lccsanandroidx/core/view/MenuItemCompat$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Lccsanandroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Lccsanandroid/view/MenuItem;Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;)Lccsanandroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lccsanandroidx/core/view/MenuItemCompat$1;->val$listener:Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lccsanandroidx/core/view/MenuItemCompat$1;->val$listener:Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lccsanandroidx/core/view/MenuItemCompat$1;->val$listener:Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
