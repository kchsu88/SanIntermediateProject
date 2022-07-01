.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;-><init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded()V
    .locals 1

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 130
    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 1

    .line 144
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 145
    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 1

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 140
    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 135
    return-void
.end method
