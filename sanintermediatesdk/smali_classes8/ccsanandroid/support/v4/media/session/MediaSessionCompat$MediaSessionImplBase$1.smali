.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
.super Lccsanandroidx/media/VolumeProviderCompat$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2025
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Lccsanandroidx/media/VolumeProviderCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(Lccsanandroidx/media/VolumeProviderCompat;)V
    .locals 7
    .param p1, "volumeProvider"    # Lccsanandroidx/media/VolumeProviderCompat;

    .line 2028
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Lccsanandroidx/media/VolumeProviderCompat;

    if-eq v0, p1, :cond_0

    .line 2029
    return-void

    .line 2031
    :cond_0
    new-instance v0, Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v2, v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v3, v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 2032
    invoke-virtual {p1}, Lccsanandroidx/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v4

    invoke-virtual {p1}, Lccsanandroidx/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v5

    .line 2033
    invoke-virtual {p1}, Lccsanandroidx/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 2034
    .local v0, "info":Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-virtual {v1, v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 2035
    return-void
.end method