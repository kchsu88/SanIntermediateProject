.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
.super Ljava/lang/Object;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellResolution"
.end annotation


# instance fields
.field final columns:I

.field final rows:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->columns:I

    .line 651
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    .line 652
    return-void
.end method