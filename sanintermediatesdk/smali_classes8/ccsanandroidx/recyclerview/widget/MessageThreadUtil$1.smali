.class Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/MessageThreadUtil;->getMainThreadProxy(Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Lccsanandroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/MessageThreadUtil;Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/MessageThreadUtil;

    .line 31
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;"
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->this$0:Lccsanandroidx/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Lccsanandroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p2, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p2}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 33
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Lccsanandroid/os/Handler;

    .line 59
    new-instance p2, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1$1;

    invoke-direct {p2, p0}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1$1;-><init>(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;)V

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "msg"    # Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 55
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;"
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 56
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addTile(ILccsanandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 1
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;"
    .local p2, "tile":Lccsanandroidx/recyclerview/widget/TileList$Tile;, "Lccsanandroidx/recyclerview/widget/TileList$Tile<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 47
    return-void
.end method

.method public removeTile(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .line 51
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 52
    return-void
.end method

.method public updateItemCount(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .line 41
    .local p0, "this":Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;, "Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Lccsanandroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 42
    return-void
.end method
