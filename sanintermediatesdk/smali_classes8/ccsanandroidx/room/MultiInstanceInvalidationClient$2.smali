.class Lccsanandroidx/room/MultiInstanceInvalidationClient$2;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/MultiInstanceInvalidationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/MultiInstanceInvalidationClient;

    .line 99
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Lccsanandroid/content/ComponentName;
    .param p2, "service"    # Lccsanandroid/os/IBinder;

    .line 103
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-static {p2}, Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroidx/room/IMultiInstanceInvalidationService;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mService:Lccsanandroidx/room/IMultiInstanceInvalidationService;

    .line 104
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mSetUpRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Lccsanandroid/content/ComponentName;

    .line 109
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mRemoveObserverRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mService:Lccsanandroidx/room/IMultiInstanceInvalidationService;

    .line 111
    return-void
.end method
