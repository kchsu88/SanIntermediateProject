.class Lccsanandroidx/fragment/app/ListFragment$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 52
    iput-object p1, p0, Lccsanandroidx/fragment/app/ListFragment$1;->this$0:Lccsanandroidx/fragment/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lccsanandroidx/fragment/app/ListFragment$1;->this$0:Lccsanandroidx/fragment/app/ListFragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/ListFragment;->mList:Lccsanandroid/widget/ListView;

    iget-object v1, p0, Lccsanandroidx/fragment/app/ListFragment$1;->this$0:Lccsanandroidx/fragment/app/ListFragment;

    iget-object v1, v1, Lccsanandroidx/fragment/app/ListFragment;->mList:Lccsanandroid/widget/ListView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ListView;->focusableViewAvailable(Lccsanandroid/view/View;)V

    .line 56
    return-void
.end method
