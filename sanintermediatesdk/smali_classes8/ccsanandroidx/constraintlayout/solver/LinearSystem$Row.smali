.class interface abstract Lccsanandroidx/constraintlayout/solver/LinearSystem$Row;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Row"
.end annotation


# virtual methods
.method public abstract addError(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getKey()Lccsanandroidx/constraintlayout/solver/SolverVariable;
.end method

.method public abstract getPivotCandidate(Lccsanandroidx/constraintlayout/solver/LinearSystem;[Z)Lccsanandroidx/constraintlayout/solver/SolverVariable;
.end method

.method public abstract initFromRow(Lccsanandroidx/constraintlayout/solver/LinearSystem$Row;)V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract updateFromFinalVariable(Lccsanandroidx/constraintlayout/solver/LinearSystem;Lccsanandroidx/constraintlayout/solver/SolverVariable;Z)V
.end method

.method public abstract updateFromRow(Lccsanandroidx/constraintlayout/solver/ArrayRow;Z)V
.end method

.method public abstract updateFromSystem(Lccsanandroidx/constraintlayout/solver/LinearSystem;)V
.end method
