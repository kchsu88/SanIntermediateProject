.class Lccsanandroidx/drawerlayout/widget/DrawerLayout$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Lccsanandroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/drawerlayout/widget/DrawerLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    .line 343
    iput-object p1, p0, Lccsanandroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;

    .line 346
    move-object v0, p1

    check-cast v0, Lccsanandroidx/drawerlayout/widget/DrawerLayout;

    .line 347
    .local v0, "drawerLayout":Lccsanandroidx/drawerlayout/widget/DrawerLayout;
    invoke-virtual {p2}, Lccsanandroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1}, Lccsanandroidx/drawerlayout/widget/DrawerLayout;->setChildInsets(Ljava/lang/Object;Z)V

    .line 348
    invoke-virtual {p2}, Lccsanandroid/view/WindowInsets;->consumeSystemWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
