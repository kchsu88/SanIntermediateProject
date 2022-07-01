.class Lccsanandroidx/recyclerview/widget/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;,
        Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsanandroidx/recyclerview/widget/ThreadUtil<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;, "Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$2;-><init>(Lccsanandroidx/recyclerview/widget/MessageThreadUtil;Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;, "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;-><init>(Lccsanandroidx/recyclerview/widget/MessageThreadUtil;Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
