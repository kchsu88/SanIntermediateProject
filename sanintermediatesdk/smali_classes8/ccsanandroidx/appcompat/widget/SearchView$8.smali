.class Lccsanandroidx/appcompat/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


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

    .line 1412
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$8;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1420
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$8;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lccsanandroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    .line 1421
    return-void
.end method