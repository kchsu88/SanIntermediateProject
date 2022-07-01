.class interface abstract Lccsanandroidx/recyclerview/widget/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;,
        Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
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


# virtual methods
.method public abstract getBackgroundProxy(Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end method
