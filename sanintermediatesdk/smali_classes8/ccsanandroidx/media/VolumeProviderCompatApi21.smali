.class Lccsanandroidx/media/VolumeProviderCompatApi21;
.super Ljava/lang/Object;
.source "VolumeProviderCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/VolumeProviderCompatApi21$Delegate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createVolumeProvider(IIILccsanandroidx/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
    .locals 1
    .param p0, "volumeControl"    # I
    .param p1, "maxVolume"    # I
    .param p2, "currentVolume"    # I
    .param p3, "delegate"    # Lccsanandroidx/media/VolumeProviderCompatApi21$Delegate;

    .line 27
    new-instance v0, Lccsanandroidx/media/VolumeProviderCompatApi21$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroidx/media/VolumeProviderCompatApi21$1;-><init>(IIILccsanandroidx/media/VolumeProviderCompatApi21$Delegate;)V

    return-object v0
.end method

.method public static setCurrentVolume(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "volumeProviderObj"    # Ljava/lang/Object;
    .param p1, "currentVolume"    # I

    .line 41
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Lccsanandroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 42
    return-void
.end method
