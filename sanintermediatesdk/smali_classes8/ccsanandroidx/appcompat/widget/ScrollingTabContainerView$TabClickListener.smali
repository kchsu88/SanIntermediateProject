.class Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 562
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 563
    .local v0, "tabView":Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 564
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 565
    .local v1, "tabCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 566
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 567
    .local v3, "child":Lccsanandroid/view/View;
    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setSelected(Z)V

    .line 565
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
