.class Lccsanandroidx/room/TransactionExecutor$1;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/TransactionExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsanandroidx/room/TransactionExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/TransactionExecutor;

    .line 42
    iput-object p1, p0, Lccsanandroidx/room/TransactionExecutor$1;->this$0:Lccsanandroidx/room/TransactionExecutor;

    iput-object p2, p0, Lccsanandroidx/room/TransactionExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/room/TransactionExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lccsanandroidx/room/TransactionExecutor$1;->this$0:Lccsanandroidx/room/TransactionExecutor;

    invoke-virtual {v0}, Lccsanandroidx/room/TransactionExecutor;->scheduleNext()V

    .line 48
    nop

    .line 49
    return-void

    .line 47
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/room/TransactionExecutor$1;->this$0:Lccsanandroidx/room/TransactionExecutor;

    invoke-virtual {v1}, Lccsanandroidx/room/TransactionExecutor;->scheduleNext()V

    .line 48
    throw v0
.end method
