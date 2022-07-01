.class Lccsanandroidx/fragment/app/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/ListFragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/ListFragment;

    .line 60
    iput-object p1, p0, Lccsanandroidx/fragment/app/ListFragment$2;->this$0:Lccsanandroidx/fragment/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Lccsanandroid/view/View;
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

    .line 63
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/ListFragment$2;->this$0:Lccsanandroidx/fragment/app/ListFragment;

    move-object v1, p1

    check-cast v1, Lccsanandroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/fragment/app/ListFragment;->onListItemClick(Lccsanandroid/widget/ListView;Lccsanandroid/view/View;IJ)V

    .line 64
    return-void
.end method
