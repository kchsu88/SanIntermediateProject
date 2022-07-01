.class Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinderWrapper"
.end annotation


# instance fields
.field private mMessenger:Lccsanandroid/os/Messenger;

.field private mRootHints:Lccsanandroid/os/Bundle;


# direct methods
.method public constructor <init>(Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "target"    # Lccsanandroid/os/IBinder;
    .param p2, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2150
    new-instance v0, Lccsanandroid/os/Messenger;

    invoke-direct {v0, p1}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/IBinder;)V

    iput-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Lccsanandroid/os/Messenger;

    .line 2151
    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Lccsanandroid/os/Bundle;

    .line 2152
    return-void
.end method

.method private sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "data"    # Lccsanandroid/os/Bundle;
    .param p3, "cbMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2225
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 2226
    .local v0, "msg":Lccsanandroid/os/Message;
    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 2227
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/os/Message;->arg1:I

    .line 2228
    invoke-virtual {v0, p2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 2229
    iput-object p3, v0, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    .line 2230
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Lccsanandroid/os/Messenger;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Messenger;->send(Lccsanandroid/os/Message;)V

    .line 2231
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callbackToken"    # Lccsanandroid/os/IBinder;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .param p4, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2169
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2170
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v1, "data_callback_token"

    invoke-static {v0, v1, p2}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 2172
    const-string v1, "data_options"

    invoke-virtual {v0, v1, p3}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2173
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2174
    return-void
.end method

.method connect(Lccsanandroid/content/Context;Lccsanandroid/os/Messenger;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2156
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2157
    .local v0, "data":Lccsanandroid/os/Bundle;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_package_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Lccsanandroid/os/Bundle;

    const-string v2, "data_root_hints"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2159
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2160
    return-void
.end method

.method disconnect(Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2164
    return-void
.end method

.method getMediaItem(Ljava/lang/String;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p3, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2187
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2188
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 2190
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2191
    return-void
.end method

.method registerCallbackMessenger(Lccsanandroid/content/Context;Lccsanandroid/os/Messenger;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callbackMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2195
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2196
    .local v0, "data":Lccsanandroid/os/Bundle;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_package_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Lccsanandroid/os/Bundle;

    const-string v2, "data_root_hints"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2198
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2199
    return-void
.end method

.method removeSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callbackToken"    # Lccsanandroid/os/IBinder;
    .param p3, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2180
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v1, "data_callback_token"

    invoke-static {v0, v1, p2}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 2182
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2183
    return-void
.end method

.method search(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p4, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2208
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-string v1, "data_search_query"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2210
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p3}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 2211
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2212
    return-void
.end method

.method sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p4, "callbacksMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2216
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 2217
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-string v1, "data_custom_action"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2219
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p3}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 2220
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2221
    return-void
.end method

.method unregisterCallbackMessenger(Lccsanandroid/os/Messenger;)V
    .locals 2
    .param p1, "callbackMessenger"    # Lccsanandroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILccsanandroid/os/Bundle;Lccsanandroid/os/Messenger;)V

    .line 2203
    return-void
.end method
