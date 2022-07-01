.class Lccsanandroidx/fragment/app/Fragment$4;
.super Lccsanandroidx/fragment/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/Fragment;->performAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/Fragment;

    .line 2558
    iput-object p1, p0, Lccsanandroidx/fragment/app/Fragment$4;->this$0:Lccsanandroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindViewById(I)Lccsanandroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .line 2562
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment$4;->this$0:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment$4;->this$0:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 2563
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onHasView()Z
    .locals 1

    .line 2570
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment$4;->this$0:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
