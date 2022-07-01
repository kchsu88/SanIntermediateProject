.class public final Lccsanandroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/media/AudioAttributesCompat;
    .locals 3
    .param p0, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Lccsanandroidx/media/AudioAttributesCompat;

    invoke-direct {v0}, Lccsanandroidx/media/AudioAttributesCompat;-><init>()V

    .line 12
    .local v0, "obj":Lccsanandroidx/media/AudioAttributesCompat;
    iget-object v1, v0, Lccsanandroidx/media/AudioAttributesCompat;->mImpl:Lccsanandroidx/media/AudioAttributesImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;I)Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Lccsanandroidx/media/AudioAttributesImpl;

    iput-object v1, v0, Lccsanandroidx/media/AudioAttributesCompat;->mImpl:Lccsanandroidx/media/AudioAttributesImpl;

    .line 13
    return-object v0
.end method

.method public static write(Lccsanandroidx/media/AudioAttributesCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Lccsanandroidx/media/AudioAttributesCompat;
    .param p1, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lccsanandroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 18
    iget-object v0, p0, Lccsanandroidx/media/AudioAttributesCompat;->mImpl:Lccsanandroidx/media/AudioAttributesImpl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;I)V

    .line 19
    return-void
.end method
