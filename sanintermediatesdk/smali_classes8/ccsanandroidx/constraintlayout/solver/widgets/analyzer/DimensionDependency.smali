.class Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
.super Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.source "DimensionDependency.java"


# instance fields
.field public wrapValue:I


# direct methods
.method public constructor <init>(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .locals 1
    .param p1, "run"    # Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 24
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 25
    instance-of v0, p1, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->type:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->type:Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public resolve(I)V
    .locals 2
    .param p1, "value"    # I

    .line 33
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 37
    iput p1, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 38
    iget-object v0, p0, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 39
    .local v1, "node":Lccsanandroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    invoke-interface {v1, v1}, Lccsanandroidx/constraintlayout/solver/widgets/analyzer/Dependency;->update(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V

    .line 40
    .end local v1    # "node":Lccsanandroidx/constraintlayout/solver/widgets/analyzer/Dependency;
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
