.class public final Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/AsyncDifferConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 0
    .param p1, "mainThreadExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "backgroundThreadExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;, "Lccsanandroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    .local p3, "diffCallback":Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p3, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mDiffCallback:Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 51
    return-void
.end method


# virtual methods
.method public getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 64
    .local p0, "this":Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;, "Lccsanandroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getDiffCallback()Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;, "Lccsanandroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mDiffCallback:Lccsanandroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object v0
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 58
    .local p0, "this":Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;, "Lccsanandroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
