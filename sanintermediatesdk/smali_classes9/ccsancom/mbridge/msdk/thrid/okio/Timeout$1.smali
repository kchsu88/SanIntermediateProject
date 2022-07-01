.class final Lccsancom/mbridge/msdk/thrid/okio/Timeout$1;
.super Lccsancom/mbridge/msdk/thrid/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    .line 54
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 50
    return-object p0
.end method
