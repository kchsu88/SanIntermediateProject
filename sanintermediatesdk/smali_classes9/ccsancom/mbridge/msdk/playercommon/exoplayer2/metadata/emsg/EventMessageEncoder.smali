.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;
.super Ljava/lang/Object;
.source "EventMessageEncoder.java"


# instance fields
.field private final byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final dataOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 36
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    .line 37
    return-void
.end method

.method private static writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 75
    return-void
.end method

.method private static writeUnsignedInt(Ljava/io/DataOutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 81
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public final encode(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;J)[B
    .locals 9

    .line 49
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 52
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 54
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeUnsignedInt(Ljava/io/DataOutputStream;J)V

    .line 56
    iget-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->presentationTimeUs:J

    const-wide/32 v5, 0xf4240

    move-wide v3, p2

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeUnsignedInt(Ljava/io/DataOutputStream;J)V

    .line 59
    iget-wide v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    const-wide/16 v7, 0x3e8

    move-wide v5, p2

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeUnsignedInt(Ljava/io/DataOutputStream;J)V

    .line 61
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->id:J

    invoke-static {p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->writeUnsignedInt(Ljava/io/DataOutputStream;J)V

    .line 62
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 63
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 64
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 65
    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
