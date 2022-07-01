.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    .line 58
    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const-class v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 52
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 53
    array-length p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    .line 54
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 105
    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    .line 111
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 108
    :cond_3
    :goto_1
    return v1
.end method

.method public final getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 94
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    .line 95
    nop

    .line 96
    const/16 v0, 0x20f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->hashCode:I

    .line 99
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public final indexOf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 3

    .line 84
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 86
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 123
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->formats:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method
