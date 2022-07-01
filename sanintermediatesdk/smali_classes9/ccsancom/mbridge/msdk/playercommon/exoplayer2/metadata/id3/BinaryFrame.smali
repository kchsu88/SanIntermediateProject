.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
.source "BinaryFrame.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;

    .line 49
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 54
    nop

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 57
    return v1
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 62
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeByteArray([B)V

    .line 64
    return-void
.end method
