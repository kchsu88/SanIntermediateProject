.class public abstract Lccsancom/google/common/util/concurrent/Service$Listener;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lccsancom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "from"    # Lccsancom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .line 290
    return-void
.end method

.method public running()V
    .locals 0

    .line 257
    return-void
.end method

.method public starting()V
    .locals 0

    .line 251
    return-void
.end method

.method public stopping(Lccsancom/google/common/util/concurrent/Service$State;)V
    .locals 0
    .param p1, "from"    # Lccsancom/google/common/util/concurrent/Service$State;

    .line 266
    return-void
.end method

.method public terminated(Lccsancom/google/common/util/concurrent/Service$State;)V
    .locals 0
    .param p1, "from"    # Lccsancom/google/common/util/concurrent/Service$State;

    .line 278
    return-void
.end method
