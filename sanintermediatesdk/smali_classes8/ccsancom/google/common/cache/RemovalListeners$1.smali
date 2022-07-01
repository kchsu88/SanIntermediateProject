.class final Lccsancom/google/common/cache/RemovalListeners$1;
.super Ljava/lang/Object;
.source "RemovalListeners.java"

# interfaces
.implements Lccsancom/google/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/cache/RemovalListeners;->asynchronous(Lccsancom/google/common/cache/RemovalListener;Ljava/util/concurrent/Executor;)Lccsancom/google/common/cache/RemovalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/cache/RemovalListener<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Lccsancom/google/common/cache/RemovalListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lccsancom/google/common/cache/RemovalListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lccsancom/google/common/cache/RemovalListeners$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lccsancom/google/common/cache/RemovalListeners$1;->val$listener:Lccsancom/google/common/cache/RemovalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoval(Lccsancom/google/common/cache/RemovalNotification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/RemovalNotification<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 47
    .local p1, "notification":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/RemovalListeners$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lccsancom/google/common/cache/RemovalListeners$1$1;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/cache/RemovalListeners$1$1;-><init>(Lccsancom/google/common/cache/RemovalListeners$1;Lccsancom/google/common/cache/RemovalNotification;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
