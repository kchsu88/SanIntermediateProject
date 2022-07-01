.class Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Lccsanandroid/app/Activity;Lccsanandroidx/appcompat/widget/Toolbar;Lccsanandroidx/drawerlayout/widget/DrawerLayout;Lccsanandroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    .line 198
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 201
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->toggle()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Lccsanandroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Lccsanandroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Lccsanandroid/view/View$OnClickListener;->onClick(Lccsanandroid/view/View;)V

    .line 206
    :cond_1
    :goto_0
    return-void
.end method
