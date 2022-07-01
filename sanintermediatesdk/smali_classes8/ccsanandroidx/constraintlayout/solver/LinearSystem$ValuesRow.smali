.class Lccsanandroidx/constraintlayout/solver/LinearSystem$ValuesRow;
.super Lccsanandroidx/constraintlayout/solver/ArrayRow;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesRow"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>(Lccsanandroidx/constraintlayout/solver/LinearSystem;Lccsanandroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/solver/LinearSystem;
    .param p2, "cache"    # Lccsanandroidx/constraintlayout/solver/Cache;

    .line 83
    iput-object p1, p0, Lccsanandroidx/constraintlayout/solver/LinearSystem$ValuesRow;->this$0:Lccsanandroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {p0}, Lccsanandroidx/constraintlayout/solver/ArrayRow;-><init>()V

    .line 84
    new-instance v0, Lccsanandroidx/constraintlayout/solver/SolverVariableValues;

    invoke-direct {v0, p0, p2}, Lccsanandroidx/constraintlayout/solver/SolverVariableValues;-><init>(Lccsanandroidx/constraintlayout/solver/ArrayRow;Lccsanandroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/LinearSystem$ValuesRow;->variables:Lccsanandroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 85
    return-void
.end method
