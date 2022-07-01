.class Lccsanandroidx/core/location/GpsStatusWrapper;
.super Lccsanandroidx/core/location/GnssStatusCompat;
.source "GpsStatusWrapper.java"


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lccsanandroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I

.field private mCachedSatellite:Lccsanandroid/location/GpsSatellite;

.field private mCachedSatelliteCount:I

.field private final mWrapped:Lccsanandroid/location/GpsStatus;


# direct methods
.method constructor <init>(Lccsanandroid/location/GpsStatus;)V
    .locals 2
    .param p1, "gpsStatus"    # Lccsanandroid/location/GpsStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gpsStatus"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lccsanandroidx/core/location/GnssStatusCompat;-><init>()V

    .line 61
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/location/GpsStatus;

    iput-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 63
    invoke-virtual {v0}, Lccsanandroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 64
    iput v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Lccsanandroid/location/GpsSatellite;

    .line 66
    return-void
.end method

.method private static getConstellationFromPrn(I)I
    .locals 2
    .param p0, "prn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prn"
        }
    .end annotation

    .line 189
    if-lez p0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    const/16 v0, 0x21

    const/16 v1, 0x40

    if-lt p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    .line 192
    const/4 v0, 0x2

    return v0

    .line 193
    :cond_1
    if-le p0, v1, :cond_2

    const/16 v0, 0x58

    if-gt p0, v0, :cond_2

    .line 194
    const/4 v0, 0x3

    return v0

    .line 195
    :cond_2
    const/16 v0, 0xc8

    if-le p0, v0, :cond_3

    const/16 v1, 0xeb

    if-gt p0, v1, :cond_3

    .line 196
    const/4 v0, 0x5

    return v0

    .line 197
    :cond_3
    const/16 v1, 0xc1

    if-lt p0, v1, :cond_4

    if-gt p0, v0, :cond_4

    .line 198
    const/4 v0, 0x4

    return v0

    .line 200
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private getSatellite(I)Lccsanandroid/location/GpsSatellite;
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    monitor-enter v0

    .line 153
    :try_start_0
    iget v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge p1, v1, :cond_0

    .line 154
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    invoke-virtual {v1}, Lccsanandroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 155
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 157
    :cond_0
    :goto_0
    iget v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge v1, p1, :cond_2

    .line 158
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 159
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Lccsanandroid/location/GpsSatellite;

    .line 161
    goto :goto_1

    .line 163
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/location/GpsSatellite;

    iput-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Lccsanandroid/location/GpsSatellite;

    goto :goto_0

    .line 166
    :cond_2
    :goto_1
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Lccsanandroid/location/GpsSatellite;

    .line 167
    .local v1, "satellite":Lccsanandroid/location/GpsSatellite;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {v1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/location/GpsSatellite;

    return-object v0

    .line 167
    .end local v1    # "satellite":Lccsanandroid/location/GpsSatellite;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static getSvidFromPrn(I)I
    .locals 1
    .param p0, "prn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prn"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lccsanandroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 213
    :pswitch_1
    add-int/lit16 p0, p0, -0xc8

    goto :goto_0

    .line 210
    :pswitch_2
    add-int/lit8 p0, p0, -0x40

    .line 211
    goto :goto_0

    .line 207
    :pswitch_3
    add-int/lit8 p0, p0, 0x57

    .line 208
    nop

    .line 216
    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 173
    if-ne p0, p1, :cond_0

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    instance-of v0, p1, Lccsanandroidx/core/location/GpsStatusWrapper;

    if-nez v0, :cond_1

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/location/GpsStatusWrapper;

    .line 180
    .local v0, "that":Lccsanandroidx/core/location/GpsStatusWrapper;
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    iget-object v2, v0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAzimuthDegrees(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCn0DbHz(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getSnr()F

    move-result v0

    return v0
.end method

.method public getConstellationType(I)I
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 84
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getPrn()I

    move-result v0

    invoke-static {v0}, Lccsanandroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v0

    return v0
.end method

.method public getElevationDegrees(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getElevation()F

    move-result v0

    return v0
.end method

.method public getSatelliteCount()I
    .locals 4

    .line 70
    iget-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    monitor-enter v0

    .line 71
    :try_start_0
    iget v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 72
    iget-object v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    invoke-virtual {v1}, Lccsanandroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/location/GpsSatellite;

    .line 73
    .local v2, "ignored":Lccsanandroid/location/GpsSatellite;
    iget v3, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 74
    .end local v2    # "ignored":Lccsanandroid/location/GpsSatellite;
    goto :goto_0

    .line 75
    :cond_0
    iget v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 78
    :cond_1
    iget v1, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    monitor-exit v0

    return v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getSvid(I)I
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 93
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getPrn()I

    move-result v0

    return v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->getPrn()I

    move-result v0

    invoke-static {v0}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSvidFromPrn(I)I

    move-result v0

    return v0
.end method

.method public hasAlmanacData(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->hasAlmanac()Z

    move-result v0

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public hasEphemerisData(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->hasEphemeris()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 185
    iget-object v0, p0, Lccsanandroidx/core/location/GpsStatusWrapper;->mWrapped:Lccsanandroid/location/GpsStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public usedInFix(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lccsanandroidx/core/location/GpsStatusWrapper;->getSatellite(I)Lccsanandroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    return v0
.end method
