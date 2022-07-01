.class public Lccsanandroidx/constraintlayout/solver/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/constraintlayout/solver/Pools$Pool<",
            "Lccsanandroidx/constraintlayout/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Lccsanandroidx/constraintlayout/solver/SolverVariable;

.field optimizedArrayRowPool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/constraintlayout/solver/Pools$Pool<",
            "Lccsanandroidx/constraintlayout/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field solverVariablePool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/constraintlayout/solver/Pools$Pool<",
            "Lccsanandroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/Cache;->optimizedArrayRowPool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;

    .line 23
    new-instance v0, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/Cache;->arrayRowPool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;

    .line 24
    new-instance v0, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;

    invoke-direct {v0, v1}, Lccsanandroidx/constraintlayout/solver/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/Cache;->solverVariablePool:Lccsanandroidx/constraintlayout/solver/Pools$Pool;

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [Lccsanandroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Lccsanandroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method
