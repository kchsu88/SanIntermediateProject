.class public final Lccsanandroidx/core/os/ParcelCompat;
.super Ljava/lang/Object;
.source "ParcelCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Lccsanandroid/os/Parcel;)Z
    .locals 1
    .param p0, "in"    # Lccsanandroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static writeBoolean(Lccsanandroid/os/Parcel;Z)V
    .locals 0
    .param p0, "out"    # Lccsanandroid/os/Parcel;
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "value"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method