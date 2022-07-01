.class public Lccsanandroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcel:Lccsanandroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lccsanandroidx/versionedparcelable/ParcelImpl$1;

    invoke-direct {v0}, Lccsanandroidx/versionedparcelable/ParcelImpl$1;-><init>()V

    sput-object v0, Lccsanandroidx/versionedparcelable/ParcelImpl;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {v0, p1}, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;-><init>(Lccsanandroid/os/Parcel;)V

    invoke-virtual {v0}, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;->readVersionedParcelable()Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/versionedparcelable/ParcelImpl;->mParcel:Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/versionedparcelable/VersionedParcelable;)V
    .locals 0
    .param p1, "parcel"    # Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lccsanandroidx/versionedparcelable/ParcelImpl;->mParcel:Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionedParcel()Lccsanandroidx/versionedparcelable/VersionedParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lccsanandroidx/versionedparcelable/ParcelImpl;->mParcel:Lccsanandroidx/versionedparcelable/VersionedParcelable;

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    new-instance v0, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {v0, p1}, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;-><init>(Lccsanandroid/os/Parcel;)V

    .line 57
    .local v0, "parcel":Lccsanandroidx/versionedparcelable/VersionedParcelParcel;
    iget-object v1, p0, Lccsanandroidx/versionedparcelable/ParcelImpl;->mParcel:Lccsanandroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {v0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcelParcel;->writeVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;)V

    .line 58
    return-void
.end method
