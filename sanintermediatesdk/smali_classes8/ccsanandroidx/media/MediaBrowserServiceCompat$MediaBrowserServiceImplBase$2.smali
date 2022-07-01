.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChanged(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

.field final synthetic val$options:Lccsanandroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    .line 233
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 236
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0}, Lccsanandroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/IBinder;

    .line 237
    .local v1, "binder":Lccsanandroid/os/IBinder;
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 238
    .local v2, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Lccsanandroid/os/Bundle;

    invoke-virtual {v3, v2, v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->notifyChildrenChangedOnHandler(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 239
    .end local v1    # "binder":Lccsanandroid/os/IBinder;
    .end local v2    # "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method
