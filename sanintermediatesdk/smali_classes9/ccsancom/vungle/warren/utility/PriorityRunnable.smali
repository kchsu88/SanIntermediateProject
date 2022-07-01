.class public abstract Lccsancom/vungle/warren/utility/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 12
    instance-of v0, p1, Lccsancom/vungle/warren/utility/PriorityRunnable;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lccsancom/vungle/warren/utility/PriorityRunnable;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    .line 14
    .local v0, "current":Ljava/lang/Integer;
    move-object v1, p1

    check-cast v1, Lccsancom/vungle/warren/utility/PriorityRunnable;

    invoke-virtual {v1}, Lccsancom/vungle/warren/utility/PriorityRunnable;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    .line 16
    .local v1, "incoming":Ljava/lang/Integer;
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2

    .line 19
    .end local v0    # "current":Ljava/lang/Integer;
    .end local v1    # "incoming":Ljava/lang/Integer;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getPriority()Ljava/lang/Integer;
.end method
