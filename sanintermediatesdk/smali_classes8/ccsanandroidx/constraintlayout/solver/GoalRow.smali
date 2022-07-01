.class public Lccsanandroidx/constraintlayout/solver/GoalRow;
.super Lccsanandroidx/constraintlayout/solver/ArrayRow;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Lccsanandroidx/constraintlayout/solver/Cache;)V
    .locals 0
    .param p1, "cache"    # Lccsanandroidx/constraintlayout/solver/Cache;

    .line 22
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/solver/ArrayRow;-><init>(Lccsanandroidx/constraintlayout/solver/Cache;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addError(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V
    .locals 1
    .param p1, "error"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 27
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/solver/ArrayRow;->addError(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V

    .line 30
    iget v0, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 31
    return-void
.end method
