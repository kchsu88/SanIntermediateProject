.class public final Lccsanandroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplApi21Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/media/AudioAttributesImplApi21;
    .locals 3
    .param p0, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Lccsanandroidx/media/AudioAttributesImplApi21;

    invoke-direct {v0}, Lccsanandroidx/media/AudioAttributesImplApi21;-><init>()V

    .line 12
    .local v0, "obj":Lccsanandroidx/media/AudioAttributesImplApi21;
    iget-object v1, v0, Lccsanandroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Lccsanandroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readParcelable(Lccsanandroid/os/Parcelable;I)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/media/AudioAttributes;

    iput-object v1, v0, Lccsanandroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Lccsanandroid/media/AudioAttributes;

    .line 13
    iget v1, v0, Lccsanandroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Lccsanandroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 14
    return-object v0
.end method

.method public static write(Lccsanandroidx/media/AudioAttributesImplApi21;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Lccsanandroidx/media/AudioAttributesImplApi21;
    .param p1, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lccsanandroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 19
    iget-object v0, p0, Lccsanandroidx/media/AudioAttributesImplApi21;->mAudioAttributes:Lccsanandroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 20
    iget v0, p0, Lccsanandroidx/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 21
    return-void
.end method
