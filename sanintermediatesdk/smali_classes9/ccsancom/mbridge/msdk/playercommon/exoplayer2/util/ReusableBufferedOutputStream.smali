.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    .line 42
    nop

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    nop

    .line 49
    :goto_0
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    if-nez v0, :cond_0

    .line 52
    move-object v0, v1

    .line 55
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 56
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 58
    :cond_1
    return-void
.end method

.method public final reset(Ljava/io/OutputStream;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 69
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 70
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->count:I

    .line 71
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ReusableBufferedOutputStream;->closed:Z

    .line 72
    return-void
.end method
