.class Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$1;
.super Lccsanandroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;Lccsanandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .param p2, "x0"    # Lccsanandroid/os/Looper;

    .line 115
    iput-object p1, p0, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 119
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 122
    nop

    .line 126
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
