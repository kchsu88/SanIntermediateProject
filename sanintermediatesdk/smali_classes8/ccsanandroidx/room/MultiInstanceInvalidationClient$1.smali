.class Lccsanandroidx/room/MultiInstanceInvalidationClient$1;
.super Lccsanandroidx/room/IMultiInstanceInvalidationCallback$Stub;
.source "MultiInstanceInvalidationClient.java"


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

    .line 81
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Lccsanandroidx/room/IMultiInstanceInvalidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidation([Ljava/lang/String;)V
    .locals 2
    .param p1, "tables"    # [Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/room/MultiInstanceInvalidationClient$1$1;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient$1;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method
