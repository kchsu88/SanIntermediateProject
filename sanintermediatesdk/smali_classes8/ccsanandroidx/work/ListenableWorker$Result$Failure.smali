.class public final Lccsanandroidx/work/ListenableWorker$Result$Failure;
.super Lccsanandroidx/work/ListenableWorker$Result;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/ListenableWorker$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final mOutputData:Lccsanandroidx/work/Data;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 417
    sget-object v0, Lccsanandroidx/work/Data;->EMPTY:Lccsanandroidx/work/Data;

    invoke-direct {p0, v0}, Lccsanandroidx/work/ListenableWorker$Result$Failure;-><init>(Lccsanandroidx/work/Data;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/Data;)V
    .locals 0
    .param p1, "outputData"    # Lccsanandroidx/work/Data;

    .line 425
    invoke-direct {p0}, Lccsanandroidx/work/ListenableWorker$Result;-><init>()V

    .line 426
    iput-object p1, p0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    .line 427
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 439
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 440
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsanandroidx/work/ListenableWorker$Result$Failure;

    .line 444
    .local v0, "failure":Lccsanandroidx/work/ListenableWorker$Result$Failure;
    iget-object v1, p0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    iget-object v2, v0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v1, v2}, Lccsanandroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 440
    .end local v0    # "failure":Lccsanandroidx/work/ListenableWorker$Result$Failure;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputData()Lccsanandroidx/work/Data;
    .locals 1

    .line 434
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 449
    const-class v0, Lccsanandroidx/work/ListenableWorker$Result$Failure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v2}, Lccsanandroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure {mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/ListenableWorker$Result$Failure;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
