.class public final Lccsanandroid/support/v4/graphics/drawable/IconCompatParcelizer;
.super Lccsanandroidx/core/graphics/drawable/IconCompatParcelizer;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/core/graphics/drawable/IconCompat;
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
    invoke-static {p0}, Lccsanandroidx/core/graphics/drawable/IconCompatParcelizer;->read(Lccsanandroidx/versionedparcelable/VersionedParcel;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lccsanandroidx/core/graphics/drawable/IconCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V
    .locals 0
    .param p0, "obj"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
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
    invoke-static {p0, p1}, Lccsanandroidx/core/graphics/drawable/IconCompatParcelizer;->write(Lccsanandroidx/core/graphics/drawable/IconCompat;Lccsanandroidx/versionedparcelable/VersionedParcel;)V

    .line 18
    return-void
.end method
