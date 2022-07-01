.class Lccsanandroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


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

    .line 981
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 984
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchButton:Lccsanandroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 985
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    .line 986
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mCloseButton:Lccsanandroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 987
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 988
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mGoButton:Lccsanandroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 989
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButton:Lccsanandroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 991
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 992
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    .line 993
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$5;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    .line 995
    :cond_4
    :goto_0
    return-void
.end method
