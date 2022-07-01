.class public final Lccsanandroidx/core/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Lccsanandroidx/core/os/ParcelableCompatCreatorCallbacks;)Lccsanandroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroidx/core/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;)",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    .local p0, "callbacks":Lccsanandroidx/core/os/ParcelableCompatCreatorCallbacks;, "Lccsanandroidx/core/os/ParcelableCompatCreatorCallbacks<TT;>;"
    new-instance v0, Lccsanandroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Lccsanandroidx/core/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;-><init>(Lccsanandroidx/core/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
