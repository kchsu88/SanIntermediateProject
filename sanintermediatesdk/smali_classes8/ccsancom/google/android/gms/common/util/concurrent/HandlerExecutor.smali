.class public Lccsancom/google/android/gms/common/util/concurrent/HandlerExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final handler:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsancom/google/android/gms/internal/common/zze;

    invoke-direct {v0, p1}, Lccsancom/google/android/gms/internal/common/zze;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/google/android/gms/common/util/concurrent/HandlerExecutor;->handler:Lccsanandroid/os/Handler;

    .line 3
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/common/util/concurrent/HandlerExecutor;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    return-void
.end method
