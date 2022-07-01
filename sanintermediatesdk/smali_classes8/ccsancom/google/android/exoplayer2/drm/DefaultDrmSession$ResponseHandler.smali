.class Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;
.super Lccsanandroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;Lccsanandroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Lccsanandroid/os/Looper;

    .line 565
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 566
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 567
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 572
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/util/Pair;

    .line 573
    .local v0, "requestAndResponse":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    .line 574
    .local v1, "request":Ljava/lang/Object;
    iget-object v2, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    .line 575
    .local v2, "response":Ljava/lang/Object;
    iget v3, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 580
    :pswitch_0
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->access$100(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    goto :goto_0

    .line 577
    :pswitch_1
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    nop

    .line 585
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
