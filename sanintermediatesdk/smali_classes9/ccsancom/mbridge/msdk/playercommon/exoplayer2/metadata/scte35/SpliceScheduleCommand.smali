.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 4

    .line 226
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 227
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 230
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->access$300(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    .line 224
    return-void
.end method

.method static parseFromSection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .line 236
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 239
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 248
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 249
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 251
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;Lccsanandroid/os/Parcel;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method
