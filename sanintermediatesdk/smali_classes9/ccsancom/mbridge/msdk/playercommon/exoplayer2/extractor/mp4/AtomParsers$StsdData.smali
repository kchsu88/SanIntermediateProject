.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# static fields
.field public static final STSD_HEADER_SIZE:I = 0x8


# instance fields
.field public format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1290
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 1291
    return-void
.end method
