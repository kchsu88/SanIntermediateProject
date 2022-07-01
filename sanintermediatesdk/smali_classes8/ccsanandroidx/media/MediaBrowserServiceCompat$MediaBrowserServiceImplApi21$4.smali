.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChangedForCompat(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final synthetic val$options:Lccsanandroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$remoteUserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    .line 429
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$remoteUserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$parentId:Ljava/lang/String;

    iput-object p4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$options:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 433
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 434
    .local v1, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v2, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$remoteUserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v2, v3}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$parentId:Ljava/lang/String;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4;->val$options:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChangedForCompatOnHandler(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 432
    .end local v1    # "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
