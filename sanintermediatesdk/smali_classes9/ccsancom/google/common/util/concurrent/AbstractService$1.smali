.class final Lccsancom/google/common/util/concurrent/AbstractService$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lccsancom/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lccsancom/google/common/util/concurrent/Service$Listener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/Service$Listener;

    .line 57
    invoke-virtual {p1}, Lccsancom/google/common/util/concurrent/Service$Listener;->starting()V

    .line 58
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lccsancom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractService$1;->call(Lccsancom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "starting()"

    return-object v0
.end method
