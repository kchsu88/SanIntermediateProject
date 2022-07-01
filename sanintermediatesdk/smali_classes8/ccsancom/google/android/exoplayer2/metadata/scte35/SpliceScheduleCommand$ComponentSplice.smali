.class public final Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentTag:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "componentTag"    # I
    .param p2, "utcSpliceTime"    # J

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->componentTag:I

    .line 203
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->utcSpliceTime:J

    .line 204
    return-void
.end method

.method synthetic constructor <init>(IJLccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    .locals 1
    .param p0, "x0"    # Lccsanandroid/os/Parcel;

    .line 196
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Lccsanandroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    .param p1, "x1"    # Lccsanandroid/os/Parcel;

    .line 196
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->writeToParcel(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    .locals 4
    .param p0, "in"    # Lccsanandroid/os/Parcel;

    .line 207
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    return-object v0
.end method

.method private writeToParcel(Lccsanandroid/os/Parcel;)V
    .locals 2
    .param p1, "dest"    # Lccsanandroid/os/Parcel;

    .line 211
    iget v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->componentTag:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->utcSpliceTime:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 213
    return-void
.end method
