.class Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency;
.super Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
.source "BaselineDimensionDependency.java"


# direct methods
.method public constructor <init>(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 0
    .param p1, "run"    # Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 22
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;-><init>(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 23
    return-void
.end method


# virtual methods
.method public update(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V
    .locals 3
    .param p1, "node"    # Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 26
    iget-object v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency;->run:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    check-cast v0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 27
    .local v0, "vrun":Lccsanandroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;
    iget-object v1, v0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v2, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency;->run:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    iput v2, v1, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BaselineDimensionDependency;->resolved:Z

    .line 29
    return-void
.end method
