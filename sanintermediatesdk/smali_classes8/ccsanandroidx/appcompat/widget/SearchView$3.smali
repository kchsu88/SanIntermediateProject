.class Lccsanandroidx/appcompat/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/SearchView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
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

    .line 336
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$3;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 339
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$3;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$3;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView$3;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-interface {v0, v1, p2}, Lccsanandroid/view/View$OnFocusChangeListener;->onFocusChange(Lccsanandroid/view/View;Z)V

    .line 342
    :cond_0
    return-void
.end method
