.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 126
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 5
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 129
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 130
    .local v0, "itemView":Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;
    invoke-virtual {v0}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    .line 131
    .local v1, "item":Lccsanandroid/view/MenuItem;
    iget-object v2, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-static {v2}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->access$100(Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-static {v3}, Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;->access$000(Lccsancom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lccsancom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;Lccsanandroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lccsanandroid/view/MenuItem;->setChecked(Z)Lccsanandroid/view/MenuItem;

    .line 134
    :cond_0
    return-void
.end method
