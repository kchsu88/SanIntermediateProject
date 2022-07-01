.class Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;


# direct methods
.method constructor <init>(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 95
    iput-object p1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 98
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    .line 99
    .local v0, "request":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    iget-object v1, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Lccsanandroid/view/View;

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget v2, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v3, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Lccsanandroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Lccsanandroid/view/View;

    .line 103
    :cond_0
    iget-object v1, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iget-object v2, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->view:Lccsanandroid/view/View;

    iget v3, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v4, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Lccsanandroid/view/ViewGroup;

    invoke-interface {v1, v2, v3, v4}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;->onInflateFinished(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup;)V

    .line 105
    iget-object v1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;->this$0:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, v1, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->releaseRequest(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V

    .line 106
    const/4 v1, 0x1

    return v1
.end method
