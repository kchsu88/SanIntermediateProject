.class public final Lccsanandroid/support/v4/app/RemoteActionCompatParcelizer;
.super Lccsanandroidx/core/app/RemoteActionCompatParcelizer;
.source "RemoteActionCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lccsanandroidx/core/app/RemoteActionCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/core/app/RemoteActionCompat;
    .locals 1
    .param p0, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcel"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lccsanandroidx/core/app/RemoteActionCompatParcelizer;->read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/core/app/RemoteActionCompat;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lccsanandroidx/core/app/RemoteActionCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 0
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

    .line 17
    invoke-static {p0, p1}, Lccsanandroidx/core/app/RemoteActionCompatParcelizer;->write(Lccsanandroidx/core/app/RemoteActionCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V

    .line 18
    return-void
.end method
