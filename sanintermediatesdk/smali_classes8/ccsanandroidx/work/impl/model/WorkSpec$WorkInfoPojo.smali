.class public Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkInfoPojo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public output:Lccsanandroidx/work/Data;

.field public runAttemptCount:I

.field public state:Lccsanandroidx/work/WorkInfo$State;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 412
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 413
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 415
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 417
    .local v2, "that":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    iget v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iget v4, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    if-eq v3, v4, :cond_2

    return v1

    .line 418
    :cond_2
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    :goto_0
    return v1

    .line 419
    :cond_4
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    if-eq v3, v4, :cond_5

    return v1

    .line 420
    :cond_5
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_6
    iget-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 421
    :cond_7
    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v0, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v3, v2, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 413
    .end local v2    # "that":Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :cond_a
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 426
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lccsanandroidx/work/WorkInfo$State;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 428
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lccsanandroidx/work/Data;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 429
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    add-int/2addr v2, v3

    .line 430
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    .line 431
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toWorkInfo()Lccsanandroidx/work/WorkInfo;
    .locals 7

    .line 407
    new-instance v6, Lccsanandroidx/work/WorkInfo;

    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Lccsanandroidx/work/WorkInfo$State;

    iget-object v3, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Lccsanandroidx/work/Data;

    iget-object v4, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iget v5, p0, Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Lccsanandroidx/work/WorkInfo$State;Lccsanandroidx/work/Data;Ljava/util/List;I)V

    return-object v6
.end method
