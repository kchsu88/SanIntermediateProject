.class Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    .line 49
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->this$1:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->serviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method