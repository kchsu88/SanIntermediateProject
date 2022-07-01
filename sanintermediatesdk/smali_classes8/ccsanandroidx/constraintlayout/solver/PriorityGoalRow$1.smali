.class Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$1;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Lccsanandroidx/constraintlayout/solver/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsanandroidx/constraintlayout/solver/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    .line 209
    iput-object p1, p0, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$1;->this$0:Lccsanandroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsanandroidx/constraintlayout/solver/SolverVariable;Lccsanandroidx/constraintlayout/solver/SolverVariable;)I
    .locals 2
    .param p1, "variable1"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variable2"    # Lccsanandroidx/constraintlayout/solver/SolverVariable;

    .line 212
    iget v0, p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v1, p2, Lccsanandroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 209
    check-cast p1, Lccsanandroidx/constraintlayout/solver/SolverVariable;

    check-cast p2, Lccsanandroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/constraintlayout/solver/PriorityGoalRow$1;->compare(Lccsanandroidx/constraintlayout/solver/SolverVariable;Lccsanandroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    return p1
.end method
