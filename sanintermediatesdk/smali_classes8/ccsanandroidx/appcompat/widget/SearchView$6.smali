.class Lccsanandroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/SearchView;

    .line 1003
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Lccsanandroid/view/View;ILccsanandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;

    .line 1007
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1008
    return v1

    .line 1018
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1019
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1020
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/SearchView;->onSuggestionsKey(Lccsanandroid/view/View;ILccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1025
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1027
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1028
    invoke-virtual {p1}, Lccsanandroid/view/View;->cancelLongPress()V

    .line 1031
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$6;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v4

    .line 1032
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-virtual {v0, v1, v3, v4}, Lccsanandroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1033
    return v2

    .line 1037
    :cond_2
    return v1
.end method
