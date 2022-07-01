.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;)V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 201
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;)V

    .line 202
    return-void
.end method
