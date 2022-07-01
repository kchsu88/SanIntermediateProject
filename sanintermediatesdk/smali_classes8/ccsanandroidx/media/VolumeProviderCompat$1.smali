.class Lccsanandroidx/media/VolumeProviderCompat$1;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"

# interfaces
.implements Lccsanandroidx/media/VolumeProviderCompatApi21$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/VolumeProviderCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/VolumeProviderCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/VolumeProviderCompat;

    .line 171
    iput-object p1, p0, Lccsanandroidx/media/VolumeProviderCompat$1;->this$0:Lccsanandroidx/media/VolumeProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 180
    iget-object v0, p0, Lccsanandroidx/media/VolumeProviderCompat$1;->this$0:Lccsanandroidx/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 181
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 175
    iget-object v0, p0, Lccsanandroidx/media/VolumeProviderCompat$1;->this$0:Lccsanandroidx/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 176
    return-void
.end method
