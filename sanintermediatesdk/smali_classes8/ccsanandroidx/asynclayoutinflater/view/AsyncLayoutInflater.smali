.class public final Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;,
        Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;,
        Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;,
        Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Lccsanandroid/os/Handler;

.field private mHandlerCallback:Lccsanandroid/os/Handler$Callback;

.field mInflateThread:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

.field mInflater:Lccsanandroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;

    invoke-direct {v0, p0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$1;-><init>(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;)V

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandlerCallback:Lccsanandroid/os/Handler$Callback;

    .line 76
    new-instance v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 77
    new-instance v0, Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandlerCallback:Lccsanandroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Lccsanandroid/os/Handler;

    .line 78
    invoke-static {}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->getInstance()Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 79
    return-void
.end method


# virtual methods
.method public inflate(ILccsanandroid/view/ViewGroup;Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V
    .locals 2
    .param p1, "resid"    # I
    .param p2, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p3, "callback"    # Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 84
    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->obtainRequest()Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;

    move-result-object v0

    .line 88
    .local v0, "request":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    iput-object p0, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->inflater:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 89
    iput p1, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 90
    iput-object p2, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->parent:Lccsanandroid/view/ViewGroup;

    .line 91
    iput-object p3, v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;->callback:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 92
    iget-object v1, p0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflateThread:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v1, v0}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->enqueue(Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;)V

    .line 93
    return-void

    .line 85
    .end local v0    # "request":Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback argument may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
