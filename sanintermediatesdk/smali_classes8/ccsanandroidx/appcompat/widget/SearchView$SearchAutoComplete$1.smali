.class Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1839
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete$1;->this$0:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1842
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete$1;->this$0:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    .line 1843
    return-void
.end method
