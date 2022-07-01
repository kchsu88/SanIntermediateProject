.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageRegion"
.end annotation


# instance fields
.field public final horizontalAddress:I

.field public final verticalAddress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    .line 905
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    .line 906
    return-void
.end method
