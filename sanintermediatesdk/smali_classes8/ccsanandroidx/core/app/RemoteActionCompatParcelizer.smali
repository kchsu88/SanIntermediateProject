.class public Lccsanandroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "RemoteActionCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/core/app/RemoteActionCompat;
    .locals 3
    .param p0, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 14
    new-instance v0, Lccsanandroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/RemoteActionCompat;-><init>()V

    .line 15
    .local v0, "obj":Lccsanandroidx/core/app/RemoteActionCompat;
    iget-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;I)Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 16
    iget-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 17
    iget-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 18
    iget-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readParcelable(Lccsanandroid/os/Parcelable;I)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/PendingIntent;

    iput-object v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    .line 19
    iget-boolean v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v1

    iput-boolean v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 20
    iget-boolean v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result v1

    iput-boolean v1, v0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 21
    return-object v0
.end method

.method public static write(Lccsanandroidx/core/app/RemoteActionCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Lccsanandroidx/core/app/RemoteActionCompat;
    .param p1, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "parcel"
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lccsanandroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 27
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;I)V

    .line 28
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;I)V

    .line 29
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;I)V

    .line 30
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 31
    iget-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 32
    iget-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    .line 33
    return-void
.end method
