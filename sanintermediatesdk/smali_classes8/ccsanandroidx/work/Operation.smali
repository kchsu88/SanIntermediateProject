.class public interface abstract Lccsanandroidx/work/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/Operation$State;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lccsanandroidx/work/Operation$State$IN_PROGRESS;

.field public static final SUCCESS:Lccsanandroidx/work/Operation$State$SUCCESS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lccsanandroidx/work/Operation$State$SUCCESS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsanandroidx/work/Operation$State$SUCCESS;-><init>(Lccsanandroidx/work/Operation$1;)V

    sput-object v0, Lccsanandroidx/work/Operation;->SUCCESS:Lccsanandroidx/work/Operation$State$SUCCESS;

    .line 50
    new-instance v0, Lccsanandroidx/work/Operation$State$IN_PROGRESS;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Operation$State$IN_PROGRESS;-><init>(Lccsanandroidx/work/Operation$1;)V

    sput-object v0, Lccsanandroidx/work/Operation;->IN_PROGRESS:Lccsanandroidx/work/Operation$State$IN_PROGRESS;

    return-void
.end method


# virtual methods
.method public abstract getResult()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Lccsanandroidx/work/Operation$State;",
            ">;"
        }
    .end annotation
.end method
