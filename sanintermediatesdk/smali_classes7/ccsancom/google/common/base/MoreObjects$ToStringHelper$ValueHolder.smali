.class final Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/MoreObjects$ToStringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueHolder"
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field next:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/base/MoreObjects$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/base/MoreObjects$1;

    .line 379
    invoke-direct {p0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>()V

    return-void
.end method
