.class Lccsanandroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/AsyncListDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field final mHandler:Lccsanandroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->mHandler:Lccsanandroid/os/Handler;

    .line 123
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 126
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;->mHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
