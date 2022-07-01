.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceNullCommand.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceNullCommand;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 30
    return-void
.end method
