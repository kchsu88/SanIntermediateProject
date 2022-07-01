.class Lccsanandroidx/appcompat/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 1424
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView$9;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 1
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

    .line 1432
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$9;->this$0:Lccsanandroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p3}, Lccsanandroidx/appcompat/widget/SearchView;->onItemSelected(I)Z

    .line 1433
    return-void
.end method

.method public onNothingSelected(Lccsanandroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1442
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    return-void
.end method
