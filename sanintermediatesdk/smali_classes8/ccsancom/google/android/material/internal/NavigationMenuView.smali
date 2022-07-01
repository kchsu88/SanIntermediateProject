.class public Lccsancom/google/android/material/internal/NavigationMenuView;
.super Lccsanandroidx/recyclerview/widget/RecyclerView;
.source "NavigationMenuView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/internal/NavigationMenuView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/internal/NavigationMenuView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 47
    return-void
.end method
