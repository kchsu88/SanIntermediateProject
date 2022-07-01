.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;
.source "PrivateCommand.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 41
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 42
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    .line 43
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 44
    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 47
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 48
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    .line 49
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 50
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readByteArray([B)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 6

    .line 55
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 56
    add-int/lit8 p1, p1, -0x4

    new-array v3, p1, [B

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 58
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;->commandBytes:[B

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByteArray([B)V

    .line 69
    return-void
.end method
