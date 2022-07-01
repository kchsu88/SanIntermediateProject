.class final Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;
.super Lccsanandroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    .line 588
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 586
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    invoke-direct {v0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 589
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 593
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 594
    .local v0, "data":Lccsanandroid/os/Bundle;
    iget v1, p1, Lccsanandroid/os/Message;->what:I

    const-string v2, "data_callback_token"

    const-string v3, "data_calling_uid"

    const-string v4, "data_calling_pid"

    const-string v5, "data_package_name"

    const-string v6, "data_root_hints"

    const-string v7, "data_result_receiver"

    const-string v8, "data_media_item_id"

    packed-switch v1, :pswitch_data_0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Service version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  Client version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lccsanandroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBServiceCompat"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 661
    :pswitch_0
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 662
    .local v1, "customActionExtras":Lccsanandroid/os/Bundle;
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 664
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 665
    const-string v3, "data_custom_action"

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v0, v7}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lccsanandroid/support/v4/os/ResultReceiver;

    new-instance v5, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v5, v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 664
    invoke-virtual {v2, v3, v1, v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 669
    goto/16 :goto_0

    .line 650
    .end local v1    # "customActionExtras":Lccsanandroid/os/Bundle;
    :pswitch_1
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 651
    .local v1, "searchExtras":Lccsanandroid/os/Bundle;
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 653
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 654
    const-string v3, "data_search_query"

    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v0, v7}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lccsanandroid/support/v4/os/ResultReceiver;

    new-instance v5, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v5, v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 653
    invoke-virtual {v2, v3, v1, v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->search(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 658
    goto/16 :goto_0

    .line 646
    .end local v1    # "searchExtras":Lccsanandroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v2, v3}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 648
    goto/16 :goto_0

    .line 634
    :pswitch_3
    invoke-virtual {v0, v6}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 635
    .local v1, "rootHints":Lccsanandroid/os/Bundle;
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 637
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v6, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v7, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v6, v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 639
    invoke-virtual {v0, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 640
    invoke-virtual {v0, v4}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 641
    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 637
    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V

    .line 643
    goto/16 :goto_0

    .line 628
    .end local v1    # "rootHints":Lccsanandroid/os/Bundle;
    :pswitch_4
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 629
    invoke-virtual {v0, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-virtual {v0, v7}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lccsanandroid/support/v4/os/ResultReceiver;

    new-instance v4, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 628
    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->getMediaItem(Ljava/lang/String;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 632
    goto :goto_0

    .line 622
    :pswitch_5
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 623
    invoke-virtual {v0, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 624
    invoke-static {v0, v2}, Lccsanandroidx/core/app/BundleCompat;->getBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v2

    new-instance v4, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 622
    invoke-virtual {v1, v3, v2, v4}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->removeSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 626
    goto :goto_0

    .line 611
    :pswitch_6
    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 612
    .local v1, "options":Lccsanandroid/os/Bundle;
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 614
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 615
    invoke-virtual {v0, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-static {v0, v2}, Lccsanandroidx/core/app/BundleCompat;->getBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v2

    new-instance v5, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v5, v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 614
    invoke-virtual {v3, v4, v2, v1, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 619
    goto :goto_0

    .line 608
    .end local v1    # "options":Lccsanandroid/os/Bundle;
    :pswitch_7
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v2, v3}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->disconnect(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 609
    goto :goto_0

    .line 596
    :pswitch_8
    invoke-virtual {v0, v6}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 597
    .local v1, "rootHints":Lccsanandroid/os/Bundle;
    invoke-static {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 599
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 600
    invoke-virtual {v0, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 601
    invoke-virtual {v0, v4}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 602
    invoke-virtual {v0, v3}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-direct {v9, v3}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Lccsanandroid/os/Messenger;)V

    .line 599
    move-object v4, v2

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 605
    nop

    .line 676
    .end local v1    # "rootHints":Lccsanandroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 691
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 695
    :goto_0
    return-void
.end method

.method public sendMessageAtTime(Lccsanandroid/os/Message;J)Z
    .locals 3
    .param p1, "msg"    # Lccsanandroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 682
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 683
    .local v0, "data":Lccsanandroid/os/Bundle;
    const-class v1, Lccsanandroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 684
    invoke-static {}, Lccsanandroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "data_calling_uid"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    invoke-static {}, Lccsanandroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "data_calling_pid"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/os/Handler;->sendMessageAtTime(Lccsanandroid/os/Message;J)Z

    move-result v1

    return v1
.end method
