.class public final Lccsanandroidx/work/OneTimeWorkRequest$Builder;
.super Lccsanandroidx/work/WorkRequest$Builder;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/OneTimeWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/WorkRequest$Builder<",
        "Lccsanandroidx/work/OneTimeWorkRequest$Builder;",
        "Lccsanandroidx/work/OneTimeWorkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Lccsanandroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 80
    iget-object v0, p0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    const-class v1, Lccsanandroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method buildInternal()Lccsanandroidx/work/OneTimeWorkRequest;
    .locals 2

    .line 104
    iget-boolean v0, p0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mBackoffCriteriaSet:Z

    if-eqz v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 106
    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    :goto_0
    new-instance v0, Lccsanandroidx/work/OneTimeWorkRequest;

    invoke-direct {v0, p0}, Lccsanandroidx/work/OneTimeWorkRequest;-><init>(Lccsanandroidx/work/OneTimeWorkRequest$Builder;)V

    return-object v0
.end method

.method bridge synthetic buildInternal()Lccsanandroidx/work/WorkRequest;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->buildInternal()Lccsanandroidx/work/OneTimeWorkRequest;

    move-result-object v0

    return-object v0
.end method

.method getThis()Lccsanandroidx/work/OneTimeWorkRequest$Builder;
    .locals 0

    .line 115
    return-object p0
.end method

.method bridge synthetic getThis()Lccsanandroidx/work/WorkRequest$Builder;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->getThis()Lccsanandroidx/work/OneTimeWorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInputMerger(Ljava/lang/Class;)Lccsanandroidx/work/OneTimeWorkRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/work/InputMerger;",
            ">;)",
            "Lccsanandroidx/work/OneTimeWorkRequest$Builder;"
        }
    .end annotation

    .line 98
    .local p1, "inputMerger":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/work/InputMerger;>;"
    iget-object v0, p0, Lccsanandroidx/work/OneTimeWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 99
    return-object p0
.end method
