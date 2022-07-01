.class public Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdAndState"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public state:Lccsanandroidx/work/WorkInfo$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 360
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;

    .line 365
    .local v1, "that":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    iget-object v3, v1, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_2

    return v0

    .line 366
    :cond_2
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    iget-object v2, v1, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 361
    .end local v1    # "that":Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 371
    iget-object v0, p0, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 372
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanandroidx/work/impl/model/WorkSpec$IdAndState;->state:Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Lccsanandroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 373
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
