.class public final Lccsanandroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/WorkInfo$State;
    }
.end annotation


# instance fields
.field private mId:Ljava/util/UUID;

.field private mOutputData:Lccsanandroidx/work/Data;

.field private mRunAttemptCount:I

.field private mState:Lccsanandroidx/work/WorkInfo$State;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lccsanandroidx/work/WorkInfo$State;Lccsanandroidx/work/Data;Ljava/util/List;I)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "state"    # Lccsanandroidx/work/WorkInfo$State;
    .param p3, "outputData"    # Lccsanandroidx/work/Data;
    .param p5, "runAttemptCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lccsanandroidx/work/WorkInfo$State;",
            "Lccsanandroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 51
    .local p4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    .line 53
    iput-object p2, p0, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    .line 54
    iput-object p3, p0, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    .line 56
    iput p5, p0, Lccsanandroidx/work/WorkInfo;->mRunAttemptCount:I

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroidx/work/WorkInfo;

    .line 114
    .local v1, "workInfo":Lccsanandroidx/work/WorkInfo;
    iget v2, p0, Lccsanandroidx/work/WorkInfo;->mRunAttemptCount:I

    iget v3, v1, Lccsanandroidx/work/WorkInfo;->mRunAttemptCount:I

    if-eq v2, v3, :cond_2

    return v0

    .line 115
    :cond_2
    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    iget-object v3, v1, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 116
    :cond_3
    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    iget-object v3, v1, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_4

    return v0

    .line 117
    :cond_4
    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    iget-object v3, v1, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v2, v3}, Lccsanandroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 118
    :cond_5
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    iget-object v2, v1, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    .end local v1    # "workInfo":Lccsanandroidx/work/WorkInfo;
    :cond_6
    :goto_0
    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 65
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getOutputData()Lccsanandroidx/work/Data;
    .locals 1

    .line 84
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    return-object v0
.end method

.method public getRunAttemptCount()I
    .locals 1

    .line 104
    iget v0, p0, Lccsanandroidx/work/WorkInfo;->mRunAttemptCount:I

    return v0
.end method

.method public getState()Lccsanandroidx/work/WorkInfo$State;
    .locals 1

    .line 74
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget-object v0, p0, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 124
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Lccsanandroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v2}, Lccsanandroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 127
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsanandroidx/work/WorkInfo;->mRunAttemptCount:I

    add-int/2addr v0, v2

    .line 128
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/WorkInfo;->mState:Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/WorkInfo;->mOutputData:Lccsanandroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
