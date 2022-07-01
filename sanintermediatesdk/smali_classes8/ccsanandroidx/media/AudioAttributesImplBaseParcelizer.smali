.class public final Lccsanandroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplBaseParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/media/AudioAttributesImplBase;
    .locals 3
    .param p0, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Lccsanandroidx/media/AudioAttributesImplBase;

    invoke-direct {v0}, Lccsanandroidx/media/AudioAttributesImplBase;-><init>()V

    .line 12
    .local v0, "obj":Lccsanandroidx/media/AudioAttributesImplBase;
    iget v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 13
    iget v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 14
    iget v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 15
    iget v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Lccsanandroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 16
    return-object v0
.end method

.method public static write(Lccsanandroidx/media/AudioAttributesImplBase;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Lccsanandroidx/media/AudioAttributesImplBase;
    .param p1, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lccsanandroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 21
    iget v0, p0, Lccsanandroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 22
    iget v0, p0, Lccsanandroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 23
    iget v0, p0, Lccsanandroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 24
    iget v0, p0, Lccsanandroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 25
    return-void
.end method
